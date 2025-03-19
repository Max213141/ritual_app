import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ritual_app/blocs/blocs.dart';
import 'package:ritual_app/entities/db_entities/db_entities.dart';

part 'memory_desk_event.dart';
part 'memory_desk_state.dart';
part 'memory_desk_bloc.freezed.dart';

class MemoryDeskBloc extends Bloc<MemoryDeskEvent, MemoryDeskState> {
  final FirebaseFirestore firestore;
  final FirebaseAuth auth;
  final MediaBloc mediaBloc;

  MemoryDeskBloc({
    required this.firestore,
    required this.auth,
    required this.mediaBloc,
  }) : super(const _Initial()) {
    on<UploadMemoryPage>(_uploadMemoryPage);
    on<GetMemoryPage>(_getMemoryPage);
    on<AddMemoryDeskToUser>(_addMemoryDeskToUser);
  }

  Future<void> _uploadMemoryPage(
    UploadMemoryPage event,
    Emitter<MemoryDeskState> emit,
  ) async {
    emit(const MemoryDeskState.loading());

    try {
      // Generate unique Memory Desk ID
      final memoryDeskId = firestore.collection('memory_desks').doc().id;

      // Upload media first using MediaBloc
      final mediaUrls = await _uploadMedia(event.mediaData, memoryDeskId);

      // Create MemoryPage object with uploaded media URLs
      final memoryPage = event.memoryPage.copyWith(
        photoUrl: mediaUrls['photo'],
      );

      // Save MemoryPage data to Firestore
      await firestore
          .collection('memory_desks')
          .doc(memoryDeskId)
          .set(memoryPage.toJson());

      // Add Memory Desk ID to user data
      add(AddMemoryDeskToUser(
          userId: event.userId, memoryDeskId: memoryDeskId));

      emit(const MemoryDeskState.success());
    } catch (e) {
      emit(MemoryDeskState.failure(error: e.toString()));
    }
  }

  Future<Map<String, String?>> _uploadMedia(
      MemoryPageMedia mediaData, String memoryDeskId) async {
    final mediaUrls = <String, String?>{};

    for (final photo in mediaData.photos) {
      final uploadEvent = UploadMedia(
          filePath:
              "memory_desks/$memoryDeskId/photos/${photo.split('/').last}",
          file: File(photo));
      mediaBloc.add(uploadEvent);
    }

    return mediaUrls;
  }

  Future<void> _getMemoryPage(
    GetMemoryPage event,
    Emitter<MemoryDeskState> emit,
  ) async {
    emit(const MemoryDeskState.loading());

    try {
      final doc = await firestore
          .collection('memory_desks')
          .doc(event.memoryDeskId)
          .get();

      if (doc.exists) {
        final memoryPage = MemoryPage.fromJson(doc.data()!);
        emit(MemoryDeskState.memoryPageLoaded(memoryPage: memoryPage));
      } else {
        emit(const MemoryDeskState.failure(error: "MemoryPage not found"));
      }
    } catch (e) {
      emit(MemoryDeskState.failure(error: e.toString()));
    }
  }

  Future<void> _addMemoryDeskToUser(
    AddMemoryDeskToUser event,
    Emitter<MemoryDeskState> emit,
  ) async {
    try {
      final userRef = firestore.collection('users').doc(event.userId);
      await userRef.update({
        'memoryDesks': FieldValue.arrayUnion([event.memoryDeskId])
      });
    } catch (e) {
      emit(MemoryDeskState.failure(error: e.toString()));
    }
  }
}

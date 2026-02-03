import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ritual_app/entities/entities.dart';
import 'package:ritual_app/services/extentions/memory_page_media_convertor.dart';
import 'package:ritual_app/services/media/media_service_interface.dart';
import 'package:ritual_app/services/service_locator.dart';
// import 'package:ritual_app/utils/utils.dart';

part 'memory_desk_event.dart';
part 'memory_desk_state.dart';
part 'memory_desk_bloc.freezed.dart';

// void _log(dynamic message) =>
//     Logger.projectLog(message, name: 'memory_desk_bloc_bloc');

class MemoryDeskBloc extends Bloc<MemoryDeskEvent, MemoryDeskState> {
  final FirebaseFirestore firestore;
  final FirebaseAuth auth;
  final MediaServiceInterface mediaService;

  MemoryDeskBloc({
    required this.firestore,
    required this.auth,
    required this.mediaService,
  }) : super(const Initial()) {
    on<UploadMemoryDesk>(_uploadMemoryDesk);
    on<GetMemoryDesks>(_getMemoryDesks);
    on<AddMemoryDeskToUser>(_addMemoryDeskToUser);
    on<UpdateMemoryDesk>(_updateMemoryDesk);
    on<DeleteMemoryDesk>(_deleteMemoryDesk);
    on<LoadMemoryDesk>(_loadMemoryDesk);
  }

  Future<void> _uploadMemoryDesk(
    UploadMemoryDesk event,
    Emitter<MemoryDeskState> emit,
  ) async {
    emit(const MemoryDeskState.loading());

    try {
      final memoryDeskId = firestore.collection('memory_desks').doc().id;
      final mediaService = getIt<MediaServiceInterface>();
      final String? finalPhotoUrl;

      if (event.memoryPage.localPhotoPath != null &&
          event.memoryPage.localPhotoPath!.isNotEmpty) {
        final file = File(event.memoryPage.localPhotoPath!);
        finalPhotoUrl = await mediaService.uploadFileAndGetUrl(
          filePath: 'memory_desks/$memoryDeskId/avatar.jpg',
          file: file,
        );
      } else {
        finalPhotoUrl = '';
      }

      final mediaUrls = await event.mediaData.uploadAndConvert(
        memoryDeskId: memoryDeskId,
        mediaService: mediaService,
      );

      final memoryPage = event.memoryPage.copyWith(
        photoUrls: mediaUrls.photos,
        videoUrls: mediaUrls.videos,
        photoUrl: finalPhotoUrl,
        ownerId: auth.currentUser!.uid,
      );

      await firestore
          .collection('memory_desks')
          .doc(memoryDeskId)
          .set(memoryPage.toJson());

      add(AddMemoryDeskToUser(
        userId: auth.currentUser!.uid,
        memoryDeskId: memoryDeskId,
      ));

      emit(const MemoryDeskState.success());
    } catch (e) {
      emit(MemoryDeskState.failure(error: e.toString()));
    }
  }

  Future<void> _getMemoryDesks(
    GetMemoryDesks event,
    Emitter<MemoryDeskState> emit,
  ) async {
    emit(const MemoryDeskState.loading());

    try {
      final uid = auth.currentUser?.uid;
      if (uid == null) {
        emit(const MemoryDeskState.failure(error: 'User not authenticated'));
        return;
      }

      // Get the list of memory desk IDs from the user document
      final userDoc = await firestore.collection('users').doc(uid).get();
      final userData = userDoc.data();

      if (userData == null || !userData.containsKey('memoryDesks')) {
        emit(
          const MemoryDeskState.memoryDesksLoaded(
            memoryDesks: [],
            memoryDeskIds: [],
          ),
        );
        return;
      }

      final List<dynamic> deskIdsRaw = userData['memoryDesks'];
      final List<String> memoryDeskIds =
          deskIdsRaw.whereType<String>().toList();

      if (memoryDeskIds.isEmpty) {
        emit(MemoryDeskState.memoryDesksLoaded(
          memoryDesks: [],
          memoryDeskIds: memoryDeskIds,
        ));
        return;
      }

      //Fetch all memory desks by ID (in parallel)
      final futures = memoryDeskIds.map(
        (id) => firestore.collection('memory_desks').doc(id).get(),
      );

      final snapshots = await Future.wait(futures);

      final memoryPages = snapshots
          .where((doc) => doc.exists && doc.data() != null)
          .map((doc) => MemoryDesk.fromJson(doc.data()!))
          .toList();

      emit(MemoryDeskState.memoryDesksLoaded(
          memoryDesks: memoryPages, memoryDeskIds: memoryDeskIds));
    } catch (e) {
      emit(MemoryDeskState.failure(error: e.toString()));
    }
  }

  Future<void> _loadMemoryDesk(
    LoadMemoryDesk event,
    Emitter<MemoryDeskState> emit,
  ) async {
    emit(const MemoryDeskState.loading());

    try {
      final doc = await firestore
          .collection('memory_desks')
          .doc(event.memoryDeskId)
          .get();

      if (!doc.exists || doc.data() == null) {
        emit(const MemoryDeskState.failure(
          error: 'No memory desk found for that QR code.',
        ));
        return;
      }

      // Parse the Firestore JSON into your MemoryPage model
      final memoryDesk = MemoryDesk.fromJson(doc.data()!);
      emit(
        MemoryDeskState.memoryDeskLoaded(
          memoryDesk: memoryDesk,
          memoryDeskIds: event.memoryDeskId,
        ),
      );
    } catch (e) {
      emit(MemoryDeskState.failure(
        error: e.toString(),
      ));
    }
  }

  Future<void> _updateMemoryDesk(
    UpdateMemoryDesk event,
    Emitter<MemoryDeskState> emit,
  ) async {
    emit(const MemoryDeskState.loading());
    try {
      final mediaService = getIt<MediaServiceInterface>();
      final storage = getIt<FirebaseStorage>();
      final docRef = firestore.collection('memory_desks').doc(event.deskId);

      // 1) Load existing document
      final snap = await docRef.get();
      if (!snap.exists) throw 'Memory desk not found';
      final existing = MemoryDesk.fromJson(snap.data()!);

      // 2) AVATAR (same as before) …
      String? avatarUrl = existing.photoUrl;
      if (event.memoryPage.localPhotoPath?.isNotEmpty == true) {
        final newUrl = await mediaService.uploadFileAndGetUrl(
          filePath: 'memory_desks/${event.deskId}/avatar.jpg',
          file: File(event.memoryPage.localPhotoPath!),
        );
        if (newUrl != null) {
          if (avatarUrl != null && avatarUrl.isNotEmpty) {
            await storage.refFromURL(avatarUrl).delete(); // delete old
          }
          avatarUrl = newUrl;
        }
      }

      // 3) PHOTOS: delete removed, upload new, merge
      final oldPhotos = existing.photoUrls.toSet();
      final keepPhotos = event.newMedia.existingPhotoUrls.toSet();
      final newPhotoFiles = event.newMedia.newPhotoFiles;

      // delete URLs the user removed
      for (var url in oldPhotos.difference(keepPhotos)) {
        await storage.refFromURL(url).delete();
      }

      // upload only the newly picked XFiles
      final uploadedPhotoUrls = <String>[];
      for (var file in newPhotoFiles) {
        final up = await mediaService.uploadFileAndGetUrl(
          filePath:
              'memory_desks/${event.deskId}/photos/${DateTime.now().millisecondsSinceEpoch}.jpg',
          file: File(file.path),
        );
        if (up != null) uploadedPhotoUrls.add(up);
      }

      // final list = kept existing URLs + newly uploaded URLs
      final finalPhotoUrls = keepPhotos.toList()..addAll(uploadedPhotoUrls);

      // 4) VIDEOS: same pattern
      final oldVideos = existing.videoUrls.toSet();
      final keepVideos = event.newMedia.existingVideoUrls.toSet();
      final newVideoFiles = event.newMedia.newVideoFiles;

      for (var url in oldVideos.difference(keepVideos)) {
        await storage.refFromURL(url).delete();
      }

      final uploadedVideoUrls = <String>[];
      for (var file in newVideoFiles) {
        final up = await mediaService.uploadFileAndGetUrl(
          filePath:
              'memory_desks/${event.deskId}/videos/${DateTime.now().millisecondsSinceEpoch}.mp4',
          file: File(file.path),
        );
        if (up != null) uploadedVideoUrls.add(up);
      }
      final finalVideoUrls = keepVideos.toList()..addAll(uploadedVideoUrls);

      // 5) Build updated MemoryDesk
      final updated = existing.copyWith(
        firstName: event.memoryPage.firstName,
        lastName: event.memoryPage.lastName,
        middleName: event.memoryPage.middleName,
        dateOfBirth: event.memoryPage.dateOfBirth,
        dateOfDeath: event.memoryPage.dateOfDeath,
        epitaphy: event.memoryPage.epitaphy,
        biography: event.memoryPage.biography,
        isPrivate: event.memoryPage.isPrivate,
        password: event.memoryPage.password,
        photoUrl: avatarUrl,
        photoUrls: finalPhotoUrls,
        videoUrls: finalVideoUrls,
      );

      // 6) Write back to Firestore
      await docRef.update(updated.toJson());
      emit(const MemoryDeskState.success());
    } catch (e) {
      emit(MemoryDeskState.failure(error: e.toString()));
    }
  }

  Future<void> _deleteMemoryDesk(
    DeleteMemoryDesk event,
    Emitter<MemoryDeskState> emit,
  ) async {
    emit(const MemoryDeskState.loading());
    final storage = getIt<FirebaseStorage>();

    try {
      if (event.avatarUrl != null && event.avatarUrl!.isNotEmpty) {
        await storage.refFromURL(event.avatarUrl!).delete();
      }

      for (final url in event.photoUrls) {
        try {
          await storage.refFromURL(url).delete();
        } catch (_) {
          // ignore if it’s already gone or doesn’t exist
        }
      }

      for (final url in event.videoUrls) {
        try {
          await storage.refFromURL(url).delete();
        } catch (_) {
          // ignore errors
        }
      }
      await firestore.collection('memory_desks').doc(event.deskId).delete();

      final currentUserId = auth.currentUser!.uid;

      await firestore.collection('users').doc(currentUserId).update({
        'memoryDesks': FieldValue.arrayRemove([event.deskId]),
      });

      emit(const MemoryDeskState.deletionSuccess());
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

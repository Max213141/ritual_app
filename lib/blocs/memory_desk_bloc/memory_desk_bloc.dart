import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ritual_app/entities/db_entities/db_entities.dart';
import 'package:ritual_app/services/extentions/memory_page_media_convertor.dart';
import 'package:ritual_app/services/media/media_service_interface.dart';
import 'package:ritual_app/utils/utils.dart';

part 'memory_desk_event.dart';
part 'memory_desk_state.dart';
part 'memory_desk_bloc.freezed.dart';

void _log(dynamic message) =>
    Logger.projectLog(message, name: 'memory_desk_bloc_bloc');

class MemoryDeskBloc extends Bloc<MemoryDeskEvent, MemoryDeskState> {
  final FirebaseFirestore firestore;
  final FirebaseAuth auth;
  final MediaServiceInterface mediaService;

  MemoryDeskBloc({
    required this.firestore,
    required this.auth,
    required this.mediaService,
  }) : super(const Initial()) {
    on<UploadMemoryDesk>(_uploadMemoryPage);
    on<GetMemoryDesks>(_getMemoryPage);
    on<AddMemoryDeskToUser>(_addMemoryDeskToUser);
  }

  Future<void> _uploadMemoryPage(
    UploadMemoryDesk event,
    Emitter<MemoryDeskState> emit,
  ) async {
    emit(const MemoryDeskState.loading());

    try {
      final memoryDeskId = firestore.collection('memory_desks').doc().id;

      final mediaUrls = await event.mediaData.uploadAndConvert(
        memoryDeskId: memoryDeskId,
        mediaService: mediaService,
      );

      final memoryPage = event.memoryPage.copyWith(
        photoUrls: mediaUrls.photos,
        videoUrls: mediaUrls.videos,
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

  Future<void> _getMemoryPage(
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

      // 🔹 1. Get the list of memory desk IDs from the user document
      final userDoc = await firestore.collection('users').doc(uid).get();
      final userData = userDoc.data();

      if (userData == null || !userData.containsKey('memoryDesks')) {
        emit(
          const MemoryDeskState.memoryPagesLoaded(
            memoryPages: [],
            memoryDeskIds: [],
          ),
        );
        return;
      }

      final List<dynamic> deskIdsRaw = userData['memoryDesks'];
      final List<String> memoryDeskIds =
          deskIdsRaw.whereType<String>().toList();

      if (memoryDeskIds.isEmpty) {
        emit(MemoryDeskState.memoryPagesLoaded(
          memoryPages: [],
          memoryDeskIds: memoryDeskIds,
        ));
        return;
      }

      // 🔹 2. Fetch all memory desks by ID (in parallel)
      final futures = memoryDeskIds.map(
        (id) => firestore.collection('memory_desks').doc(id).get(),
      );

      final snapshots = await Future.wait(futures);

      final memoryPages = snapshots
          .where((doc) => doc.exists && doc.data() != null)
          .map((doc) => MemoryPage.fromJson(doc.data()!))
          .toList();

      emit(MemoryDeskState.memoryPagesLoaded(
          memoryPages: memoryPages, memoryDeskIds: memoryDeskIds));
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

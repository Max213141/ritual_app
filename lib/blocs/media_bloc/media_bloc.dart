import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:ritual_app/utils/utils.dart';

part 'media_event.dart';
part 'media_state.dart';
part 'media_bloc.freezed.dart';

void _log(dynamic message) => Logger.projectLog(message, name: 'media_bloc');

class MediaBloc extends Bloc<MediaEvent, MediaState> {
  final Reference media;

  MediaBloc({required this.media}) : super(const _Initial()) {
    on<MediaEvent>((events, emit) async {
      await events.map(
        getMedia: (event) async => await _getMedia(event, emit),
        uploadMedia: (event) async => await _uploadMedia(event, emit),
        deleteMedia: (event) async => await _deleteMedia(event, emit),
      );
    });
  }

  Future<String> _uploadMedia(
    UploadMedia event,
    Emitter<MediaState> emit,
  ) async {
    firebase_storage.Reference ref = media.child(event.filePath);
    firebase_storage.UploadTask uploadTask = ref.putFile(event.file);

    try {
      // Progress Indicator
      // uploadTask.snapshotEvents
      //     .listen((firebase_storage.TaskSnapshot snapshot) {
      //   double progress =
      //       (snapshot.bytesTransferred / snapshot.totalBytes) * 100;
      //   event.progressController.add(progress); // Update progress
      //   _log('Progress: $progress%');
      // });
      await uploadTask.whenComplete(() => null);
      _log('File uploaded successfully! Download URL: ${ref.getDownloadURL()}');

      return await ref.getDownloadURL();
    } catch (e) {
      throw Exception('Upload failed: $e');
    }
  }

  Future<void> _getMedia(GetMedia event, Emitter<MediaState> emit) async {}
  Future<void> _deleteMedia(
    DeleteMedia event,
    Emitter<MediaState> emit,
  ) async {}
}

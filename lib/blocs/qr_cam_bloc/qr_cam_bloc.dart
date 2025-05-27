// ignore_for_file: avoid_void_async

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:ritual_app/entities/entities.dart';
import 'package:ritual_app/services/permission/permission_service.dart';
import 'package:ritual_app/services/service_locator.dart';
// import 'package:ritual_app/utils/utils.dart';

part 'qr_cam_event.dart';
part 'qr_cam_state.dart';
part 'qr_cam_bloc.freezed.dart';

// void _log(dynamic message) => Logger.projectLog(message, name: 'qr_cam_bloc');

class QrCamBloc extends Bloc<QrCamEvent, QrCamState> {
  final permissionService = getIt<PermissionService>();
  final FirebaseFirestore _firestore = getIt<FirebaseFirestore>();

  QrCamBloc() : super(const _Initial()) {
    on<QrCamPermissionCheck>(_qrCamPermissionCheck);
    on<QrCamLoadMemoryDesk>(_qrCamLoadMemoryDesk);
  }

  dynamic _qrCamPermissionCheck(
    QrCamPermissionCheck event,
    Emitter<QrCamState> emit,
  ) async {
    emit(const QrCamState.qrCamLoading());

    final PermissionStatus status = kIsWeb
        ? PermissionStatus.permanentlyDenied
        : await permissionService.requestCameraPermission();
    if (status.isDenied) {
      final requestStatus = await permissionService.requestCameraPermission();
      emit(_mapPermissionStatusToState(requestStatus));
    } else {
      emit(_mapPermissionStatusToState(status));
    }
  }

  QrCamState _mapPermissionStatusToState(PermissionStatus status) {
    if (status.isGranted) {
      return const QrCamState.qrCamPermissionGranted();
    } else if (status.isDenied) {
      return const QrCamState.qrCamPermissionDenied();
    } else if (status.isPermanentlyDenied || status.isRestricted) {
      return const QrCamState.qrCamPermissionPermamentlyDenied();
    } else {
      return const QrCamState.qrCamPermissionDenied();
    }
  }

  Future<void> _qrCamLoadMemoryDesk(
    QrCamLoadMemoryDesk event,
    Emitter<QrCamState> emit,
  ) async {
    emit(const QrCamState.qrCamLoading());

    try {
      final doc = await _firestore
          .collection('memory_desks')
          .doc(event.memoryDeskId)
          .get();

      if (!doc.exists || doc.data() == null) {
        emit(const QrCamState.qrCamError(
          error: 'No memory desk found for that QR code.',
          needPop: true,
        ));
        return;
      }

      // Parse the Firestore JSON into your MemoryPage model
      final memoryPage = MemoryDesk.fromJson(doc.data()!);
      emit(
        QrCamState.qrCamMemoryDeskLoaded(
          memoryPage: memoryPage,
          memoryDeskId: event.memoryDeskId,
        ),
      );
    } catch (e) {
      emit(QrCamState.qrCamError(
        error: e,
        needPop: true,
      ));
    }
  }
}

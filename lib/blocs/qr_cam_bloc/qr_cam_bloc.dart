// ignore_for_file: avoid_void_async

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:ritual_app/services/permission/permission_service.dart';
import 'package:ritual_app/services/service_locator.dart';
// import 'package:ritual_app/utils/utils.dart';

part 'qr_cam_event.dart';
part 'qr_cam_state.dart';
part 'qr_cam_bloc.freezed.dart';

// void _log(dynamic message) => Logger.projectLog(message, name: 'qr_cam_bloc');

class QrCamBloc extends Bloc<QrCamEvent, QrCamState> {
  final permissionService = getIt<PermissionService>();

  QrCamBloc() : super(const _Initial()) {
    on<QrCamEvent>((events, emit) async {
      await events.map(
        qrCamPermissionCheck: (event) async =>
            await _qrCamPermissionCheck(event, emit),

        // next: (_) async => await _next(emit),
        // previous: (_) async => await _previous(emit),
      );
    });
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
}

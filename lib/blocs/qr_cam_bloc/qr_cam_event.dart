part of 'qr_cam_bloc.dart';

@freezed
class QrCamEvent with _$QrCamEvent {
  const factory QrCamEvent.qrCamPermissionCheck() = QrCamPermissionCheck;

  const factory QrCamEvent.qrCamLoadMemoryDesk({
    required String memoryDeskId,
  }) = QrCamLoadMemoryDesk;
}

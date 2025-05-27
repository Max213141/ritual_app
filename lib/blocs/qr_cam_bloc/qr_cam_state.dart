part of 'qr_cam_bloc.dart';

@freezed
class QrCamState with _$QrCamState {
  const factory QrCamState.initial() = _Initial;

  const factory QrCamState.qrCamLoading() = QrCamLoading;

  const factory QrCamState.qrCamPermissionDenied() = QrCamPermissionDenied;

  const factory QrCamState.qrCamPermissionPermamentlyDenied() =
      QrCamPermissionPermamentlyDenied;

  const factory QrCamState.qrCamPermissionGranted() = QrCamPermissionGranted;

  const factory QrCamState.qrCamMemoryDeskLoaded({
    required MemoryDesk memoryPage,
    required String memoryDeskId,
  }) = QrCamMemoryDeskLoaded;

  const factory QrCamState.qrCamError({
    @Default('') Object? error,
    @Default(false) bool? needPop,
  }) = QrCamError;
}

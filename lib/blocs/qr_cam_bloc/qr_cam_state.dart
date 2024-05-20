part of 'qr_cam_bloc.dart';

@freezed
class QrCamState with _$QrCamState {
  const factory QrCamState.initial() = _Initial;

  const factory QrCamState.qrCamLoading() = QrCamLoading;

  const factory QrCamState.qrCamPermissionDenied() = QrCamPermissionDenied;

  const factory QrCamState.qrCamPermissionPermamentlyDenied() =
      QrCamPermissionPermamentlyDenied;

  const factory QrCamState.qrCamPermissionGranted() = QrCamPermissionGranted;

  const factory QrCamState.qrCamError({
    @Default('') Object? error,
    @Default(false) bool? needPop,
  }) = QrCamError;
}

// class QrCamRegisterPaymentLoading extends QrCamState {}

// class QrCamRegisterPaymentSuccess extends QrCamState {
//   final bool? needPop;
//   const QrCamRegisterPaymentSuccess({
//     this.needPop,
//   });
// }

// class QrCamErrorKomplat extends QrCamState {
//   final String errorMessage;
//   final int errorCode;
//   final bool? needPop;

//   const QrCamErrorKomplat({
//     required this.errorMessage,
//     required this.errorCode,
//     this.needPop,
//   });

//   @override
//   List<Object> get props => [errorMessage, errorCode];
// }

// class QrCamError extends QrCamState {
//   final Object? error;
//   final bool? needPop;

//   const QrCamError({
//     this.error,
//     this.needPop,
//   });

//   @override
//   List<Object> get props => [];
// }

// class QrCamLoading extends QrCamState {}

// class QrCamPermissionDenied extends QrCamState {}

// class QrCamPermissionPermamentlyDenied extends QrCamState {}

// class QrCamPermissionGranted extends QrCamState {
//   // final bool showLoader;
//   const QrCamPermissionGranted(
//       // required this.showLoader,
//       );
//   // @override
//   // List<Object> get props => [showLoader];
// }

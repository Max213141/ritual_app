part of 'qr_cam_bloc.dart';

@freezed
class QrCamEvent with _$QrCamEvent {
  const factory QrCamEvent.qrCamPermissionCheck() = QrCamPermissionCheck;
}

// class QrCamPermissionCheck extends QrCamEvent {}

// class RegisterQrPayment extends QrCamEvent {
//   final int requestId;
//   const RegisterQrPayment({required this.requestId});

//   @override
//   List<Object> get props => [];
// }

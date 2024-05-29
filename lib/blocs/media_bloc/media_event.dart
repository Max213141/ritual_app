part of 'media_bloc.dart';

@freezed
class MediaEvent with _$MediaEvent {
  const factory MediaEvent.getMedia() = GetMedia;

  const factory MediaEvent.uploadMedia({
    required File file,
    required String filePath,
  }) = UploadMedia;

  const factory MediaEvent.deleteMedia() = DeleteMedia;
}

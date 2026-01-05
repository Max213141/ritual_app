part of 'media_bloc.dart';

@freezed
class MediaEvent with _$MediaEvent {
  const factory MediaEvent.uploadMedia({
    required String filePath,
    required File file,
    //TODO make sure that its works
    StreamController<double>? progressController,
  }) = UploadMedia;

  const factory MediaEvent.getMedia({
    required String mediaUrl,
    StreamController<double>?
        progressController, //TODO make sure that its works
  }) = GetMedia;

  const factory MediaEvent.deleteMedia({required String filePath}) =
      DeleteMedia;
}

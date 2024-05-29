part of 'media_bloc.dart';

@freezed
class MediaState with _$MediaState {
  const factory MediaState.initial() = _Initial;

  const factory MediaState.loadingMedia() = LoadingMedia;

  const factory MediaState.uploadingMedia() = UploadingMedia;
}

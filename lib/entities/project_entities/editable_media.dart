import 'package:image_picker/image_picker.dart';

class EditableMedia {
  final List<String> existingPhotoUrls;
  final List<XFile> newPhotoFiles;
  final List<String> existingVideoUrls;
  final List<XFile> newVideoFiles;

  EditableMedia({
    this.existingPhotoUrls = const [],
    this.newPhotoFiles = const [],
    this.existingVideoUrls = const [],
    this.newVideoFiles = const [],
  });

  EditableMedia copyWith({
    List<String>? existingPhotoUrls,
    List<XFile>? newPhotoFiles,
    List<String>? existingVideoUrls,
    List<XFile>? newVideoFiles,
  }) =>
      EditableMedia(
        existingPhotoUrls: existingPhotoUrls ?? this.existingPhotoUrls,
        newPhotoFiles: newPhotoFiles ?? this.newPhotoFiles,
        existingVideoUrls: existingVideoUrls ?? this.existingVideoUrls,
        newVideoFiles: newVideoFiles ?? this.newVideoFiles,
      );
}

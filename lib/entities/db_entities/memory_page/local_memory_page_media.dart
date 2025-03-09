// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:image_picker/image_picker.dart';

class LocalMemoryPageMedia {
  List<XFile> photos;
  List<XFile> videos;

  LocalMemoryPageMedia({
    required this.photos,
    required this.videos,
  });

  LocalMemoryPageMedia copyWith({
    List<XFile>? photos,
    List<XFile>? videos,
  }) {
    return LocalMemoryPageMedia(
      photos: photos ?? this.photos,
      videos: videos ?? this.videos,
    );
  }
}

// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';

part 'memory_page_media.g.dart';

@JsonSerializable(explicitToJson: true)
class MemoryPageMedia {
  List<String> photos; // URLs of selected photos
  List<String> videos; // URLs or paths of selected videos

  MemoryPageMedia({
    required this.photos,
    required this.videos,
  });

  /// Factory constructor for JSON deserialization
  factory MemoryPageMedia.fromJson(Map<String, dynamic> json) =>
      _$MemoryPageMediaFromJson(json);

  /// Method for JSON serialization
  Map<String, dynamic> toJson() => _$MemoryPageMediaToJson(this);

  MemoryPageMedia copyWith({
    List<String>? photos,
    List<String>? videos,
  }) {
    return MemoryPageMedia(
      photos: photos ?? this.photos,
      videos: videos ?? this.videos,
    );
  }
}

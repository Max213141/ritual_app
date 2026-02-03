// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'memory_page_media.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MemoryPageMedia _$MemoryPageMediaFromJson(
  Map<String, dynamic> json,
) => MemoryPageMedia(
  photos: (json['photos'] as List<dynamic>).map((e) => e as String).toList(),
  videos: (json['videos'] as List<dynamic>).map((e) => e as String).toList(),
);

Map<String, dynamic> _$MemoryPageMediaToJson(MemoryPageMedia instance) =>
    <String, dynamic>{'photos': instance.photos, 'videos': instance.videos};

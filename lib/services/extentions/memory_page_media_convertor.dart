import 'dart:io';

import 'package:ritual_app/entities/entities.dart';
import 'package:ritual_app/services/media/media_service_interface.dart';

extension LocalMediaMapper on EditableMedia {
  Future<MemoryPageMedia> uploadAndConvert({
    required String memoryDeskId,
    required MediaServiceInterface mediaService,
  }) async {
    final photoUrls = <String>[];
    final videoUrls = <String>[];

    for (final photo in newPhotoFiles) {
      final url = await mediaService.uploadFileAndGetUrl(
        filePath: 'memory_desks/$memoryDeskId/photos/${photo.name}',
        file: File(photo.path),
      );
      if (url != null) photoUrls.add(url);
    }

    for (final video in newVideoFiles) {
      final url = await mediaService.uploadFileAndGetUrl(
        filePath: 'memory_desks/$memoryDeskId/videos/${video.name}',
        file: File(video.path),
      );
      if (url != null) videoUrls.add(url);
    }

    return MemoryPageMedia(photos: photoUrls, videos: videoUrls);
  }
}

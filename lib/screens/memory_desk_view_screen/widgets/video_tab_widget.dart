// lib/screens/memory_page_view_screen/widgets/video_tab_widget.dart

import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:ritual_app/utils/utils.dart';
import 'package:video_thumbnail/video_thumbnail.dart';
import 'package:ritual_app/screens/memory_desk_view_screen/widgets/media_grid_widget.dart';

class VideoTabWidget extends StatelessWidget {
  final List<String> videoUrls;

  const VideoTabWidget({
    super.key,
    required this.videoUrls,
  });

  Future<Uint8List?> _getThumbnail(String url) {
    return VideoThumbnail.thumbnailData(
      video: url,
      imageFormat: ImageFormat.JPEG,
      maxWidth: 200, // adjust as you like
      quality: 75,
    );
  }

  @override
  Widget build(BuildContext context) {
    final l10n = l10nOf(context);
    if (videoUrls.isEmpty) {
      return Padding(
        padding: EdgeInsets.all(24),
        child: Center(
          child: Text(l10n.mdScreenVideoEmpty),
        ),
      );
    }
    return MediaGridWidget(
      isVideo: true,
      mediaList: videoUrls,
      getMedia: _getThumbnail,
    );
  }
}

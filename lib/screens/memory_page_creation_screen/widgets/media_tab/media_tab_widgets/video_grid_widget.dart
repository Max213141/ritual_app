import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:ritual_app/entities/entities.dart';
import 'package:ritual_app/entities/project_entities/video_item.dart';
import 'package:video_thumbnail/video_thumbnail.dart';

class VideoGridWidget extends StatelessWidget {
  final Function(VideoItem) onVideoPick;
  final EditableMedia media;
  const VideoGridWidget(
      {super.key, required this.media, required this.onVideoPick});

  @override
  Widget build(BuildContext context) {
    final all = [
      ...media.existingVideoUrls.map((url) => VideoItem.existing(url)),
      ...media.newVideoFiles.map((file) => VideoItem.newFile(file)),
    ];

    if (all.isEmpty) {
      return const Center(child: Text('No videos'));
    }
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: all.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
      ),
      itemBuilder: (_, i) {
        final item = all[i];
        return Stack(
          fit: StackFit.expand,
          children: [
            FutureBuilder<Uint8List?>(
              future: item.when(
                existing: (url) => _makeThumbnail(url),
                newFile: (file) => _makeThumbnail(file.path),
              ),
              builder: (ctx, snap) {
                if (snap.hasData) {
                  return Image.memory(snap.data!, fit: BoxFit.cover);
                } else {
                  return Container(color: Colors.grey[300]);
                }
              },
            ),
            const Positioned(
              bottom: 4,
              left: 4,
              child: Icon(Icons.videocam, color: Colors.white70),
            ),
            Positioned(
              top: 4,
              right: 4,
              child: GestureDetector(
                onTap: onVideoPick(item),
                child: const CircleAvatar(
                  radius: 12,
                  backgroundColor: Colors.black54,
                  child: Icon(Icons.close, size: 16, color: Colors.white),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  // Generate a thumbnail for a remote or local video
  Future<Uint8List?> _makeThumbnail(String pathOrUrl) {
    return VideoThumbnail.thumbnailData(
      video: pathOrUrl,
      imageFormat: ImageFormat.JPEG,
      maxWidth: 200,
      quality: 75,
    );
  }
}

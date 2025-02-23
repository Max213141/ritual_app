import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mime/mime.dart';
import 'package:video_player/video_player.dart';

import 'video_player_widget.dart';

class PreviewWidget extends StatefulWidget {
  final List<XFile>? mediaFileList;

  const PreviewWidget({
    super.key,
    this.mediaFileList,
  });

  @override
  State<PreviewWidget> createState() => _PreviewWidgetState();
}

class _PreviewWidgetState extends State<PreviewWidget> {
  @override
  Widget build(BuildContext context) {
    return Semantics(
      label: 'image_picker_example_picked_images',
      child: ListView.builder(
        key: UniqueKey(),
        itemBuilder: (BuildContext context, int index) {
          final String? mime =
              lookupMimeType(widget.mediaFileList![index].path);

          // Why network for web?
          // See https://pub.dev/packages/image_picker_for_web#limitations-on-the-web-platform
          return Semantics(
            label: 'image_picker_example_picked_image',
            child: kIsWeb
                ? Image.network(widget.mediaFileList![index].path)
                : (mime == null || mime.startsWith('image/')
                    ? Image.file(
                        File(widget.mediaFileList![index].path),
                        errorBuilder: (BuildContext context, Object error,
                            StackTrace? stackTrace) {
                          return const Center(
                              child: Text('This image type is not supported'));
                        },
                      )
                    : _buildInlineVideoPlayer(index)),
          );
        },
        itemCount: widget.mediaFileList!.length,
      ),
    );
  }

  Widget _buildInlineVideoPlayer(int index) {
    final VideoPlayerController controller =
        VideoPlayerController.file(File(widget.mediaFileList![index].path));
    const double volume = kIsWeb ? 0.0 : 1.0;
    controller.setVolume(volume);
    controller.initialize();
    controller.setLooping(true);
    controller.play();
    return Center(child: VideoPlayerWidget(controller: controller));
  }
}

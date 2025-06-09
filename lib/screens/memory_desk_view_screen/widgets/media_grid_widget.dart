import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:ritual_app/utils/utils.dart';

/// A grid of exactly one “frame” per URL in [mediaList], showing a loader until
/// [getMedia] finishes and then stuffing the bytes into your MediaPickerFrameWidget.
class MediaGridWidget extends StatelessWidget {
  final List<String> mediaList;

  /// Given a URL, must return the raw bytes (image or thumbnail).
  final Future<Uint8List?> Function(String url) getMedia;

  const MediaGridWidget({
    super.key,
    required this.mediaList,
    required this.getMedia,
  });

  @override
  Widget build(BuildContext context) {
    final borderColor = Theme.of(context).primaryColorLight;

    return GridView.builder(
      padding: const EdgeInsets.all(16),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: .75,
      ),
      itemCount: mediaList.length,
      itemBuilder: (_, i) {
        return FutureBuilder<Uint8List?>(
          future: getMedia(mediaList[i]),
          builder: (ctx, snap) {
            // loading
            if (snap.connectionState != ConnectionState.done) {
              return SizedBox(
                width: 115,
                height: 145,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    border: Border.all(color: borderColor),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Center(child: CircularProgressIndicator()),
                ),
              );
            }

            // error or no data
            if (snap.hasError || snap.data == null) {
              return SizedBox(
                width: 115,
                height: 145,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    border: Border.all(color: borderColor),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Center(child: Icon(Icons.broken_image)),
                ),
              );
            }

            // success: feed bytes into your frame widget
            return MediaPickerFrameWidget(
              videoThumbnail: snap.data,
            );
          },
        );
      },
    );
  }
}

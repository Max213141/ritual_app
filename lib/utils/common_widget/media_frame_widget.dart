import 'dart:io'; // Import for using File
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:ritual_app/utils/utils.dart';

// void _log(dynamic message) =>
//     Logger.projectLog(message, name: 'media_frame_widget');

class MediaPickerFrameWidget extends StatelessWidget {
  final Uint8List? videoThumbnail;
  final String? imagePath;
  final String? icon;
  final VoidCallback? onTap;
  final Future<void> Function()? onPressed;
  final VoidCallback? onClosedPressed;

  const MediaPickerFrameWidget({
    super.key,
    this.videoThumbnail,
    this.imagePath,
    this.icon,
    this.onTap,
    this.onPressed,
    this.onClosedPressed,
  });

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).primaryColorLight;
    return Stack(
      children: [
        // Tapping the frame now prefers onTap; fallback to onPressed
        Positioned.fill(
          child: GestureDetector(
            onTap: onTap ??
                () async {
                  if (onPressed != null) await onPressed!();
                },
            child: DecoratedBox(
              decoration: BoxDecoration(
                border: Border.all(color: color, width: 2),
                borderRadius: BorderRadius.circular(8),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: videoThumbnail != null
                    ? Image.memory(videoThumbnail!, fit: BoxFit.cover)
                    : (imagePath != null
                        ? Image.file(File(imagePath!), fit: BoxFit.cover)
                        : Center(
                            child: icon == null
                                ? const SizedBox()
                                : RitualAppSvgPicture(picture: icon!),
                          )),
              ),
            ),
          ),
        ),

        if (onClosedPressed != null)
          Positioned(
            top: -5,
            right: -5,
            child: IconButton(
              icon: DecoratedBox(
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(.5),
                  shape: BoxShape.circle,
                ),
                child: const Icon(Icons.close, size: 14, color: Colors.white),
              ),
              onPressed: onClosedPressed,
            ),
          ),
      ],
    );
  }
}

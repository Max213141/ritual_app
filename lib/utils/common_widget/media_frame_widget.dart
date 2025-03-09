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
  final Future<void> Function()? onPressed;
  final VoidCallback? onClosedPressed;
  const MediaPickerFrameWidget({
    super.key,
    this.icon,
    this.onPressed,
    this.imagePath,
    this.onClosedPressed,
    this.videoThumbnail,
  });

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).primaryColorLight;
    return Stack(
      children: [
        Positioned(
          child: GestureDetector(
            onTap: () async {
              onPressed != null ? await onPressed!() : null;
            },
            child: SizedBox(
              width: 115,
              height: 145,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  border: Border.all(color: color),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: imagePath != null || videoThumbnail != null
                    ? videoThumbnail != null
                        ? ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.memory(
                              // Display local image using file path
                              videoThumbnail!,
                              // Ensures the image fits nicely
                              fit: BoxFit.cover,
                              width: double.infinity,
                              height: double.infinity,
                            ),
                          )
                        : ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.file(
                              // Display local image using file path
                              File(imagePath!),
                              // Ensures the image fits nicely
                              fit: BoxFit.cover,
                              width: double.infinity,
                              height: double.infinity,
                            ),
                          )
                    : Padding(
                        padding: const EdgeInsets.all(40.0),
                        child: Center(
                          child: RitualAppSvgPicture(picture: icon!),
                        ),
                      ),
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
                    color: Colors.black.withValues(alpha: .5),
                    borderRadius: BorderRadius.circular(100)),
                child: const Padding(
                  padding: EdgeInsets.all(2.0),
                  child: Icon(
                    Icons.close,
                    color: Colors.white,
                    size: 14,
                  ),
                ),
              ),
              onPressed: onClosedPressed,
            ),
          ),
      ],
    );
  }
}

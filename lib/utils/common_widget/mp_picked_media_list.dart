import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ritual_app/utils/common_widget/widgets.dart';
// import 'package:ritual_app/utils/loger.dart';

// void _log(dynamic message) =>
//     Logger.projectLog(message, name: 'picked_media_list');

class PickedMediaList extends StatelessWidget {
  final List<XFile> mediaList;
  final List<Uint8List?>? thumbnailList;

  final String? pickerIcon;
  final Future<void> Function()? onPressPickMedia;
  final bool watchOnlyMode;
  final void Function(int index)? closePhotoCallback;
  final void Function(int index)? closeVideoCallback;

  const PickedMediaList({
    super.key,
    required this.mediaList,
    this.thumbnailList,
    this.onPressPickMedia,
    this.closePhotoCallback,
    this.closeVideoCallback,
    this.pickerIcon,
    this.watchOnlyMode = false,
  });

  @override
  Widget build(BuildContext context) {
    if (mediaList.isEmpty && watchOnlyMode) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        child: Center(
          child: Text(
            'Loading...',
            style: TextStyle(fontSize: 16),
          ),
        ),
      );
    } else {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        child: GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, // Number of columns in the grid
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: .75,
          ),
          itemCount: mediaList.length < 5
              ? mediaList.length + 1 // Add the selection button
              : mediaList.length, // Maximum 5 items (no button)
          itemBuilder: (context, index) {
            if (index < mediaList.length) {
              // Use a variable to store the widget to return
              Widget mediaItem;

              // Check for thumbnail or imagePath
              if (thumbnailList != null && thumbnailList![index] != null) {
                mediaItem = MediaPickerFrameWidget(
                  videoThumbnail: thumbnailList![index],
                  onClosedPressed:
                      !watchOnlyMode ? () => closeVideoCallback!(index) : null,
                );
              } else {
                mediaItem = MediaPickerFrameWidget(
                  imagePath: mediaList[index].path,
                  onClosedPressed: !watchOnlyMode
                      ? () {
                          closePhotoCallback!(index);
                        }
                      : null,
                );
              }
              return mediaItem; // Ensure a widget is always returned
            } else if (!watchOnlyMode) {
              return MediaPickerFrameWidget(
                icon: pickerIcon,
                onPressed: onPressPickMedia,
              );
            } else {
              return SizedBox.shrink();
            }
          },
        ),
      );
    }
  }
}

import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ritual_app/screens/memory_page_creation_screen/widgets/widgets.dart';
import 'package:ritual_app/utils/loger.dart';

void _log(dynamic message) =>
    Logger.projectLog(message, name: 'picked_media_list');

class PickedMediaList extends StatelessWidget {
  final List<XFile> mediaList;
  final List<Uint8List?>? thumbnailList;
  final String pickerIcon;
  final Future<void> Function() onPressPickMedia;
  final void Function(int index)? closePhotoCallback;
  final void Function(int index)? closeVideoCallback;

  const PickedMediaList({
    super.key,
    required this.mediaList,
    this.thumbnailList,
    required this.onPressPickMedia,
    this.closePhotoCallback,
    this.closeVideoCallback,
    required this.pickerIcon,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
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
              onClosedPressed: () => closeVideoCallback!(index),
            );
          } else {
            mediaItem = MediaPickerFrameWidget(
              imagePath: mediaList[index].path,
              onClosedPressed: () {
                closePhotoCallback!(index);
              },
            );
          }

          return mediaItem; // Ensure a widget is always returned
        } else {
          return MediaPickerFrameWidget(
            icon: pickerIcon,
            onPressed: onPressPickMedia,
          );
        }
      },
    );
  }
}

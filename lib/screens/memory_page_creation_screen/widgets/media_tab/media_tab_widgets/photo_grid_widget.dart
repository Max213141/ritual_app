import 'dart:io';

import 'package:flutter/material.dart';
import 'package:ritual_app/entities/entities.dart';

class PhotoGridWidget extends StatelessWidget {
  final Function(PhotoItem) onPhotoPick;
  final EditableMedia media;
  final VoidCallback addPhotos;

  const PhotoGridWidget({
    super.key,
    required this.onPhotoPick,
    required this.media,
    required this.addPhotos,
  });

  @override
  Widget build(BuildContext context) {
    final all = [
      ...media.existingPhotoUrls.map((url) => PhotoItem.existing(url)),
      ...media.newPhotoFiles.map((file) => PhotoItem.newFile(file)),
    ];

    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.all(8),
      itemCount: all.length + 1, // +1 for add button
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        //  maxCrossAxisExtent: 115,
        mainAxisExtent: 145,
        crossAxisCount: 3,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
      ),
      itemBuilder: (_, index) {
        // ➕ ADD PHOTO TILE
        if (index == 0) {
          return GestureDetector(
            onTap: addPhotos,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: Colors.white, width: 2),
              ),
              child: const Center(
                child: Icon(
                  Icons.add_a_photo_outlined,
                  color: Colors.white,
                  size: 32,
                ),
              ),
            ),
          );
        }

        // 🖼 PHOTO TILE
        final item = all[index - 1];
        //list[index]

        return Stack(
          fit: StackFit.expand,
          children: [
            SizedBox(
              width: 115,
              height: 145,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: item.when(
                  existing: (url) => Image.network(url, fit: BoxFit.cover),
                  newFile: (file) =>
                      Image.file(File(file.path), fit: BoxFit.cover),
                ),
              ),
            ),
            Positioned(
              top: 4,
              right: 4,
              child: GestureDetector(
                onTap: () => onPhotoPick(item),
                child: const CircleAvatar(
                  radius: 12,
                  backgroundColor: Colors.black54,
                  child: Icon(
                    Icons.close,
                    size: 16,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}

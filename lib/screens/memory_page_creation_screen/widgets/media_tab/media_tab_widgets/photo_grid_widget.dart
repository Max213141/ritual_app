import 'dart:io';

import 'package:flutter/material.dart';
import 'package:ritual_app/entities/entities.dart';

class PhotoGridWidget extends StatelessWidget {
  final Function(PhotoItem) onPhotoPick;
  final EditableMedia media;
  const PhotoGridWidget({
    super.key,
    required this.onPhotoPick,
    required this.media,
  });

  @override
  Widget build(BuildContext context) {
    final all = [
      ...media.existingPhotoUrls.map((url) => PhotoItem.existing(url)),
      ...media.newPhotoFiles.map((file) => PhotoItem.newFile(file)),
    ];

    if (all.isEmpty) {
      return const Center(child: Text('No photos'));
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
            item.when(
              existing: (url) => Image.network(url, fit: BoxFit.cover),
              newFile: (file) => Image.file(File(file.path), fit: BoxFit.cover),
            ),
            Positioned(
              top: 4,
              right: 4,
              child: GestureDetector(
                onTap: () => onPhotoPick(item),
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
}

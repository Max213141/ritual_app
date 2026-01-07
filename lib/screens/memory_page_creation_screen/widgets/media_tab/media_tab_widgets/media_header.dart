import 'package:flutter/material.dart';

class MediaHeader extends StatelessWidget {
  final String title;
  final int existingCount;
  final int newCount;
  final VoidCallback onAdd;
  const MediaHeader({
    super.key,
    required this.title,
    required this.existingCount,
    required this.newCount,
    required this.onAdd,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '$title (${existingCount + newCount}/5)',
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
        IconButton(
          icon: Icon(
            title == 'Photos' ? Icons.add_photo_alternate : Icons.videocam,
          ),
          onPressed: onAdd,
        ),
      ],
    );
  }
}

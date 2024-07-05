import 'package:flutter/material.dart';

class MediaPickerButton extends StatelessWidget {
  final IconData icon;
  const MediaPickerButton({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(8),
      ),
      child: IconButton(
        icon: Icon(icon),
        onPressed: () {
          // Implement media upload logic
        },
      ),
    );
  }
}

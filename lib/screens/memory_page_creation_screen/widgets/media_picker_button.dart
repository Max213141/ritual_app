import 'package:flutter/material.dart';

class MediaPickerButton extends StatelessWidget {
  final IconData icon;
  final Future<void> Function() onPressed;
  const MediaPickerButton(
      {super.key, required this.icon, required this.onPressed});

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
        onPressed: () async {
          await onPressed();
        },
      ),
    );
  }
}

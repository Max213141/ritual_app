import 'package:flutter/material.dart';

class UploaderButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String heroTag;
  final String tooltip;
  final IconData icon;

  const UploaderButton({
    super.key,
    required this.onPressed,
    required this.heroTag,
    required this.tooltip,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: FloatingActionButton(
        onPressed: onPressed,
        heroTag: heroTag,
        tooltip: tooltip,
        child: Icon(icon),
      ),
    );
  }
}

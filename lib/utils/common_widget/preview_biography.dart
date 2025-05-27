import 'package:flutter/material.dart';

class PreviewBiographyWidget extends StatelessWidget {
  final String biography;
  const PreviewBiographyWidget({super.key, required this.biography});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        biography,
        style: TextStyle(fontSize: 16),
      ),
    );
  }
}

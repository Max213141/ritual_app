import 'package:flutter/material.dart';

class PreviewBiographyWidget extends StatelessWidget {
  final String biography;
  const PreviewBiographyWidget({super.key, required this.biography});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      child: Text(
        biography,
        textAlign: TextAlign.justify,
        style: TextStyle(fontSize: 16),
      ),
    );
  }
}

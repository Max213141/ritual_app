import 'package:flutter/material.dart';

class MPTextField extends StatelessWidget {
  final String label;
  final int? maxLines;
  final String? hintText;
  const MPTextField({
    super.key,
    required this.label,
    this.maxLines = 1,
    this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: TextFormField(
        decoration: InputDecoration(
          labelText: label,
          hintText: hintText,
          border: const OutlineInputBorder(),
        ),
        maxLines: maxLines,
      ),
    );
  }
}

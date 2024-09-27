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
          filled: true,
          fillColor:
              Color(0xFF303030).withOpacity(.8), // Light grey text for label

          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12), // Rounded corners
            borderSide: BorderSide.none, // No border
          ),
          labelStyle: TextStyle(
            color: Colors.grey[400], // Light grey text for label
          ),
          floatingLabelBehavior:
              FloatingLabelBehavior.always, // Label always on top
          contentPadding: EdgeInsets.symmetric(
              horizontal: 16, vertical: 20), // Padding inside the field
        ),
        maxLines: maxLines,
        style: TextStyle(color: Colors.white), // White text for input
      ),
    );
  }
}

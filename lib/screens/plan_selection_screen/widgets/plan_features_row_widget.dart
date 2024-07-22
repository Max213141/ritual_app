import 'package:flutter/material.dart';

class PlanFeaturesWidget extends StatelessWidget {
  final String text;
  const PlanFeaturesWidget({
    super.key,
    required this.text,
    required bool isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          Icon(Icons.check_circle, color: Colors.white, size: 16),
          SizedBox(width: 8),
          Text(text, style: TextStyle(color: Colors.white)),
        ],
      ),
    );
  }
}

// Custom painter to draw the half-circle
import 'package:flutter/material.dart';

class HalfCirclePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.white // Color of the half-circle
      ..strokeWidth = 4 // Thickness of the half-circle
      ..style = PaintingStyle.stroke; // Only draw the outline

    // Draw the half-circle using drawArc method
    final rect = Rect.fromCircle(
        center: Offset(size.width / 2, size.height), radius: size.width / 2);

    // Draw the arc (half-circle)
    canvas.drawArc(rect, 0, 3.14, false, paint); // Half circle (180 degrees)
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

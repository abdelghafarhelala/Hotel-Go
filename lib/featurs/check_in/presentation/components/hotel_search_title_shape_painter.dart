import 'package:flutter/material.dart';

class HotlSearchTitleShapePainter extends CustomPainter {
  final Color color;

  HotlSearchTitleShapePainter(this.color);
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = color // Set the color of the trapezoidal shape
      ..style = PaintingStyle.fill;

    Path path = Path()
      ..moveTo(0, size.height) // Bottom-left corner
      ..lineTo(
          size.width, size.height) // Bottom-right corner (adjust as needed)
      ..lineTo(size.width * 0.75, 0) // Top-right corner (adjust as needed)
      ..lineTo(0, 0) // Top-left corner with a right angle
      ..close(); // Close the path

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

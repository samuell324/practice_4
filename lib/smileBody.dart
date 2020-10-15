import 'package:flutter/material.dart';

class SmileyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final radius = 100.0;
    final center = Offset(150, 120);
    // Body
    final paint = Paint()..color = Colors.yellow;
    canvas.drawCircle(center, radius, paint);
    // Eyes
    canvas.drawOval(
        Rect.fromCenter(
            center: Offset(center.dx + radius / 2, center.dy - radius / 2),
            width: 15,
            height: 40),
        Paint());
    canvas.drawOval(
        Rect.fromCenter(
            center: Offset(center.dx - radius / 2, center.dy - radius / 2),
            width: 15,
            height: 40),
        Paint());
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}

import 'dart:math' as Math;
import 'package:flutter/material.dart';
class Smile extends CustomPainter {
  //Mouth
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = Math.min(size.width, size.height) / 2.5;
    drawMouth() {
      final smilePaint = Paint()
        ..style = PaintingStyle.fill
        ..strokeWidth = 10;
      canvas.drawArc(Rect.fromCircle(center: center, radius: radius / 2), 0,
          Math.pi, false, smilePaint);
    }

    drawMouth();
  }

  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
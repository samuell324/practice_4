import 'dart:math' as Math;
import 'package:flutter/material.dart';
class Smile extends CustomPainter {
  //Mouth
  void paint(Canvas canvas, Size size) {
    final center = Offset(150,130);
    drawMouth() {
      final smilePaint = Paint()
        ..style = PaintingStyle.fill
        ..strokeWidth = 10;
      canvas.drawArc(Rect.fromCircle(center: center, radius: 50), 0,
          Math.pi, false, smilePaint);
    }

    drawMouth();
  }

  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
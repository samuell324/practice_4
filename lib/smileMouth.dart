import 'package:flutter/material.dart';

class Smile extends CustomPainter {
  //Mouth
  void paint(Canvas canvas, Size size) {
    drawMouth() {
      Paint paint = Paint()
        ..color = Colors.black
        ..style = PaintingStyle.stroke
        ..strokeWidth = 10.0;

      Path path = Path();
      path.moveTo(200, 150);
      path.quadraticBezierTo(150, 200, 100, 150);
      path.moveTo(200, 150);
      path.quadraticBezierTo(150, 220, 100, 150);
      canvas.drawPath(path, paint);
    }

    drawMouth();
  }

  bool shouldRepaint(CustomPainter oldDelegate) => true;
}

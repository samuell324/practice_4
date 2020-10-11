import 'package:flutter/material.dart';
import 'dart:math' as Math;

class SmileyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final radius = Math.min(size.width, size.height) / 2.5;
    final center = Offset(size.width / 2, size.height / 2);
    // Body
    final paint = Paint()..color = Colors.yellow;
    canvas.drawCircle(center, radius, paint);
    // Eyes
    canvas.drawCircle(
        Offset(center.dx - radius / 2, center.dy - radius / 2), 10, Paint());
    canvas.drawCircle(
        Offset(center.dx + radius / 2, center.dy - radius / 2), 10, Paint());
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}

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

class MainWidget extends StatefulWidget {
  @override
  _MainWidgetState createState() => _MainWidgetState();
}

class _MainWidgetState extends State<MainWidget> {
  var tapValue = 0;
  var _radioValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
              height: 150,
              child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () => setState(() {
                            if (tapValue == 0) {
                              tapValue++;
                            } else {
                              tapValue--;
                            }
                          }),
                          child: Container(
                            child: Image.asset('assets/images/enableAsset.png'),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      Expanded(
                        child: GestureDetector(
                          child: Container(
                            child: Image.asset(tapValue == 1
                                ? 'assets/images/sadButton.png'
                                : 'assets/images/smileButton.png'),
                          ),
                        ),
                      )
                    ],
                  ))),
          Container(
              width: 300,
              height: 250,
              child: CustomPaint(
                painter: SmileyPainter(),
              )),
        ],
      ),
    );
  }
}

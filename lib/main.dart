import 'package:flutter/material.dart';

void main() {
  runApp(SmileWidgetPage());
}

class SmileWidgetPage extends StatefulWidget {
  @override
  _SmileWidgetPageState createState() => _SmileWidgetPageState();
}

class _SmileWidgetPageState extends State<SmileWidgetPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       home: Scaffold (
         appBar: AppBar(
           title: Text('Practice 4'),
         ),
         body: Container (
           color: Colors.grey,
           padding: EdgeInsets.symmetric(horizontal: 80, vertical: 80),
           child: LayoutBuilder (
             builder: (_, constraints) => Container (
               width: constraints.widthConstraints().maxWidth,
               height: constraints.heightConstraints().maxHeight,
               color: Colors.yellow,
               child: CustomPaint(
                 size: Size(50,50),
               ),
             )
           ),
         ),
       ),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:practice4/smileWidget.dart';

void main() {
  runApp(CustomWidgetApp());
}

class CustomWidgetApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainWidget(),
    );
  }
}

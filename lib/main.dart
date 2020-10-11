import 'package:flutter/material.dart';
import 'smileWidget.dart';

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
        home: Scaffold(
            appBar: AppBar(
              title: Text('Practice 4'),
            ),
            body: MainWidget()));
  }
}

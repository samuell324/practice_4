import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({this.icon, this.text, this.onPressed});

  final Icon icon;
  final Text text;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      elevation: 2.0,
      fillColor: Colors.lightGreenAccent,
      child: SizedBox(
        width: 90,
        height: 90,
        child: Column(
          children: [
            icon,
            text,
            Container(
              height: 15,
              width: 70,
              decoration: new BoxDecoration(
                color: Colors.red,
                borderRadius: new BorderRadius.all(Radius.elliptical(45, 10)),
              ),
            ),
          ],
        ),
      ),
      padding: EdgeInsets.all(5.0),
      shape: CircleBorder(),
    );
  }
}

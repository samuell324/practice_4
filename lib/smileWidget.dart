import 'package:flutter/material.dart';
import 'package:practice4/customButton.dart';
import 'smileBody.dart';
import 'smileMouth.dart';

class MainWidget extends StatefulWidget {
  @override
  _MainWidgetState createState() => _MainWidgetState();
}

class _MainWidgetState extends State<MainWidget>
    with SingleTickerProviderStateMixin {
  var tapValue = 0;
  static AnimationController animController;
  var _radioValue;
  var bottomControl = 0;

  animationFun() {
    setState(() {
      if (tapValue == 1 && bottomControl == 0) {
        animController.forward();
        bottomControl++;
      } else if (tapValue == 1 && bottomControl == 1) {
        animController.reverse();
        bottomControl--;
      }
    });
  }

  @override
  void initState() {
    animController = AnimationController(
      duration: const Duration(milliseconds: 400),
      vsync: this,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Practice 4'),
      ),
      body: ListView(
        children: [
          Container(
              height: 150,
              child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                          child: CustomButton(
                        text: Text('Enable ->'),
                        icon: Icon(
                          Icons.face,
                          color: Colors.red,
                          size: 50,
                        ),
                        onPressed: () => setState(() {
                          if (tapValue == 0)
                            tapValue++;
                          else
                            tapValue--;
                        }),
                      )),
                      SizedBox(
                        width: 50,
                      ),
                      Expanded(
                          child: CustomButton(
                              text: Text('Smile/Sad'),
                              onPressed: () => animationFun(),
                              icon: tapValue == 0
                                  ? Icon(
                                      Icons.tag_faces,
                                      color: Colors.white,
                                      size: 50,
                                    )
                                  : Icon(
                                      Icons.tag_faces,
                                      color: Colors.red,
                                      size: 50,
                                    )))
                    ],
                  ))),
          RawMaterialButton(
            onPressed: () => animationFun(),
            child: Container(
                width: 300,
                height: 250,
                child: CustomPaint(
                  painter: SmileyPainter(),
                  child: RotationTransition(
                    turns: Tween(
                      begin: 0.0,
                      end: 0.5,
                    ).animate(animController),
                    child: CustomPaint(
                      painter: Smile(),
                    ),
                  ),
                )),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: CustomButton(
                  text: Text(''),
                  onPressed: () => setState(() {
                    _radioValue = 0;
                  }),
                  icon: _radioValue == 0
                      ? Icon(
                          Icons.trending_up,
                          color: Colors.red,
                          size: 50,
                        )
                      : Icon(
                          Icons.trending_up,
                          color: Colors.white,
                          size: 50,
                        ),
                ),
              ),
              Expanded(
                child: CustomButton(
                  text: Text(''),
                  onPressed: () => setState(() {
                    _radioValue = 1;
                  }),
                  icon: _radioValue == 1
                      ? Icon(
                          Icons.check_circle,
                          color: Colors.red,
                          size: 50,
                        )
                      : Icon(
                          Icons.check_circle,
                          color: Colors.white,
                          size: 50,
                        ),
                ),
              ),
              Expanded(
                child: CustomButton(
                  text: Text(''),
                  onPressed: () => setState(() {
                    _radioValue = 2;
                  }),
                  icon: _radioValue == 2
                      ? Icon(
                          Icons.crop_3_2,
                          color: Colors.red,
                          size: 50,
                        )
                      : Icon(
                          Icons.crop_3_2,
                          color: Colors.white,
                          size: 50,
                        ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

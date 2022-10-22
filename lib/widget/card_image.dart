import 'package:flutter/material.dart';
import 'package:trip_app/widget/floating_action_button.dart';
import '../widget/floating_action_button.dart';

class CardImage extends StatelessWidget{

  String pathImage="";
  double height;
  double width;
  double topValue;
  double leftValue;
  BoxShape boxShape;
  Color boxShadowColor;
  double blurRadiusVal;

  CardImage(this.pathImage, this.height, this.width, this.topValue, this.leftValue, this.boxShape, this.boxShadowColor, this.blurRadiusVal, {super.key});

  @override
  Widget build(BuildContext context) {

    final card = Container(
      height: height,
      width: width,
      margin: EdgeInsets.only(
        top: topValue,
        left: leftValue,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(pathImage)
        ),
          borderRadius: const BorderRadius.all(Radius.circular(10.0)),
        shape: boxShape,
        boxShadow:   <BoxShadow>[
          BoxShadow(
              color: boxShadowColor,
              blurRadius: blurRadiusVal,
              offset: const Offset(0.0,7.0)
          )
        ]
      ),
    );
    //return card;
    return Stack(
      alignment: const Alignment(0.9,1.1),
      children: <Widget>[
        card,
        const FloatingActionButtonCustomize()
      ],
    );
  }
}
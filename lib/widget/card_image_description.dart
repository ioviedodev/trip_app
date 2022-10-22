import 'package:flutter/material.dart';
import 'package:trip_app/widget/floating_action_button.dart';

class CardImageDescription extends StatelessWidget{

  String pathImage="";
  double height;
  double width;
  double topValue;
  double leftValue;
  BoxShape boxShape;
  Color boxShadowColor;
  double blurRadiusVal;

  String textLevel1Label="";
  double textLevel1Size=0;
  Color textLevel1Color;
  TextAlign textLevel1Align;
  String TextLevel1FontFamily="Lato";

  String textLevel2Label="";
  double textLevel2Size=0;
  Color textLevel2Color;
  TextAlign textLevel2Align;
  String TextLevel2FontFamily="Lato";

  String textLevel3Label="";
  double textLevel3Size=0;
  Color textLevel3Color;
  TextAlign textLevel3Align;
  String TextLevel3FontFamily="Lato";

  CardImageDescription(this.pathImage, this.height, this.width, this.topValue, this.leftValue, this.boxShape, this.boxShadowColor, this.blurRadiusVal,
    this.textLevel1Label, this.textLevel1Size, this.textLevel1Color, this.textLevel1Align, this.TextLevel1FontFamily,
      this.textLevel2Label, this.textLevel2Size, this.textLevel2Color, this.textLevel2Align, this.TextLevel2FontFamily,
      this.textLevel3Label, this.textLevel3Size, this.textLevel3Color, this.textLevel3Align, this.TextLevel3FontFamily,
      {super.key});

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

    Text textLevel1Widget = Text(
        textLevel1Label,
        textAlign: textLevel1Align,
        style:  TextStyle(
            fontFamily: TextLevel1FontFamily,
            fontSize: textLevel1Size,
            color: textLevel1Color
        )
    );

    Text textLevel2Widget = Text(
        textLevel2Label,
        textAlign: textLevel2Align,
        style:  TextStyle(
            fontFamily: TextLevel2FontFamily,
            fontSize: textLevel2Size,
            color: textLevel2Color
        )
    );

    Text textLevel3Widget = Text(
        textLevel3Label,
        textAlign: textLevel3Align,
        style:  TextStyle(
            fontFamily: TextLevel3FontFamily,
            fontSize: textLevel3Size,
            color: textLevel3Color
        )
    );

    final textDescription = Column(
      children: [
        textLevel1Widget,
        textLevel2Widget,
        textLevel3Widget
      ],
    );

    final box = Container(
      height: height * (0.50),
      width: width * (0.80),
      decoration: BoxDecoration(
          color: Colors.white,
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
      child: textDescription,
    );

    final imageDescription= Stack(
      alignment: const Alignment(0.9,0.9),
      children: <Widget>[
        box,
        const FloatingActionButtonCustomize()
      ],
    );

    final cardImageDescription= Stack(
      alignment: const Alignment(0.1,1.5),
      children: <Widget>[
        card,
        imageDescription,

      ],
    );

    return cardImageDescription;
  }
}
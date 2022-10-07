import 'package:flutter/material.dart';


class Utilities {

  Widget getIconByIcon (IconData iconData, int color)
  {
    final star = Container(
      margin: const EdgeInsets.only(top: 323.0, right: 3.0),
      child:  Icon(
        iconData,
        color: Color(color),
      ),
    );
    return star;
  }

  Widget buildPhoto(String pathImage, double top, double left, double width, double height, BoxShape boxShape, BoxFit boxFit){
    final photo = Container(
      margin:  EdgeInsets.only(
          top: top,
          left: left
      ),
      width: width,
      height: height,
      decoration: BoxDecoration(
          shape: boxShape,
          image: DecorationImage(
              image: AssetImage(pathImage),
              fit: boxFit
          )
      ),
    );

    return photo;
  }
  Widget buildWidgetInfo(String text, TextAlign align, double fontSize, int color)//0xffa3a5a7
  {
    final info = Container(
      margin: const EdgeInsets.only(
          left: 20
      ),
      child: Text(
          text,
          textAlign: align,
          style:  TextStyle(
              fontFamily: "Lato",
              fontSize: fontSize,
              color: Color(color)
          )
      ),
    );

    return info;
  }
}
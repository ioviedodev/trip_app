
import 'package:flutter/material.dart';
import 'package:trip_app/options_profile.dart';
import 'package:trip_app/review.dart';
import 'card_image.dart';
import 'card_image_description.dart';
import 'utililies.dart';
import 'floating_action_button.dart';
import 'floating_action_button.dart';
class ProfileDescription extends StatelessWidget{



  const ProfileDescription({super.key});

  @override
  Widget build(BuildContext context) {
    final  utility= Utilities();
    // final double margin_top = 150;

    final containReview = Container(
      // height: margin_top,
      margin: const EdgeInsets.only(
          top:80.0,
          left:10.0
      ),
      child: Review("asset/img/vacancy3.png", "Iván Oviedo","ivan@oviedoengineering.com",""),

    );

    double height = 200 , width =300.0, topValue=100.0, leftValue=20.0;
    BoxShape boxShape=BoxShape.rectangle;
    Color boxShadowColor=Colors.black38;
    double blurRadiusVal=15.0;


    final list = Container(
      height: 450.0,
      child: ListView(
        padding: const EdgeInsets.only(bottom: 80.0),
        scrollDirection: Axis.vertical,
        children: <Widget>[
          CardImageDescription("asset/img/civil.jpg", height, width, 20, leftValue, boxShape, boxShadowColor, blurRadiusVal,
          "Civil Engineer",15.0,Colors.black,TextAlign.center,"Lato",
          "It refers to design structures",12.0,Colors.black,TextAlign.justify,"Lato",
          "Cambridge University",15.0,Colors.black,TextAlign.left,"Lato"),
          CardImageDescription("asset/img/computer.jpg", height, width, topValue, leftValue, boxShape, boxShadowColor, blurRadiusVal,
              "Computer Science",15.0,Colors.black,TextAlign.left,"Lato",
              "It refers to computer science combines the principles of engineering, mathematics and science to study and develop computers",12.0,Colors.black,TextAlign.left,"Lato",
              "Buenos Aires University ",15.0,Colors.black,TextAlign.left,"Lato"),
          CardImageDescription("asset/img/electronic.jpg", height, width, topValue, leftValue, boxShape, boxShadowColor, blurRadiusVal,
              "Electronic Engineer",15.0,Colors.black,TextAlign.left,"Lato",
              "Refers to design and develop electronic equipment, including broadcast and communications systems",12.0,Colors.black,TextAlign.left,"Lato",
              "Espol University",15.0,Colors.black,TextAlign.left,"Lato"),
          CardImageDescription("asset/img/telecomunication.jpg", height, width, topValue, leftValue, boxShape, boxShadowColor, blurRadiusVal,
              "Telecommunication Engineer",15.0,Colors.black,TextAlign.left,"Lato",
              "Refers to design, construct, install and service telecommunications equipment and systems.",12.0,Colors.black,TextAlign.left,"Lato",
              "Oporto University",15.0,Colors.black,TextAlign.left,"Lato"),
        ],
      ),
    );


    final profileDescription= Container(
      margin: EdgeInsets.only(top: 0.0, left: 10.0),
      // height: 430.0,
      // width: 100.0,
      child:
      SingleChildScrollView(
          child: Column(
            children:  [
              containReview,
              const OptionsProfile(),
              list,
            ],
          )
      ),
    );

    ;

    return profileDescription;

  }
}
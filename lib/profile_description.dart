
import 'package:flutter/material.dart';
import 'package:trip_app/options_profile.dart';
import 'package:trip_app/review.dart';
import 'card_image.dart';
import 'utililies.dart';
import 'floating_action_button.dart';
import 'floating_action_button.dart';
class ProfileDescription extends StatelessWidget{



  const ProfileDescription({super.key});

  @override
  Widget build(BuildContext context) {
    final  utility= Utilities();
    final double margin_top = 150;

    final containReview = Container(
      // height: margin_top,
      margin: const EdgeInsets.only(
          top:80.0,
          left:10.0
      ),
      child: Review("asset/img/vacancy3.png", "Iván Oviedo","ivan@oviedoengineering.com",""),

    );

    final list = Container(
      height: 450.0,
      child: ListView(

        // padding: const EdgeInsets.only(right: 1.0),
        scrollDirection: Axis.vertical,
        children: <Widget>[
          CardImage("asset/img/civil.jpg", 200.0, 250.0, 60.0, 20.0, BoxShape.rectangle, Colors.black38, 15.0),
          CardImage("asset/img/computer.jpg", 200.0, 250.0, 60.0, 20.0, BoxShape.rectangle, Colors.black38, 15.0),
          CardImage("asset/img/electronic.jpg", 200.0, 250.0, 60.0, 20.0, BoxShape.rectangle, Colors.black38, 15.0),
          CardImage("asset/img/telecomunication.jpg", 200.0, 250.0, 60.0, 20.0, BoxShape.rectangle, Colors.black38, 15.0),
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
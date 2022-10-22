import 'package:flutter/material.dart';
import 'card_image.dart';
class CardImageList extends StatelessWidget{

  const CardImageList({super.key});

  @override
  Widget build(BuildContext context) {

    final list = Container(
      height: 350.0,
      child: ListView(
         padding: const EdgeInsets.all(25.0),
          scrollDirection: Axis.horizontal,
        children: <Widget>[
        CardImage("asset/img/civil.jpg", 350.0, 250.0, 80.0, 20.0, BoxShape.rectangle, Colors.black38, 15.0),
          CardImage("asset/img/computer.jpg", 350.0, 250.0, 80.0, 20.0, BoxShape.rectangle, Colors.black38, 15.0),
          CardImage("asset/img/electronic.jpg", 350.0, 250.0, 80.0, 20.0, BoxShape.rectangle, Colors.black38, 15.0),
          CardImage("asset/img/telecomunication.jpg", 350.0, 250.0, 80.0, 20.0, BoxShape.rectangle, Colors.black38, 15.0),
        ],
        ),
      );

    return list;

  }
}
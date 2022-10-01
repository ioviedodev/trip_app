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
        CardImage("asset/img/civil.jpg"),
          CardImage("asset/img/computer.jpg"),
          CardImage("asset/img/electronic.jpg"),
          CardImage("asset/img/telecomunication.jpg"),
        ],
        ),
      );

    return list;

  }
}
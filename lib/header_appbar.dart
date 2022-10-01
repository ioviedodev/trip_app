import 'package:flutter/material.dart';
import 'package:trip_app/card_image_list.dart';
import 'package:trip_app/gradient_back.dart';

class HeaderAppBar extends StatelessWidget{

  const HeaderAppBar({super.key});


  @override
  Widget build(BuildContext context) {

    final header = Stack(
      children: <Widget> [
        GradientBack("Popular"),
        CardImageList()
      ],
    );

    return header;
  }


}
import 'package:flutter/material.dart';
import 'utililies.dart';


class ContactDetail extends StatelessWidget{
  final String pathImage;
  final String name;
  final String experience;

  final _utility= Utilities();

  ContactDetail(this.pathImage, this.name, this.experience, {super.key} );


  @override
  Widget build(BuildContext context) {

    final userName = _utility.buildWidgetInfo(name, TextAlign.left, 17.0, 0xffa3a5a7);
    final userExperience = _utility.buildWidgetInfo("Experience: $experience", TextAlign.left, 17.0, 0xffa3a5a7);

    throw UnimplementedError();
  }
}
import 'package:flutter/material.dart';
import 'package:trip_app/gradient_back.dart';
import 'package:trip_app/profile_description.dart';


class HeaderProfile extends StatelessWidget{
  const HeaderProfile( {super.key});

  @override
  Widget build(BuildContext context) {

    String label = "Profile";

    final header = Stack(
      children: <Widget> [
        GradientBack(label, 350.0),
        ProfileDescription()
      ],
    );

    return header;
  }
}
import 'package:flutter/material.dart';

class OptionsProfile extends StatefulWidget{

  const OptionsProfile({super.key});

  @override
  State<StatefulWidget> createState() {
    return _OptionsProfile();
  }
}

class _OptionsProfile extends State<OptionsProfile>{

  Color colorBackground=Colors.white;
  Color iconColor = Colors.indigo;

  @override
  Widget build(BuildContext context) {

    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Expanded(child: FloatingActionButton(
          backgroundColor: colorBackground,  //Color(color),
          mini: true,
          onPressed: onPressed,
          child:  Icon(color: iconColor, Icons.bookmark_add_outlined),
        )),
        Expanded(child: FloatingActionButton(
          backgroundColor:  colorBackground,
          mini: true,
          onPressed: onPressed,
          child:  Icon(color: iconColor, Icons.gif_box_outlined),
        )),
        Expanded(child: FloatingActionButton(
          backgroundColor:  colorBackground,
          mini: false,
          onPressed: onPressed,
          child:  Icon(color: iconColor, Icons.add_a_photo),
        )),
        Expanded(child: FloatingActionButton(
          backgroundColor:  colorBackground,
          mini: true,
          onPressed: onPressed,
          child:  Icon(color: iconColor, Icons.email_outlined),
        )),
        Expanded(child: FloatingActionButton(
          backgroundColor:  colorBackground,
          mini: true,
          onPressed: onPressed,
          child:  Icon(color: iconColor, Icons.person),
        )),

      ],
    );

  }

    void onPressed()
    {

    }

}
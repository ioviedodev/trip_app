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
  static Color iconColor = Colors.indigo;

  Icon iconOption1 = Icon(color: iconColor, Icons.bookmark_add_outlined);
  Icon iconOption2 = Icon(color: iconColor, Icons.history);
  Icon iconOption3 = Icon(color: iconColor, Icons.add_a_photo);
  Icon iconOption4 = Icon(color: iconColor, Icons.email_outlined);//person
  Icon iconOption5 = Icon(color: iconColor, Icons.person);

  @override
  Widget build(BuildContext context) {

    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Expanded(child: FloatingActionButton(
          splashColor: Colors.deepOrange,
          tooltip: 'Bookmark',
          backgroundColor: colorBackground,
          mini: true,
          onPressed: onPressed,
          child:  iconOption1,
        )),
        Expanded(child: FloatingActionButton(
          splashColor: Colors.deepOrange,
          tooltip: 'History',
          backgroundColor:  colorBackground,
          mini: true,
          onPressed: onPressed,
          child:  iconOption2,
        )),
        Expanded(child: FloatingActionButton(
          elevation: 20.0,
          splashColor: Colors.deepOrange,
          tooltip: 'Photo',
          backgroundColor:  colorBackground,
          mini: true,
          onPressed: onPressed,
          child:  iconOption3,
        )),
        Expanded(child: FloatingActionButton(
          splashColor: Colors.deepOrange,
          tooltip: 'Mail',
          backgroundColor:  colorBackground,
          mini: true,
          onPressed: onPressed,
          child:  iconOption4,
        )),
        Expanded(child: FloatingActionButton(
          splashColor: Colors.deepOrange,
          tooltip: 'Profile',
          backgroundColor:  colorBackground,
          mini: true,
          onPressed: onPressed,
          child:  iconOption5,
        )),

      ],
    );

  }

    void onPressed()
    {
      // setState(() {
      //
      // }
    }


}
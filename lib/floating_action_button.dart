import 'package:flutter/material.dart';
import 'package:trip_app/home_trips.dart';
import 'package:trip_app/search_trips.dart';
import 'home_trips.dart';
import 'profile_trips.dart';

class FloatingActionButtonCustomize extends StatefulWidget{

  // String mode="";//Home, Search, Profile
  // IconData iconData;
  // int backGroundColor;

  const FloatingActionButtonCustomize({super.key});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FloatingActionButtonCustomize();
  }
}

class _FloatingActionButtonCustomize extends State<FloatingActionButtonCustomize>{
  String addFav = "Adding to favourite", removeFav = "Removing from favourites";
  int fabIndex = 0;
  Icon fab = const Icon(Icons.favorite_border);




  @override
  Widget build(BuildContext context) {

    final floatingActionButton= FloatingActionButton(
      backgroundColor: const Color(0XFF11DA53),
      mini: true,
      tooltip: "Fav",
      onPressed: onPressedFav,

      child: fab,
    );

    return floatingActionButton;

  }


  void onPressedFav(){
      setState(() {
        if(fabIndex != 0)
          {
            fab = const Icon(Icons.favorite_border);
            fabIndex=0;
            ScaffoldMessenger.of(context).showSnackBar( SnackBar(content: Text(removeFav)));
          }
        else
          {
            fabIndex=1;
            fab = const Icon(Icons.favorite_sharp);
            ScaffoldMessenger.of(context).showSnackBar( SnackBar(content: Text(addFav)));
          }

      });
  }
}
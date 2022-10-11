import 'package:flutter/material.dart';


class FloatingActionButtonCustomize extends StatefulWidget{
  const FloatingActionButtonCustomize({super.key});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FloatingActionButtonCustomize();
  }
}

class _FloatingActionButtonCustomize extends State<FloatingActionButtonCustomize>{
  String snackBarText = "Adding to favourite";
  void onPressedFav(){
    ScaffoldMessenger.of(context).showSnackBar( SnackBar(content: Text(snackBarText)));
}

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return FloatingActionButton(
      backgroundColor: const Color(0XFF11DA53),
      mini: true,
      tooltip: "Fav",
      onPressed: onPressedFav,
      child: Icon(Icons.favorite_border),
    );
  }
}
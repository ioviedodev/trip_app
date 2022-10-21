import 'package:flutter/material.dart';


class GradientBack extends StatelessWidget{
  String title = "";
  double height =0;
  GradientBack(this.title, this.height, {super.key}); //250.0

  @override
  Widget build(BuildContext context) {
    final gradient =
    Container(
      height: height,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
          colors:  [
            Color(0xff4268d3),
            Color(0xff584cd1)
          ],
    begin:  FractionalOffset(0.2, 0.0),
     end:  FractionalOffset(1.0, 0.6),
    stops:  [0.0, 0.6],
          tileMode: TileMode.clamp
        )
      ),
      alignment: const Alignment(-0.9, -0.6),
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 30.0,
          fontFamily: "Lato",
          fontWeight: FontWeight.bold
        ),
      ),
    );

    return gradient;

  }
  
}
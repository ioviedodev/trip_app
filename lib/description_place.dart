import 'package:flutter/material.dart';
import 'button_purple.dart';


class DescriptionPlace extends StatelessWidget {
  String namePlace="";
  double numberStars=0;
  String descriptionPlace="";

  DescriptionPlace(this.namePlace, this.numberStars, this.descriptionPlace, {super.key});

  Widget getStarByIcon (IconData iconData, int color)
  {
    final star = Container(
      margin: const EdgeInsets.only(top: 323.0, right: 3.0),
      child:  Icon(
        iconData,
        color: Color(color),
      ),
    );
    return star;
  }

  @override
  Widget build(BuildContext context) {
    //TODO: implement build
    // String decimals;
    // int decimalDigits=0; // index=0;
    //
    // decimals = numberStars.toString().split('.')[1];
    //
    // if(decimals.compareTo("0")!=0)
    // {
    //   decimalDigits=decimals.length;
    // }

    final description = Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
           Text(
              descriptionPlace,
              textAlign: TextAlign.justify,
              style: const TextStyle(fontFamily: "Lato"),
           )
        ]);


    final titleStar =
        Row(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(top: 320.0, left: 20.0, right: 20.0),
              child: Text(
                namePlace,
                style: const TextStyle(fontFamily: "Lato", fontSize: 30.0, fontWeight: FontWeight.w900),
                textAlign: TextAlign.left,
              ),
            ),
            const SizedBox(width: 10),
            Row(
                children:
            [
              getStarByIcon(Icons.star,0xFFf2c611),
              getStarByIcon(Icons.star,0xFFf2c611),
              getStarByIcon(Icons.star,0xFFf2c611),
              getStarByIcon(Icons.star_half,0xFFf2c611)
            ])
          ],
        );


    final body =

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          titleStar,
          const SizedBox(height: 10),
          description,
          ButtonPurple("Navigate")
        ],
        );



    return body;

    throw UnimplementedError();
  }
}

import 'package:flutter/material.dart';
import 'button_purple.dart';
import 'package:trip_app/data/utililies.dart';

class DescriptionPlace extends StatelessWidget {
  String namePlace="";
  double numberStars=0;
  String descriptionPlace="";

  final _utility= Utilities();

  DescriptionPlace(this.namePlace, this.numberStars, this.descriptionPlace, {super.key});

  @override
  Widget build(BuildContext context) {
    //TODO: implement build

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
              _utility.getIconByIcon(Icons.star,0xFFf2c611, 323.0, 3.0),
              _utility.getIconByIcon(Icons.star,0xFFf2c611, 323.0, 3.0),
              _utility.getIconByIcon(Icons.star,0xFFf2c611, 323.0, 3.0),
              _utility.getIconByIcon(Icons.star_half,0xFFf2c611, 323.0, 3.0)
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

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class DescriptionPlace extends StatelessWidget {
  String namePlace="";
  int stars=0;
  String descriptionPlace="";

  DescriptionPlace(this.namePlace, this.stars, this.descriptionPlace, {super.key});

  Widget getStarByIcon (IconData iconData) //Icons.star
  {
    final star = Container(
      margin: const EdgeInsets.only(top: 323.0, right: 3.0),
      child:  Icon(
        iconData,
        color: Color(0xFFf2c611),
      ),
    );
    return star;
  }

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
           )
        ]);



    final star = Container(
      margin: const EdgeInsets.only(top: 323.0, right: 3.0),
      child: const Icon(
        Icons.star,
        color: Color(0xFFf2c611),
      ),
    );

    final titleStartUpdated =
        Row(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(top: 320.0, left: 20.0, right: 20.0),
              child: Text(
                namePlace,
                style: const TextStyle(fontSize: 30.0, fontWeight: FontWeight.w900),
                textAlign: TextAlign.left,
              ),
            ),
            const SizedBox(width: 10),
            Row(
                children:
            [
              getStarByIcon(Icons.star),
              getStarByIcon(Icons.star),
              getStarByIcon(Icons.star),
              getStarByIcon(Icons.star_half)
            ])
          ],
        );


    final body =

        Column(
        children: [
          titleStartUpdated,
          SizedBox(height: 10),
          description
        ],
        );



    return body;
  }
}

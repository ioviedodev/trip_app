import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class DescriptionPlace extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    //TODO: implement build

    final star = Container(
      margin: const EdgeInsets.only(
        top: 323.0,
        right: 3.0
      ),

      child: const Icon(
        Icons.star,
        color: Color(0xFFf2c611),
      ),
    );

    final title_start = Row(
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(
            top: 320.0,
            left: 20.0,
            right: 20.0
          ),
          child: const Text(
            "Pilas",
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.w900
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Row(
          children: <Widget>[
            star,
            star,
            star,
            star,
            star
          ],
        )

      ],
    );
    return title_start;
  }
}
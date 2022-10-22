import 'package:flutter/material.dart' ;
import '../data/utililies.dart';

class Review extends StatelessWidget {
  String pathImage;
  String name;
  String details;
  String comment;
  final _utility= Utilities();

  Review(this.pathImage, this.name, this.details, this.comment, {super.key});

  @override
  Widget build(BuildContext context) {

    final userName = _utility.buildWidgetInfo(name, TextAlign.left, 17.0, 0xffa3a5a7);
    final userComment = _utility.buildWidgetInfo(comment, TextAlign.left, 13.0, 0xffa3a5a7);
    final userInfo =
    Row(
        children: <Widget>[
          _utility.buildWidgetInfo(details, TextAlign.left, 13.0, 0xffa3a5a7),
        ],
    );


    final userDetails= Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        userName,
        userInfo,
        userComment
      ],
    );

    final photo = _utility.buildPhoto(pathImage, 20.0, 20.0, 80.0, 80.0, BoxShape.circle, BoxFit.cover);

    final review = Row(
      children: <Widget>[
        photo,
        userDetails
      ],
    );

    return review;

  }
}
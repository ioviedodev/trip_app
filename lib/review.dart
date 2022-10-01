import 'package:flutter/material.dart' ;

class Review extends StatelessWidget {
  String pathImage;
  String name;
  String details;
  String comment;

  Review(this.pathImage, this.name, this.details, this.comment, {super.key});

Widget buildWidgetInfo(String text, TextAlign align, double fontSize, int color)//0xffa3a5a7
{
  final info = Container(
    margin: const EdgeInsets.only(
        left: 20
    ),
    child: Text(
        text,
        textAlign: align,
        style:  TextStyle(
            fontFamily: "Lato",
            fontSize: fontSize,
            color: Color(color)
        )
    ),
  );

  return info;
}

  @override
  Widget build(BuildContext context) {

    final userName = buildWidgetInfo(name, TextAlign.left, 17.0, 0xffa3a5a7);
    final userInfo = //buildWidgetInfo(details, TextAlign.left, 13.0, 0xffa3a5a7);
    Row(
        children: <Widget>[
          buildWidgetInfo(details, TextAlign.left, 13.0, 0xffa3a5a7),
        ],
    );

    final userComment = buildWidgetInfo(comment, TextAlign.left, 13.0, 0xffa3a5a7);

    final userDetails= Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        userName,
        userInfo,
        userComment
      ],
    );



    final photo = Container(
      margin: const EdgeInsets.only(
        top: 20.0,
        left: 20.0
      ),
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
            image: AssetImage(pathImage),
            fit: BoxFit.cover
        )
      ),
    );

    final review = Row(
      children: <Widget>[
        photo,
        userDetails
      ],
    );
    // final review = Column(
    //  children: [
    //    review_row
    //  ],
    // );
    return review;
    throw UnimplementedError();
  }
}
import 'package:flutter/material.dart';
import 'package:trip_app/widget/description_place.dart';
import 'package:trip_app/widget/review_list.dart';
import 'package:trip_app/widget/header_appbar.dart';

class Home extends StatelessWidget{
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: <Widget>[
        ListView(
          children: <Widget>[
            DescriptionPlace("Telematic",2,"The following puntuation reflect what the surveyed people think about what is most popular carrer."),
            const ReviewList()
            // ContactDetailList(),
          ],
        ),
        HeaderAppBar("careers")//candidates
      ],
    );
  }


}
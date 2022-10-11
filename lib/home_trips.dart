import 'package:flutter/material.dart';
import 'description_place.dart';
import 'review_list.dart';
import 'header_appbar.dart';

class HomeTrips extends StatelessWidget{
  const HomeTrips({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack( // GradientBack()
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
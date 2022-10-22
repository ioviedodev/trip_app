import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget
 {
   const ReviewList({super.key});

  @override
  Widget build(BuildContext context) {

    final reviewList= Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Review("asset/img/vacancy2.png", "Silvana Oviedo","1 review 5 photos","Telematic engineer "),
        Review("asset/img/csciense.jpg", "Daniel Alvarado","2 review 3 photos","Electronic engineer "),
        Review("asset/img/iot.jpg", "Iván Oviedo","1 review 5 photos","Telematic engineer "),
        Review("asset/img/iot.jpg", "Iván Oviedo","1 review 5 photos","Telematic engineer "),
        Review("asset/img/iot.jpg", "Iván Oviedo","1 review 5 photos","Telematic engineer "),
      ],
    );

    return reviewList;
    throw UnimplementedError();
  }

  
}
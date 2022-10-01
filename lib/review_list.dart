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
        Review("asset/img/iot.jpg", "Iván Oviedo","1 review 5 photos","Telematic engineer "),//is the most exciting carrer that you can imagine //ToDO fix fit in screan
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
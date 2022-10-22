import 'package:flutter/material.dart';
import 'package:trip_app/search_option.dart';

class SearchTrips extends StatelessWidget{
  const SearchTrips({super.key});


  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body:
        Container(
          margin: EdgeInsets.only(top: 55.0),

          color: Colors.indigo,
          child: SearchOption(),
        ),
    );
  }

}
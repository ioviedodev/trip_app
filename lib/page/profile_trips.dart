import 'package:flutter/material.dart';
import 'package:trip_app/widget/header_profile.dart';


class ProfileTrips extends StatelessWidget{
  const ProfileTrips({super.key});


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: const [
         HeaderProfile()
      ],
    );

  }

}
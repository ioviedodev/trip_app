import 'package:flutter/material.dart';
import 'package:trip_app/widget/card_image_list.dart';
import 'package:trip_app/widget/gradient_back.dart';
import 'package:trip_app/widget/job_vacancy.dart';

// ignore: must_be_immutable
class HeaderAppBar extends StatelessWidget{

  String mode = "";
  HeaderAppBar(this.mode, {super.key});


  @override
  Widget build(BuildContext context) {
    bool isCareer = true;
    String label="Popular careers";
    if(mode!="careers") {
      label="Candidate List";
      isCareer =false;
    }

    final StatelessWidget widget;

    if(isCareer) {
      widget= const CardImageList();
    } else {
      widget= const JobVacancy();
    }

    final header = Stack(
      children: <Widget> [

        GradientBack(label,250.0),
        widget

      ],
    );

    return header;
  }


}
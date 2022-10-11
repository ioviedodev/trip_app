import 'package:flutter/material.dart';
import 'card_image.dart';

class JobVacancy extends StatelessWidget{
  const JobVacancy({super.key});

  @override
  Widget build(BuildContext context) {

    final vacancy = Container(

      width: double.infinity,
      height: 260.0,
      margin: const EdgeInsets.all(25.0),
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: Colors.black38.withOpacity(0.1),
            width: 1.0
          ),
        )
      ),
      child:
      CardImage("asset/img/full_stack_developer.png"),


    );

    return vacancy;
  }
}

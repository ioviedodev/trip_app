import 'package:flutter/material.dart';
import 'contact_detail.dart';

class ContactDetailList extends StatelessWidget{

  @override
  Widget build(BuildContext context) {


    final contactDetailList= Container(
        margin: const EdgeInsets.only(
            top: 260.0,
            left: 30.0,
            right: 30.0
        ),
        padding: const EdgeInsets.only(
            top: 10.0,
            bottom: 10.0
        ),
        decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: Colors.black38,
              blurRadius: 15.0,
              offset: Offset(10.0, 10.0)
          )
        ],
      ),
      width: double.infinity,
      child: Column (
        children: <Widget>[
          ContactDetail("asset/img/vacancy1.png","Ivan Alvarado", "5 years",Icons.laptop),
          ContactDetail("asset/img/vacancy2.png","Ximena Garaicoa", "3 years",Icons.smartphone),
          ContactDetail("asset/img/vacancy3.png","Andrés Cedeño", "7 years",Icons.rocket_launch_sharp),
          ContactDetail("asset/img/vacancy4.png","Marcelo Calvo", "1 years",Icons.security),
          ContactDetail("asset/img/vacancy5.png","Gerardo Morán", "7 years",Icons.home),
          ContactDetail("asset/img/vacancy6.png","Marcela Pincay", "1 years",Icons.rocket_launch_sharp),
          ContactDetail("asset/img/vacancy7.png","Andrea Constante", "7 years",Icons.rocket_launch_sharp),
          ContactDetail("asset/img/vacancy8.png","Marcelo Calvo", "1 years",Icons.rocket_launch_sharp)
        ],
      ),
    );

    return contactDetailList;

  }

}
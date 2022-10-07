import 'package:flutter/material.dart';
import 'contact_detail.dart';

class ContactDetailList extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    // final contactDetailList= Column(
    //   crossAxisAlignment: CrossAxisAlignment.start,
    //   children: <Widget>[
    //     ContactDetail("asset/img/civil.jpg","Ivan Alvarado", "5 years"),
    //     ContactDetail("asset/img/computer.jpg","Ximena Garaicoa", "3 years"),
    //     ContactDetail("asset/img/csciense.jpg","Andrea Constante", "7 years"),
    //     ContactDetail("asset/img/telecomunication.jpg","Marcelo Calvo", "1 years")
    //   ],
    // );


    final contactDetailList= Container(
        margin: const EdgeInsets.only(
            top: 200.0,
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
          ContactDetail("asset/img/civil.jpg","Ivan Alvarado", "5 years"),
          ContactDetail("asset/img/computer.jpg","Ximena Garaicoa", "3 years"),
          ContactDetail("asset/img/csciense.jpg","Andrea Constante", "7 years"),
          ContactDetail("asset/img/telecomunication.jpg","Marcelo Calvo", "1 years"),
          ContactDetail("asset/img/csciense.jpg","Andrea Constante", "7 years"),
          ContactDetail("asset/img/telecomunication.jpg","Marcelo Calvo", "1 years"),
          ContactDetail("asset/img/csciense.jpg","Andrea Constante", "7 years"),
          ContactDetail("asset/img/telecomunication.jpg","Marcelo Calvo", "1 years")
        ],
      ),
    );

    return contactDetailList;

  }

}
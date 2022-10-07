import 'package:flutter/material.dart';
import 'utililies.dart';


class ContactDetail extends StatelessWidget{
  final String pathImage;
  final String name;
  final String experience;

  final _utility= Utilities();

  ContactDetail(this.pathImage, this.name, this.experience, {super.key} );


  @override
  Widget build(BuildContext context) {

    final userName = _utility.buildWidgetInfo(name, TextAlign.left, 17.0, 0xffa3a5a7);
    final userExperience = _utility.buildWidgetInfo("Experience: $experience", TextAlign.left, 17.0, 0xffa3a5a7);
    final photo = _utility.buildPhoto(pathImage, 5.0, 20.0, 80.0, 80.0, BoxShape.circle, BoxFit.cover);

    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        userName,
        userExperience
      ],
    );

    final rowContactDetail = Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          flex: 6,
          child: photo,
        ),
        Expanded(
          flex: 10,
          child: userDetails,
        ),
        Expanded(
          flex: 3,
          child:  _utility.getIconByIcon(Icons.rocket_launch_sharp,0xFFf2c611, 10.0, 0.0),
        ),
      ],
    );

    final containerContactDetail = Container(
      margin: const EdgeInsets.only(bottom: 5.0),
      padding: const EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.black26.withOpacity(0.1),
            width: 1.0
          )
        )
      ),
      width: double.infinity,
      child: rowContactDetail,
    );

    return containerContactDetail;
  }
}
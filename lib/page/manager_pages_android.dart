import 'package:flutter/material.dart';
import 'package:trip_app/page/home.dart';
import 'package:trip_app/page/profile.dart';
import 'search.dart';

class Trips extends StatefulWidget{
  const Trips({super.key});

  @override
  State<StatefulWidget> createState() {
    return _Trips();
  }
}

class _Trips extends State<Trips>{
  int currentIndexTap=0;
  final List<Widget> widgetsChilden = [
    Home(),
    Search(),
    Profile()
  ];

  void onTapTapped(int index)
  {
    setState(() {
      currentIndexTap = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: widgetsChilden[currentIndexTap],//const HomeTrips(),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
            canvasColor: Colors.white,
            primaryColor: Colors.purple
        ),
        child: BottomNavigationBar(
          onTap: onTapTapped,
          currentIndex: currentIndexTap,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Home"
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: "Search"
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "Profile"
            ),

          ],
        ),
      ),
    );
  }
  
}
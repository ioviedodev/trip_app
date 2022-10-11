import 'package:flutter/material.dart';
import 'package:trip_app/home_trips.dart';

class Trips extends StatelessWidget{
  const Trips({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: const HomeTrips(),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.white,
          primaryColor: Colors.purple
        ),
        child: BottomNavigationBar(
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
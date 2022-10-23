import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:trip_app/page/home.dart';
import 'profile.dart';
import 'search.dart';


class ManagerPagesIos   extends StatelessWidget {
  const ManagerPagesIos({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        bottomNavigationBar: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
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
          // backgroundColor:  Colors.transparent,
          activeColor: Colors.indigo,
          backgroundColor: Colors.transparent,
      ),
          tabBuilder: (BuildContext context, int index) {
            switch (index) {
              case 0:
                return CupertinoTabView(
                  builder: (BuildContext context) => const Home(),
                );
                break;
              case 1:
                return CupertinoTabView(
                  builder: (BuildContext context) => const Search(),
                );
                break;
              case 2:
                return CupertinoTabView(
                  builder: (BuildContext context) => const Profile(),
                );
                break;
              default:
                return CupertinoTabView(
                  builder: (BuildContext context) => const Home(),
                );
            }
          },

      )
    );

  }

}
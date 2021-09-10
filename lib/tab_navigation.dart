import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tabsf/screens/home.dart';
import 'package:tabsf/screens/map_layout.dart';
import 'package:tabsf/screens/settings.dart';

class TabNavigation extends StatelessWidget {
  Widget getScreen(int tabIndex) {
    switch (tabIndex) {
      case 0:
        return HomeScreen();

      case 1:
        return SettingsScreen();

      case 2:
        return MapLayoutScreen();
    }

    return HomeScreen();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
        tabBar: CupertinoTabBar(items: [
          BottomNavigationBarItem(icon: Icon(Icons.ac_unit_rounded)),
          BottomNavigationBarItem(icon: Icon(Icons.access_alarm_outlined)),
          BottomNavigationBarItem(icon: Icon(Icons.map))
        ]),
        tabBuilder: (BuildContext context, int i) =>
            CupertinoTabView(builder: (BuildContext context) => getScreen(i)));
  }
}

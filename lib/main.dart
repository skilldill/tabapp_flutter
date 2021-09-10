import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tabsf/screens/home.dart';
import 'package:tabsf/tab_navigation.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: TabNavigation(),
    );
  }
}

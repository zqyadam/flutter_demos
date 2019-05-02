import 'package:bottom_navigation_bar/pages/BottomNavigation.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Bottom Navigation Bar",
      home: BottomNavigationWidget(),
    );
  }
}

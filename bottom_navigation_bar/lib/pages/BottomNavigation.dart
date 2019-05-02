import 'package:bottom_navigation_bar/pages/EmailPage.dart';
import 'package:bottom_navigation_bar/pages/HomePage.dart';
import 'package:bottom_navigation_bar/pages/SettingPage.dart';
import 'package:bottom_navigation_bar/pages/StarPage.dart';
import 'package:flutter/material.dart';

class BottomNavigationWidget extends StatefulWidget {
  @override
  _BottomNavigationWidgetState createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  int _index = 0;
  final _activeColor = Colors.lightBlue;

  List<Widget> _pages = [];

  @override
  void initState() {
    super.initState();
    _pages
      ..add(HomePage())
      ..add(EmailPage())
      ..add(StarPage())
      ..add(SettingPage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_index],
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: _activeColor,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: _activeColor,
            ),
            title: Text(
              'Home',
              style: TextStyle(color: _activeColor),
            ),
            // activeIcon: Icon(Icons.home,color: _activeColor,),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.email,
              color: _activeColor,
            ),
            title: Text(
              'Email',
              style: TextStyle(color: _activeColor),
            ),
            // activeIcon: Icon(Icons.home,color: _activeColor,),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.star,
              color: _activeColor,
            ),
            title: Text(
              'Star',
              style: TextStyle(color: _activeColor),
            ),
            // backgroundColor: _activeColor,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              color: _activeColor,
            ),
            title: Text(
              'Setting',
              style: TextStyle(color: _activeColor),
            ),
            // backgroundColor: _activeColor,
          ),
        ],
        currentIndex: _index,
        onTap: (value) {
          setState(() {
            _index = value;
            print(_pages);
          });
        },
      ),
    );
  }
}

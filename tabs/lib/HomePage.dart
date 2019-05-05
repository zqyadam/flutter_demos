import 'package:flutter/material.dart';
import 'package:tabs/KeepAlivePage.dart';
import 'package:tabs/NotKeepAlivePage.dart';

class Home extends StatelessWidget {
  final List<Widget> _tabs = [
    Tab(
      icon: Icon(Icons.directions_bike),
    ),
    Tab(
      icon: Icon(Icons.directions_boat),
    ),
    Tab(
      icon: Icon(Icons.directions_bus),
    ),
    Tab(
      icon: Icon(Icons.directions_car),
    ),
    Tab(
      icon: Icon(Icons.directions_subway),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Tabs Demo'),
          bottom: TabBar(
            tabs: _tabs.map((tab) => tab).toList(),
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            KeepAlivePage(),
            NotKeepAlivePage(),
            Icon(Icons.directions_bus),
            Icon(Icons.directions_car),
            Icon(Icons.directions_subway),
          ],
        ),
      ),
      length: _tabs.length,
      initialIndex: 1,
    );
  }
}

import 'package:flutter/material.dart';

import 'movable_ball_demo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Movable Ball",
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Movable Ball"),
      ),
      body: Center(
        child: MovableBall(),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'heartbeat_animation_widget.dart';
import 'heartbeat_original.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Heartbeat Demo",
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Heartbeat Demo"),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Column(
              children: <Widget>[
                Text('Origional Animation'),
                Expanded(
                  child: Center(
                    child: HeartbeatOriginal(),
                  ),
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.black87,
          ),
          Expanded(
            child: Column(
              children: <Widget>[
                Text('Animation Widget'),
                Expanded(
                  child: Center(
                    child: HeartbeatAnimationDemo(),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

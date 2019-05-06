import 'package:flutter/material.dart';
import 'package:tabs/HomePage.dart';
import 'TabController.dart';

void main()=>runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tabs Demo',
      home: TabControllerDemo(),
    );
  }
}
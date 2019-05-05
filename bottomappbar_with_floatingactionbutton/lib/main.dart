import 'package:bottomappbar_with_floatingactionbutton/pages/SimpleBottomAppBarPage.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

Color _primaryColor = Colors.blue;

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BottomAppBar',
      theme: ThemeData(primarySwatch: _primaryColor),
      home: SimpleBottomAppBarPage(),
    );
  }
}

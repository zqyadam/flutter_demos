import 'package:flutter/material.dart';
import 'package:infinite_grid_view/InfiniteGridView.dart';


void main()=>runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Infinite Grid View',
      home: InfiniteGridView(),
    );
  }
}
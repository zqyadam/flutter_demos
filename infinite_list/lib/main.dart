import 'package:flutter/material.dart';
import 'package:infinite_list/InfiniteListView2.dart';

void main()=>runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Infinite List',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Infinite List'),
        ),
        body: InfiniteListView(),
      ),
    );
  }
}
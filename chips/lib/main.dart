import 'package:flutter/material.dart';
import 'chips/NormalChip.dart';
import 'chips/DeletableChip.dart';
import 'chips/ActionChip.dart';
import 'chips/FilterChip.dart';
import 'chips/ChoiceChip.dart';

void main() => runApp(ChipDemo());

class ChipDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chip Demos',
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chip Demos'),
      ),
      body: ListView(
        children: <Widget>[
          NormalChip(),
          DeletableChip(),
          ActionChipDemo(),
          FilterChipDemo(),
          ChoiceChipDemo(),
        ],
      ),
    );
  }
}

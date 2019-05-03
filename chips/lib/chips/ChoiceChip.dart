import 'package:flutter/material.dart';
import '../CardItem.dart';

class ChoiceChipDemo extends StatefulWidget {
  @override
  _ChoiceChipDemoState createState() => _ChoiceChipDemoState();
}

class _ChoiceChipDemoState extends State<ChoiceChipDemo> {
  static const List<String> _drinks = [
    'Soda',
    'Water',
    'Coke',
    'Coffee',
    'Tea'
  ];

  String _yourChoice = _drinks[0];
  @override
  Widget build(BuildContext context) {
    return CardItem(
      title: 'Choice Chip(单选Chip)',
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(8),
            child: Text('Your drink is: $_yourChoice'),
          ),
          Wrap(
            spacing: 16,
            children: _drinks.map((drink) {
              return ChoiceChip(
                label: Text(drink),
                selected: _yourChoice == drink,
                onSelected: (bool value) {
                  setState(() {
                    _yourChoice = drink;
                  });
                },
              );
            }).toList(),
          )
        ],
      ),
    );
  }
}

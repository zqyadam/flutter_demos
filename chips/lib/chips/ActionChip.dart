import 'package:flutter/material.dart';
import '../CardItem.dart';

class ActionChipDemo extends StatefulWidget {
  @override
  _ActionChipDemoState createState() => _ActionChipDemoState();
}

class _ActionChipDemoState extends State<ActionChipDemo> {
  String _currentAction = 'No action';

  List<String> _actions = [
    'Select All',
    'Copy',
    'Cut',
    'Paste',
  ];

  @override
  Widget build(BuildContext context) {
    return CardItem(
      title: 'Action Chip(按钮Chip)',
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(8),
            child: Text('Your action is: $_currentAction'),
          ),
          Wrap(
            spacing: 16,
            children: _actions.map((action) {
              return ActionChip(
                backgroundColor:
                    _currentAction == action ? Colors.lightBlue : null,
                label: Text(
                  action,
                  style: TextStyle(
                    color: _currentAction == action? Colors.white :null
                  ),
                ),
                onPressed: () {
                  setState(() {
                    _currentAction = action;
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

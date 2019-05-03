import 'package:flutter/material.dart';
import '../CardItem.dart';

class FilterChipDemo extends StatefulWidget {
  @override
  _FilterChipDemoState createState() => _FilterChipDemoState();
}

class _FilterChipDemoState extends State<FilterChipDemo> {
  final List<String> _shoppingList = [
    'Bread',
    'Beer',
    'Milk',
    'Apple',
    'Coffee',
    'Soda'
  ];

  List<String> _selected = [];

  @override
  Widget build(BuildContext context) {
    return CardItem(
      title: 'Filter Chip(多选Chip)',
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(8),
            child: Text('Your choice is: ${_selected.toString()}'),
          ),
          Wrap(
            spacing: 16,
            children: _shoppingList.map((item) {
              return FilterChip(
                label: Text(
                  item,
                  style: TextStyle(
                    color: _selected.contains(item) ? Colors.white : null,
                  ),
                ),
                selected: _selected.contains(item),
                selectedColor: Colors.lightBlue[300],
                onSelected: (bool value) {
                  setState(() {
                    if (!value) {
                      _selected.remove(item);
                    } else {
                      _selected.add(item);
                    }
                  });
                },
              );
            }).toList(),
          )
        ],
      ),
      bottom: Container(
        width: double.infinity,
        alignment: Alignment.centerRight,
        padding: const EdgeInsets.all(8),
        child: IconButton(
          color: Theme.of(context).primaryColor,
          onPressed: () {
            setState(() {
             _selected.clear();
            });
          },
          icon: Icon(Icons.settings_backup_restore),
        ),
      ),
    );
  }
}

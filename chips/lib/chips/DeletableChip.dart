import 'package:flutter/material.dart';
import '../CardItem.dart';

class DeletableChip extends StatefulWidget {
  @override
  _DeletableChipState createState() => _DeletableChipState();
}

class _DeletableChipState extends State<DeletableChip> {
  List<String> _shoppingList = [
    'Bread',
    'Beer',
    'Milk',
    'Apple',
    'Coffee',
    'Soda'
  ];

  List<String> _boughtList = [];

  @override
  Widget build(BuildContext context) {
    return CardItem(
      title: 'Deletable Chip(可删除的Chip)',
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            child: Wrap(
              spacing: 8,
              children: _shoppingList.map((item) {
                return Chip(
                  label: Text(item),
                  onDeleted: () {
                    setState(() {
                      _boughtList.add(item);
                      _shoppingList.remove(item);
                    });
                  },
                  deleteIcon: Icon(Icons.delete),
                  deleteButtonTooltipMessage: 'Delete $item',
                );
              }).toList(),
            ),
          ),
          Container(
            width: double.infinity,
            height: 30,
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 8),
            child: Text(
              'Already Have:',
              style: Theme.of(context).textTheme.subtitle,
            ),
          ),
          Container(
            width: double.infinity,
            child: Wrap(
              spacing: 8,
              children: _boughtList.map((item) {
                return Chip(
                  label: Text(item),
                );
              }).toList(),
            ),
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
              _shoppingList = [
                'Bread',
                'Beer',
                'Milk',
                'Apple',
                'Coffee',
                'Soda'
              ];
              _boughtList = [];
            });
          },
          icon: Icon(Icons.restore),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class CardItem extends StatelessWidget {
  final Widget child;
  final String title;
  final Widget bottom;

  CardItem({Key key, @required this.title, @required this.child, this.bottom})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 8),
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: 50,
            alignment: Alignment.center,
            child: Text(
              title,
              style: Theme.of(context).textTheme.title,
            ),
          ),
          Divider(
            height: 8,
            color: Colors.grey,
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(8),
            child: child,
          ),
          bottom is Widget
              ? Column(
                  children: <Widget>[
                    Divider(
                      height: 8,
                      color: Colors.grey,
                    ),
                    bottom
                  ],
                )
              : SizedBox(
                  height: 0,
                ),
        ],
      ),
    );
  }
}

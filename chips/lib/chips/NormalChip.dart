import 'package:flutter/material.dart';
import '../CardItem.dart';

class NormalChip extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CardItem(
      title: 'Normal Chip(普通Chip)',
      child: Wrap(
        spacing: 8,
        children: <Widget>[
          Chip(
            label: Text('Hello Chip'),
          ),
          Chip(
            label: Text('Hi Chip'),
          ),
          Chip(
            label: Text(
              'Life',
              style: TextStyle(color: Colors.white),
            ),
            backgroundColor: Colors.lightBlue,
          ),
          Chip(
            label: Text('Avatar'),
            avatar: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1556878788767&di=1be5b0bedcf6759248a9e5359cf46ddb&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201505%2F27%2F20150527123918_WaTRX.jpeg'),
            ),
          ),
          Chip(
            label: Text('Text'),
            avatar: CircleAvatar(
              child: Text(
                'Z',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              backgroundColor: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}

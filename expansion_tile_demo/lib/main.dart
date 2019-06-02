import 'package:flutter/material.dart';
import 'model/post.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final title = 'Expansion Tile Demo';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text('$title'),
        ),
        body: Home(),
      ),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: _buildList(posts),
    );
  }

  List<Widget> _buildList(posts) {
    List<Widget> widgets = [];
    posts.forEach((post) {
      widgets.add(_buildTile(post));
    });
    return widgets;
  }

  Widget _buildTile(Post post) {
    return ExpansionTile(
      title: Text(post.title),
      children: <Widget>[
        Image.network(
          post.imageUrl,
          fit: BoxFit.fill,
        ),
        SizedBox(
          height: 16,
        ),
        Text(
          post.title,
          style: Theme.of(context).textTheme.title,
        ),
        Text(
          post.author,
          style: Theme.of(context).textTheme.subhead,
        ),
        Padding(
          padding: EdgeInsets.all(16),
          child: Text(
            post.description,
            style: TextStyle(fontSize: 20),
          ),
        ),
      ],
    );
  }
}

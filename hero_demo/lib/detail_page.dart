import 'package:flutter/material.dart';
import 'model/post.dart';

class DetailPage extends StatelessWidget {
  final Post post;

  DetailPage({Key key, this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(post.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Hero(
              tag: post.title,
              child: Image.network(
                post.imageUrl,
                fit: BoxFit.fill,
              ),
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
        ),
      ),
    );
  }
}

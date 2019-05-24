import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'model/post.dart';
import 'detail_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Hero Demo",
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hero Demo"),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 4,
          mainAxisSpacing: 4,
        ),
        itemBuilder: (BuildContext context, int index) {
          return Hero(
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (BuildContext context) {
                      return DetailPage(post: posts[index]);
                    }));
              },
              child: Image.network(
                posts[index].imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            tag: posts[index].title,
          );
        },
        itemCount: posts.length,
      ),
    );
  }
}

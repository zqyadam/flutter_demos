import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Refresh Indicator Demo",
      home: Scaffold(
        appBar: AppBar(
          title: Text('Refresh Indicator Demo'),
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
  List<String> _words = [];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print(_words);
    return RefreshIndicator(
      onRefresh: _retriveWords,
      child: _words.length > 0
          ? ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(_words[index]),
                );
              },
              itemCount: _words.length,
            )
          : ListView(children: <Widget>[
              Center(
                child: Text('还没有数据哦！'),
              ),
            ]),
    );
  }

  Future<void> _retriveWords() async {
    await Future.delayed(Duration(seconds: 2)).then((e) {
      setState(() {
        _words.insertAll(
            0, generateWordPairs().take(5).map((e) => e.asPascalCase).toList());
      });
    });
  }
}

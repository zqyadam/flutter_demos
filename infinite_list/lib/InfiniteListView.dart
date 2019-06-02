import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class InfiniteListView extends StatefulWidget {
  @override
  _InfiniteListViewState createState() => _InfiniteListViewState();
}

class _InfiniteListViewState extends State<InfiniteListView> {
  static const loadingTag = "##loading##";
  List _words = <String>[loadingTag];
  @override
  void initState() {
    super.initState();
    _retrive_words(20);
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (BuildContext context, int index) {
        if (_words[index] == loadingTag) {
          _retrive_words(5);
          return Container(
            padding: const EdgeInsets.all(16),
            alignment: Alignment.center,
            child: SizedBox(
              width: 24,
              height: 24,
              child: CircularProgressIndicator(
                strokeWidth: 2,
              ),
            ),
          );
        }
        return ListTile(title: Text(_words[index]));
      },
      itemCount: _words.length,
      separatorBuilder: (BuildContext context, int index) {
        return Divider(
          height: 1,
        );
      },
    );
  }

  void _retrive_words(count) {
    Future.delayed(Duration(seconds: 2)).then((e) {
      setState(() {
        _words.insertAll(
            _words.length - 1,
            generateWordPairs()
                .take(count)
                .map((e) => e.asPascalCase)
                .toList());
      });
    });
  }
}

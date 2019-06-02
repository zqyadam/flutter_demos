import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class InfiniteListView extends StatefulWidget {
  @override
  _InfiniteListViewState createState() => _InfiniteListViewState();
}

class _InfiniteListViewState extends State<InfiniteListView> {
  List _words = <String>[];
  bool _loading = false;
  ScrollController _controller = ScrollController();
  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      /* 提前5个‘距离’开始加载 */
      if (_controller.position.pixels ==
          (_controller.position.maxScrollExtent - 5)) {
        _retriveWords(5);
      }
    });
    _retriveWords(20);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        _buildList(),
        _loader(),
      ],
    );
  }

  ListView _buildList() {
    return ListView.separated(
      controller: _controller,
      itemBuilder: (BuildContext context, int index) {
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

  Widget _loader() {
    return Offstage(
      child: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          color: Colors.black12,
        ),
        padding: const EdgeInsets.all(16),
        alignment: Alignment.center,
        child: SizedBox(
          width: 30,
          height: 30,
          child: CircularProgressIndicator(
            strokeWidth: 5,
          ),
        ),
      ),
      offstage: !_loading,
    );
  }

  void _retriveWords(count) {
    setState(() {
      _loading = true;
    });
    Future.delayed(Duration(seconds: 1)).then((e) {
      setState(() {
        _loading = false;
        _words.addAll(generateWordPairs()
            .take(count)
            .map((e) => e.asPascalCase)
            .toList());
      });
    });
  }
}

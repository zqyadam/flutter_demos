import 'package:flutter/material.dart';
import 'package:tabs/InfiniteGridView.dart';

class KeepAlivePage extends StatefulWidget {
  @override
  _KeepAlivePageState createState() => _KeepAlivePageState();
}

class _KeepAlivePageState extends State<KeepAlivePage>
    with AutomaticKeepAliveClientMixin<KeepAlivePage> {
  @override
  Widget build(BuildContext context) {
    return InfiniteGridViewWidget();
  }

  @override
  bool get wantKeepAlive => true;
}

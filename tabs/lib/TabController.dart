import 'package:flutter/material.dart';

class TabControllerDemo extends StatefulWidget {
  @override
  _TabControllerDemoState createState() => _TabControllerDemoState();
}

class _TabControllerDemoState extends State<TabControllerDemo>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: 3,
      vsync: this,
      initialIndex: 0,
    );
    _tabController.addListener(() {
      /* 
      当Tab页面开始切换时，会调用该Listener，此时，indexIsChanging的值为true，说明页面正在切换，
      当Tab页面切换完成后，indexIsChanging变为false，这时显示一个SnackBar
      */
      if (_tabController.indexIsChanging == false) {
        SnackBar _snackBar = SnackBar(
          content: Text("Current tab index is ${_tabController.index}"),
        );
        /* 隐藏当前的SnackBar */
        _scaffoldKey.currentState.hideCurrentSnackBar();
        /* 显示新的SnackBar */
        _scaffoldKey.currentState.showSnackBar(_snackBar);
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text('TabController Demo'),
        bottom: TabBar(
          controller: _tabController,
          tabs: <Widget>[
            Tab(icon: Icon(Icons.directions_car)),
            Tab(icon: Icon(Icons.directions_transit)),
            Tab(icon: Icon(Icons.directions_bike)),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          Center(
            child: FlatButton(
              child: Text('Goto Tab 3'),
              onPressed: () {
                _tabController.animateTo(2);
              },
            ),
          ),
          Icon(Icons.directions_transit),
          Icon(Icons.directions_bike),
        ],
      ),
    );
  }
}

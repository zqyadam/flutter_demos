import 'package:flutter/material.dart';

enum Actions { Home, List, Notifications, Settings }

Color buttonActiveColor = Colors.red[100];

const double buttonActiveSize = 36;
const double buttonDefaultSize = 24;

class SimpleBottomAppBarPage extends StatefulWidget {
  @override
  _SimpleBottomAppBarPageState createState() => _SimpleBottomAppBarPageState();
}

class _SimpleBottomAppBarPageState extends State<SimpleBottomAppBarPage> {
  String _select = 'Nothing';

  Actions _currentSelect = Actions.Home;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple BottomAppBar'),
      ),
      body: Center(
        child: Text(_select),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            _select = 'FloatingActionButton: Add';
          });
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.blue,
        shape: CircularNotchedRectangle(),
        child: Container(
          height: 56,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.home,
                  color:
                      _currentSelect == Actions.Home ? buttonActiveColor : null,
                ),
                iconSize: _currentSelect == Actions.Home
                    ? buttonActiveSize
                    : buttonDefaultSize,
                onPressed: () {
                  setState(() {
                    _currentSelect = Actions.Home;
                    _select = "BottomAppBar Button: Home";
                  });
                },
                color: Colors.white,
              ),
              IconButton(
                icon: Icon(
                  Icons.list,
                  color:
                      _currentSelect == Actions.List ? buttonActiveColor : null,
                ),
                iconSize: _currentSelect == Actions.List
                    ? buttonActiveSize
                    : buttonDefaultSize,
                onPressed: () {
                  setState(() {
                    _currentSelect = Actions.List;
                    _select = "BottomAppBar Button: List";
                  });
                },
                color: Colors.white,
              ),
              SizedBox(
                width: 64,
              ),
              IconButton(
                icon: Icon(Icons.notifications,color:
                      _currentSelect == Actions.Notifications ? buttonActiveColor : null,),
                iconSize: _currentSelect == Actions.Notifications
                    ? buttonActiveSize
                    : buttonDefaultSize,
                onPressed: () {
                  setState(() {
                    _currentSelect = Actions.Notifications;
                    _select = "BottomAppBar Button: Notifications";
                  });
                },
                color: Colors.white,
              ),
              IconButton(
                icon: Icon(Icons.settings,color:
                      _currentSelect == Actions.Settings ? buttonActiveColor : null,),
                iconSize: _currentSelect == Actions.Settings
                    ? buttonActiveSize
                    : buttonDefaultSize,
                onPressed: () {
                  setState(() {
                    _currentSelect = Actions.Settings;
                    _select = "BottomAppBar Button: Settings";
                  });
                },
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

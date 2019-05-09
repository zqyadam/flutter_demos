import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Drawer Demo',
      home: Home(),
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
    return Scaffold(
      appBar: AppBar(
        title: Text('Drawer Demo'),
      ),
      drawer: _leftDrawer,
      endDrawer: _rightDrawer,
    );
  }

  get _leftDrawer => Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Row(
                children: <Widget>[
                  CircleAvatar(
                    radius: 32,
                    backgroundImage: NetworkImage(
                        'https://b-ssl.duitang.com/uploads/item/201901/27/20190127193643_gekci.jpg'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'zqyadam',
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Text(
                          'zqyadam@11.com',
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            ListTile(
              title: Text('首页'),
              leading: Icon(Icons.home),
              onTap: () {},
            ),
            ListTile(
              title: Text('历史记录'),
              leading: Icon(Icons.history),
              onTap: () {},
            ),
            ListTile(
              title: Text('离线缓存'),
              leading: Icon(Icons.cloud_download),
              onTap: () {},
            ),
            ListTile(
              title: Text('我的收藏'),
              leading: Icon(Icons.favorite),
              onTap: () {},
            ),
            ListTile(
              title: Text('稍后再看'),
              leading: Icon(Icons.watch_later),
              onTap: () {},
            ),
            Divider(
              color: Colors.black45,
            ),
            ListTile(
              title: Text('创作中心'),
              leading: Icon(Icons.create),
              onTap: () {},
            ),
            ListTile(
              title: Text('热门活动'),
              leading: Icon(Icons.flag),
              onTap: () {},
            ),
            Divider(
              color: Colors.black45,
            ),
            ListTile(
              title: Text('直播中心'),
              leading: Icon(Icons.live_tv),
              onTap: () {},
            ),
            ListTile(
              title: Text('我的订单'),
              leading: Icon(Icons.view_list),
              onTap: () {},
            ),
            ListTile(
              title: Text('设置'),
              leading: Icon(Icons.settings),
              onTap: () {},
            ),
            ListTile(
              title: Text('联系我们'),
              leading: Icon(Icons.dialer_sip),
              onTap: () {},
            ),
          ],
        ),
      );

  get _rightDrawer => Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://b-ssl.duitang.com/uploads/item/201901/27/20190127193643_gekci.jpg'),
              ),
              otherAccountsPictures: <Widget>[
                Image.network(
                    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1557420981952&di=a03de52ab8267cf1851d1cbbd2a7dcba&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201502%2F19%2F20150219214458_WzzHa.jpeg'),
                Image.network(
                    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1557420995779&di=c4759893aade2ecd7c01ff98cc85a168&imgtype=0&src=http%3A%2F%2Fdingyue.nosdn.127.net%2Fw3CbGlEB4Hi7sHIpjbXw7baPXuywszgM7FQe32Vc3Yeoh1538268003464.jpg'),
              ],
              accountEmail: Text('zqyadam@11.com'),
              accountName: Text('zqyadam'),
              onDetailsPressed: () {},
            ),
            ListTile(
              title: Text('首页'),
              leading: Icon(Icons.home),
              onTap: () {},
            ),
            ListTile(
              title: Text('历史记录'),
              leading: Icon(Icons.history),
              onTap: () {},
            ),
            ListTile(
              title: Text('离线缓存'),
              leading: Icon(Icons.cloud_download),
              onTap: () {},
            ),
            ListTile(
              title: Text('我的收藏'),
              leading: Icon(Icons.favorite),
              onTap: () {},
            ),
            ListTile(
              title: Text('稍后再看'),
              leading: Icon(Icons.watch_later),
              onTap: () {},
            ),
            Divider(
              color: Colors.black45,
            ),
            ListTile(
              title: Text('创作中心'),
              leading: Icon(Icons.create),
              onTap: () {},
            ),
            ListTile(
              title: Text('热门活动'),
              leading: Icon(Icons.flag),
              onTap: () {},
            ),
            Divider(
              color: Colors.black45,
            ),
            ListTile(
              title: Text('直播中心'),
              leading: Icon(Icons.live_tv),
              onTap: () {},
            ),
            ListTile(
              title: Text('我的订单'),
              leading: Icon(Icons.view_list),
              onTap: () {},
            ),
            ListTile(
              title: Text('设置'),
              leading: Icon(Icons.settings),
              onTap: () {},
            ),
            ListTile(
              title: Text('联系我们'),
              leading: Icon(Icons.dialer_sip),
              onTap: () {},
            ),
          ],
        ),
      );
}

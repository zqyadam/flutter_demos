import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Text('Home'),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text(
                'zozo',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              accountEmail: Text('zqyadam@qq.com'),
              currentAccountPicture: InkWell(
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1556038127027&di=35b919ea8a1a00554f2179ff761bbc69&imgtype=0&src=http%3A%2F%2Fimg3.duitang.com%2Fuploads%2Fblog%2F201504%2F03%2F20150403235853_ZtrsW.thumb.700_0.jpeg'),
                ),
                onTap: () {
                  print('头像被点击');
                  // AlertDialog(
                  //   title: Text('Avatar clicked'),
                  //   content: Text('头像被点击'),
                  // );
                },
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1556038856870&di=2b65b0bf343aabe16f632485d7195c16&imgtype=0&src=http%3A%2F%2Fimg.zcool.cn%2Fcommunity%2F01342c598889f700000021295d78b2.png'),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                        Colors.yellow[50].withOpacity(0.5),
                        BlendMode.hardLight)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

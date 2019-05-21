import 'package:cached_network_image/cached_network_image.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Cached Network Image",
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cached Network Image"),
      ),
      body: Center(
        child: CachedNetworkImage(
          imageUrl:
              'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1558278276738&di=1baa26b9285df04ca3bf8824db32b475&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201602%2F28%2F20160228112936_f8HRC.jpeg',
          placeholder: (context, url) => Image.memory(kTransparentImage),
          errorWidget: (context, url, error) => Icon(Icons.error),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:dio/dio.dart';



class InfiniteGridViewWidget extends StatefulWidget {
  @override
  _InfiniteGridViewWidgetState createState() => _InfiniteGridViewWidgetState();
}

class _InfiniteGridViewWidgetState extends State<InfiniteGridViewWidget> {
  List list = [];

  @override
  void initState() {
    super.initState();
    _retriveImages();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, childAspectRatio: 300 / 200),
      itemBuilder: (BuildContext context, int index) {
        if (index == list.length - 1 || list.length <= 0) {
          _retriveImages();
          return Container(
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
        return list[index];
      },
      itemCount: list.length,
    );
  }

  Future _retriveImages() async {
    const pageNum = 10;
    var page = (list.length ~/ pageNum) + 1;
    print(page);
    Dio dio = Dio();
    Response response;
    response = await dio
        .get('https://picsum.photos/v2/list?page=$page&limit=$pageNum');

    setState(() {
      var images = response.data
          .map((item) => Image.network(
                'https://picsum.photos/id/${item['id']}/150/100',
                fit: BoxFit.contain,
              ))
          .toList();
      list.addAll(images);
    });
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_swiper_plus/flutter_swiper_plus.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, home: CategoryPage() //调用
        );
  }
}

class CategoryPage extends StatefulWidget {
  @override
  _SwiperPageState createState() => _SwiperPageState();
}

class _SwiperPageState extends State<CategoryPage> {
  List<Map> imgList = [
    {
      "url":
          "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Flgn666.oss-cn-beijing.aliyuncs.com%2Fpublic%2Fcommunitynew%2Fimages%2Ffat-1613890798955333.png&refer=http%3A%2F%2Flgn666.oss-cn-beijing.aliyuncs.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1651043663&t=3e2368c3610fd0f2de06ecda25dc69fa"
    },
    {
      "url":
          "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fup.enterdesk.com%2Fedpic%2F74%2F8d%2Fa0%2F748da00c361664ede56c684717c1c822.jpg&refer=http%3A%2F%2Fup.enterdesk.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1651043663&t=aa19fff47b1cc0cccaff575fc353d8e8"
    },
    {
      "url":
          "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg95.699pic.com%2Fxsj%2F1m%2Ffv%2Fjc.jpg%21%2Ffw%2F700%2Fwatermark%2Furl%2FL3hzai93YXRlcl9kZXRhaWwyLnBuZw%2Falign%2Fsoutheast&refer=http%3A%2F%2Fimg95.699pic.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1651043663&t=ce153d3767c0a0c6e6c80e6976656c25"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: new Swiper(
        itemBuilder: (BuildContext context, int index) {
          return new Image.network(
            imgList[index]["url"],
            fit: BoxFit.fill,
          );
        },
        autoplay: true,
        itemCount: imgList.length, //循环遍历次数
        pagination: new SwiperPagination(), //配置分页器
        control: new SwiperControl(), //左右箭头
      ),
    );
  }
}

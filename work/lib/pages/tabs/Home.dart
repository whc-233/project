import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  //Flutter2.2.0之后需要注意把Key改为可空类型  {Key? key} 表示Key为可空类型
  HomePage({Key? key}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        home: Scaffold(
            body: Center(
                //使用这种方式直接获得居中位置
                child: Container(
          child: new Image.network(
            //图片链接
            "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fpic195.nipic.com%2Ffile%2F20181205%2F21511972_132342350000_2.jpg&refer=http%3A%2F%2Fpic195.nipic.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1651042317&t=34a8917ec0d0bc881d0784312a8c8265",
            //图片宽度和高度比
            //scale:1.0,
            width: 500,
            height: 800,
            fit: BoxFit.cover,
            repeat: ImageRepeat.repeat, //设置重复模式
            //以下做图片混合颜色设置
          ),
        ))));
  }
}

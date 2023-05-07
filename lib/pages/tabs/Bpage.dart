import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'BBpage.dart';

class Bpage extends StatefulWidget {
  static String tag = 'Bpage';

  @override
  State<Bpage> createState() => _BpageState();
}

class _BpageState extends State<Bpage> {
  @override
  Widget build(BuildContext context) {
    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0), //上下各添加16像素补白
      child: Material(
        borderRadius: BorderRadius.circular(30.0), // 圆角度
        shadowColor: Colors.lightBlueAccent.shade100, //阴影颜色
        elevation: 5.0, //浮动的距离
        child: MaterialButton(
          minWidth: 200.0,
          height: 42.0,
          onPressed: () {
            Navigator.of(context).pushNamed(BBpage.tag); //点击跳转界面
          },
          color: Color.fromARGB(255, 83, 219, 144), //按钮颜色
          child: Text(
            '已 支 付',
            style: TextStyle(color: Colors.white, fontSize: 20.0),
          ),
        ),
      ),
    );

    // ignore: prefer_const_constructors
    final jump = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text("普通二维码"),
        SizedBox(
          height: 20,
        ),
        QrImage(
          data: "这是普通二维码",
          size: 100,
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          //将这些组件全部放置在ListView中
          shrinkWrap: true, //内容适配
          padding: EdgeInsets.only(left: 24.0, right: 24.0), //左右填充24个像素块
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://t7.baidu.com/it/u=1469153347,135482855&fm=193&f=GIF"),
                      fit: BoxFit.cover)),
            ),
            jump,
            SizedBox(
              height: 30,
            ),
            loginButton
          ],
        ),
      ),
    );
  }
}

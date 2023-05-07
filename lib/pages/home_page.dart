import 'package:flutter/material.dart';
import 'tabs/Setting.dart';
import 'tabs/ImagePicker.dart';
import 'tabs/Apage.dart';
import 'tabs/Bpage.dart';
import 'tabs/BBpage.dart';
import 'tabs/Cpage.dart';

class home_page extends StatefulWidget {
  //Flutter2.2.0之后需要注意把Key改为可空类型  {Key? key} 表示Key为可空类型
  home_page({Key? key}) : super(key: key);

  static String tag = "home_page";

  _home_pageState createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  int _currentIndex = 0;
  List _pageList = [
    SettingPage(),
    ImagePickerPage(),
    Apage(),
    Bpage(),
    BBpage(),
    Cpage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("新婚快乐"),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 250, 196, 214),
      ),
      body: this._pageList[this._currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: this._currentIndex, //配置对应的索引值选中
        onTap: (int index) {
          setState(() {
            //改变状态
            this._currentIndex = index;
          });
        },
        iconSize: 36.0, //icon的大小
        fixedColor: Color.fromARGB(255, 243, 98, 88), //选中的颜色
        type: BottomNavigationBarType.fixed, //配置底部tabs可以有多个按钮
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.accessibility_new), label: "新人信息"),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_photo_alternate_outlined), label: "图片上传"),
          BottomNavigationBarItem(
              icon: Icon(Icons.adjust_sharp), label: "新人信息展示"),
          BottomNavigationBarItem(icon: Icon(Icons.adjust_sharp), label: "支付"),
          BottomNavigationBarItem(icon: Icon(Icons.adjust_sharp), label: "支付"),
          BottomNavigationBarItem(
              icon: Icon(Icons.delivery_dining_outlined), label: "宾客信息展示"),
        ],
      ),
    );
  }
}

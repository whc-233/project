import 'package:flutter/material.dart';
import 'pages/login_page.dart';
import 'pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  //routes需要Map<String, WidgetBuilder>类型参数，所以这里定义了一个这个类型的常量，将刚才两个页面添加进去
  final routes = <String, WidgetBuilder>{
    LoginPage.tag: (context) => LoginPage(),
    home_page.tag: (context) => home_page(),
  };

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: '登录Demo',
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: LoginPage(),
      routes: routes,
    );
  }
}

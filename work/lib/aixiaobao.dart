import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: todo
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("flutterdemo")),
        body: const HomeContent(),
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  const HomeContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: todo
    // TODO: implement build
    // ignore: dead_code, dead_code, dead_code, prefer_const_literals_to_create_immutables
    return ListView(padding: const EdgeInsets.all(10), children: <Widget>[
      const ListTile(
        leading: Icon(
          Icons.home,
          size: 30,
          color: Color.fromARGB(255, 250, 196, 214),
        ),
        title: Text(
          "我爱小宝",
          style: TextStyle(fontSize: 24, color: Colors.pink),
        ),
        subtitle: Text("小宝爱我"),
      ),
    ]);
  }
}

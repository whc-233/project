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
        body: Layoutdemo(),
      ),
    );
  }
}

class Layoutdemo extends StatelessWidget {
  List<Widget> _getListData() {
    // ignore: deprecated_member_use
    List<Widget> list = [];
    for (var i = 1; i < 52; i++) {
      list.add(Container(
        alignment: Alignment.center,
        child: Text(
          "每天和小宝亲$i次",
          style: const TextStyle(
              color: Color.fromARGB(
                255,
                255,
                196,
                214,
              ),
              fontSize: 20),
        ),
        color: Colors.white,
      ));
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      
      children: this._getListData(),
    );
  }
}

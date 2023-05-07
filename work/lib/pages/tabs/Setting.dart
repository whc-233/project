import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  //Flutter2.2.0之后需要注意把Key改为可空类型  {Key? key} 表示Key为可空类型
  SettingPage({Key? key}) : super(key: key);

  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  var _username = new TextEditingController();
  var _password;

  @override
  void initState() {
    super.initState();
    _username.text = "初始值";
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Padding(
            padding: EdgeInsets.all(100),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 100,
                ),
                TextField(
                    decoration: InputDecoration(
                        hintText: "请输入宾客姓名", border: OutlineInputBorder())),
                SizedBox(height: 20),
                TextField(
                    decoration: InputDecoration(
                        hintText: "请输入宾客手机号", border: OutlineInputBorder())),
                SizedBox(
                  height: 20,
                ),
                TextField(
                    decoration: InputDecoration(
                        hintText: "请输入参加婚礼人数", border: OutlineInputBorder()),
                    controller: _username,
                    onChanged: (value) {
                      setState(() {
                        _username.text = value;
                      });
                    }),
                SizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(
                      hintText: "请输入宾客手机号", border: OutlineInputBorder()),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: RaisedButton(
                    child: Text("提交信息"),
                    onPressed: () {
                      print(this._username.text);
                    },
                    color: Color.fromARGB(255, 226, 73, 180),
                    textColor: Color.fromARGB(66, 255, 255, 255),
                  ),
                )
              ],
            )));
  }
}

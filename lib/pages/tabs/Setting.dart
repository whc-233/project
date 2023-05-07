import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  //Flutter2.2.0之后需要注意把Key改为可空类型  {Key? key} 表示Key为可空类型
  SettingPage({Key? key}) : super(key: key);

  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  var _name1;
  var _name2;
  var _phone1;
  var _phone2;
  var _time;
  var _place;

  _upload() async {
    var invitation = FormData.fromMap({
      "groom": _name1,
      "bride": _name2,
      "groomphone": _phone1,
      "bridephone": _phone2,
      "marrytime": _time,
      "marrylocation": _place,
      // 'file': await MultipartFile.fromFile('./text.txt',filename: 'upload.txt')
    });

    var response = await Dio().post(
        "http://wemui.natapp1.cc/Merry/insertInvitation",
        data: invitation);
    print(response);
    print(invitation);

    Navigator.pushNamed(context, '/photo');
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Padding(
            padding: EdgeInsets.all(0),
            child: Column(children: <Widget>[
              Expanded(
                  child: Stack(children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201812%2F06%2F20181206224912_GrzMd.jpeg&refer=http%3A%2F%2Fb-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1652269894&t=0fcdd86969c1fb9ecd85e92f52a649a4"),
                          fit: BoxFit.cover)),
                ),
                Container(
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(
                          height: 30,
                        ),
                        TextField(
                            decoration: InputDecoration(
                                hintText: "请输入新人姓名1",
                                border: OutlineInputBorder()),
                            onChanged: (value) {
                              setState(() {
                                this._name1 = value;
                              });
                            }),
                        SizedBox(height: 20),
                        TextField(
                            decoration: InputDecoration(
                                hintText: "请输入新人姓名2",
                                border: OutlineInputBorder()),
                            onChanged: (value) {
                              setState(() {
                                this._name2 = value;
                              });
                            }),
                        SizedBox(height: 20),
                        TextField(
                            decoration: InputDecoration(
                                hintText: "请输入新人电话1",
                                border: OutlineInputBorder()),
                            onChanged: (value) {
                              setState(() {
                                this._phone1 = value;
                              });
                            }),
                        SizedBox(height: 20),
                        TextField(
                            decoration: InputDecoration(
                                hintText: "请输入新人电话2",
                                border: OutlineInputBorder()),
                            onChanged: (value) {
                              setState(() {
                                this._phone2 = value;
                              });
                            }),
                        SizedBox(
                          height: 20,
                        ),
                        TextField(
                            decoration: InputDecoration(
                                hintText: "请输入婚礼时间",
                                border: OutlineInputBorder()),
                            onChanged: (value) {
                              setState(() {
                                this._time = value;
                              });
                            }),
                        SizedBox(height: 20),
                        TextField(
                            decoration: InputDecoration(
                                hintText: "请输入婚礼地点",
                                border: OutlineInputBorder()),
                            onChanged: (value) {
                              setState(() {
                                this._place = value;
                              });
                            }),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          child: RaisedButton(
                            child: Text("提交信息"),
                            onPressed: _upload,
                            color: Color.fromARGB(255, 240, 125, 205),
                            textColor: Color.fromARGB(66, 56, 10, 10),
                          ),
                        )
                      ],
                    ))
              ]))
            ])));
  }
}

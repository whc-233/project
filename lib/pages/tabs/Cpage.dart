import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class Cpage extends StatefulWidget {
  Cpage({Key? key}) : super(key: key);

  @override
  State<Cpage> createState() => _CpageState();
}
class _CpageState extends State<Cpage> {
  late String _name;
  late String _num;
  late String _phone;
  late String _wish;

  _getData() async {
    var response = await Dio().get(
      "http://wemui.natapp1.cc/Merry/getOneGuest",
    );
    print(response.data);
    setState(() {
      this._name = response.data["data"]['gName'];
      this._phone = response.data["data"]['gPhone'];
      this._num = response.data["data"]['gNumber'];
      this._wish = response.data["data"]['gWish'];
    });
  }

  @override
  void initState() {
    super.initState();
    this._getData();
  }

  @override
  Widget build(BuildContext context) {
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
                            "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201901%2F04%2F20190104103526_ilkdg.thumb.700_0.jpeg&refer=http%3A%2F%2Fb-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1652269828&t=41e833bc6bfea578ac543e90f89375b8"),
                        fit: BoxFit.cover),
                  ),
                  child: Center(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(height: 30),
                          Container(
                            child: Text(
                              "宾客信息",
                              style: TextStyle(
                                fontSize: 40,
                                color: Color.fromARGB(255, 43, 18, 26),
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                            child: Text(
                              _name,
                              style: TextStyle(
                                fontSize: 20,
                                color: Color.fromARGB(255, 43, 18, 26),
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                            child: Text(
                              _phone,
                              style: TextStyle(
                                fontSize: 20,
                                color: Color.fromARGB(255, 43, 18, 26),
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                            child: Text(
                              _num,
                              style: TextStyle(
                                fontSize: 20,
                                color: Color.fromARGB(255, 43, 18, 26),
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                            child: Text(
                              _wish,
                              style: TextStyle(
                                fontSize: 20,
                                color: Color.fromARGB(255, 43, 18, 26),
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ]),
                  ),
                ),
              ]))
            ])));
  }
}

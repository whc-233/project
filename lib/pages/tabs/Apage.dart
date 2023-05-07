import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class Apage extends StatefulWidget {
  Apage({Key? key}) : super(key: key);

  @override
  State<Apage> createState() => _ApageState();
}

class _ApageState extends State<Apage> {
  late String _name1;
  late String _name2;
  late String _num1;
  late String _num2;
  late String _time;
  late String _location;

  _getData() async {
    var response = await Dio().get(
      "http://wemui.natapp1.cc/Merry/getOneGuest",
    );
    print(response.data);
    setState(() {
      this._time = response.data["data"]['marrytime'];
      this._name1 = response.data["data"]['groom'];
      this._location = response.data["data"]['marrylocation'];
      this._name2 = response.data["data"]['bridge'];
      this._num1 = response.data["data"]['groomphone'];
      this._num2 = response.data["data"]['bridgephone'];
    });
  }

  @override
  void initState() {
    // TODO: implement initState
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
                          Text(
                            "新人信息",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 30,
                                color: Color.fromARGB(255, 201, 103, 134)),
                          ),
                          SizedBox(height: 30),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                _name1,
                                style: TextStyle(
                                    color: Colors.pink, fontSize: 20.0),
                                textAlign: TextAlign.center,
                              ),
                              Container(
                                width: 50.0,
                                height: 50.0,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage(
                                        "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.tukuppt.com%2Fpng_preview%2F00%2F46%2F40%2FQDwVvE5XFh.jpg%21%2Ffw%2F780&refer=http%3A%2F%2Fimg.tukuppt.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1652257097&t=411e907e730170089dfb6cf3928802dc"),
                                  ),
                                ),
                              ),
                              Text(
                                _name2,
                                style: TextStyle(
                                    color: Colors.pink, fontSize: 20.0),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          Container(
                            child: Text(
                              "新郎电话:$_num1",
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
                              "新娘电话:$_num2",
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
                              "时间:$_time",
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
                              "地址:$_location",
                              style: TextStyle(
                                fontSize: 20,
                                color: Color.fromARGB(255, 43, 18, 26),
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          SizedBox(height: 30),
                          
                        ]),
                  ),
                ),
              ]))
            ])));
  }
}

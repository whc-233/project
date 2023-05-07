import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class BBpage extends StatefulWidget {
  static String tag = "BBpage";

  @override
  State<BBpage> createState() => _BBpageState();
}

class _BBpageState extends State<BBpage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center, //居中
      children: <Widget>[
        Text("宾客二维码"),
        SizedBox(
          height: 20,
        ),
        QrImage(
          data: "1",
          size: 100,
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}

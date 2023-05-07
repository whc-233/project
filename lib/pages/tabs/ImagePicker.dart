import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:dio/dio.dart';

class ImagePickerPage extends StatefulWidget {
  ImagePickerPage({Key? key}) : super(key: key);
  @override
  _ImagePickerState createState() => _ImagePickerState();
}

class _ImagePickerState extends State<ImagePickerPage> {
  final picker = ImagePicker();

  PickedFile? _imageFile;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ElevatedButton(
            onPressed: _takePhoto,
            child: Text("拍照"),
          ),
          ElevatedButton(
            onPressed: _openGallery,
            child: Text("选择图库照片"),
          ),
          this._imageFile == null
              ? Text("请选择图片")
              : Image.file(File(this._imageFile!.path))
        ],
      ),
    ));
  }

  /*拍照*/
  _takePhoto() async {
    PickedFile? pickedFile = await picker.getImage(
        source: ImageSource.camera, maxWidth: 600, maxHeight: 600);
    if (pickedFile != null) {
      //  print(pickedFile.path);
      //  print(File(pickedFile.path));
      setState(() {
        this._imageFile = pickedFile;
      });
      //图片上传
      this._uploadFile(pickedFile.path);
    }
  }

  /*相册*/
  _openGallery() async {
    PickedFile? pickedFile = await picker.getImage(
        source: ImageSource.gallery, maxWidth: 600, maxHeight: 600);
    if (pickedFile != null) {
      //  print(pickedFile.path);
      //  print(File(pickedFile.path));
      setState(() {
        this._imageFile = pickedFile;
      });
      //图片上传
      this._uploadFile(pickedFile.path);
    }
  }

  /*上传文件*/
  _uploadFile(String imagePath) async {
    var img = FormData.fromMap({
      'marryId': 1,
      'img': await MultipartFile.fromFile(imagePath, filename: 'aaa.png'),
    });

    var response =
        await Dio().post('http://wemui.natapp1.cc/Merry/testUp', data: img);

    print(response);
  }
}

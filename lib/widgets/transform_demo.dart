import 'package:flutter/material.dart';

///可以对子widget 进行 matrix 平移 缩放 旋转 变换
class TransformDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('TransformDemo'),
        ),
        body: Center(
          child: Container(
            color: Colors.black,
            child: Transform(
              transform: Matrix4.skewY(0.3),
              alignment: Alignment.topRight,
              child: Container(
                padding: const EdgeInsets.all(8),
                color: Colors.deepOrange,
                child: const Text('Apartment for rent!'),
              ),
            ),
          ),
        ));
  }
}

void main() {
  runApp(MaterialApp(
    home: TransformDemo(),
  ));
}

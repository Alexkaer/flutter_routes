import 'package:flutter/material.dart';

/// 可以在其子widget绘制前(或后)绘制一个装饰Decoration（如背景、边框、渐变等）
class DecoratedBoxDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('DecoratedBoxDemo'),
        actions: <Widget>[
          CircularProgressIndicator(
            strokeWidth: 3,
            valueColor: AlwaysStoppedAnimation(Colors.green),
          ),
        ],
      ),
      body: Center(
        child: DecoratedBox(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Colors.red, Colors.orange]),
            borderRadius: BorderRadius.all(Radius.circular(5)),
            boxShadow: [
              BoxShadow(
                  color: Colors.black54,
                  offset: Offset(2.0, 2.0),
                  blurRadius: 4.0),
            ],
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 80, vertical: 16),
            child: Text(
              "Submit",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: DecoratedBoxDemo(),
  ));
}

import 'package:flutter/material.dart';

class TextShowDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('TextShowDemo'),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: <Widget>[
          Divider(
            height: 200,
            color: Colors.red,
          ),
          Text(
            'text ellipsis show' * 4,
            overflow: TextOverflow.ellipsis,
          ),
          Divider(
            height: 200,
            color: Colors.red,
          ),
          Text(
            'text scale factor',
            textScaleFactor: 2,
          ),
          Divider(
            height: 200,
            color: Colors.red,
          ),
          Text(
            ' Roboto-Regular 字体',
            style: TextStyle(
              color: Colors.orangeAccent,
              fontSize: 20,
              height: 1.2,
              fontFamily: 'Roboto',
              background: Paint()..color = Colors.blue,
              decoration: TextDecoration.underline,
              decorationStyle: TextDecorationStyle.dotted,
            ),
          ),
          Text(
            '进化娃娃字,看看怎么样。。hello',
            style: TextStyle(
              color: Colors.orangeAccent,
              fontSize: 20,
              height: 1.2,
              fontFamily: 'Wawati',
            ),
          ),
          Divider(
            height: 200,
            color: Colors.red,
          ),
          Text.rich(TextSpan(children: [
            TextSpan(text: 'Home:'),
            TextSpan(
              text: "https://flutterchina.club",
              style: TextStyle(color: Colors.orange),
            ),
          ])),
          Divider(
            height: 200,
            color: Colors.red,
          ),
          DefaultTextStyle(
            //1.设置文本默认样式
            style: TextStyle(
              color: Colors.red,
              fontSize: 20.0,
            ),
            textAlign: TextAlign.start,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("hello world"),
                Text("I am Jack"),
                Text(
                  "I am Jack",
                  style: TextStyle(
                      inherit: false, //2.不继承默认样式
                      color: Colors.grey),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}

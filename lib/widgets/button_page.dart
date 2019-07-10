import 'package:flutter/material.dart';

class ButtonShowDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('ButtonShowDemo'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              onPressed: () {},
              child: Text('RaisedButton'),
            ),
            FlatButton(
              onPressed: () {},
              child: Text('FlatButton'),
              color: Colors.red,
            ),
            OutlineButton(
              onPressed: () {},
              child: Text('OutlineButton'),
            ),
            IconButton(
              icon: Icon(Icons.star),
              onPressed: () {},
              tooltip: 'IconButton',
            ),
            RaisedButton(
              child: Text('Self Define Button'),
              color: Colors.blue,
              highlightColor: Colors.blue[700],
              colorBrightness: Brightness.dark,
              splashColor: Colors.grey,
              onPressed: () {},
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
            )
          ],
        ),
      ),
    );
  }
}

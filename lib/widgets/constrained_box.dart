import 'package:flutter/material.dart';

/// 用于对子widget添加额外的约束 minHeight maxHeight minWidth maxWidth  tight()  expand()
class ConstrainedBoxDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('ConstrainedBoxDemo'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ConstrainedBox(
              constraints:
                  BoxConstraints(minWidth: double.infinity, minHeight: 100),
              child: Container(
                height: 10,
                child:
                    DecoratedBox(decoration: BoxDecoration(color: Colors.red)),
              ),
            ),
            ConstrainedBox(
              constraints: BoxConstraints.tight(Size(100, 100)),
              child:
                  DecoratedBox(decoration: BoxDecoration(color: Colors.blue)),
            ),
            Expanded(
              flex: 1,
              child: ConstrainedBox(
                  constraints: BoxConstraints.loose(Size(400, 400)),
                  child: Container(
                    width: 200,
                    height: 400,
                    child: DecoratedBox(
                        decoration: BoxDecoration(color: Colors.green)),
                  )),
            ),
          ],
        ));
  }
}

void main() {
  runApp(MaterialApp(
    home: ConstrainedBoxDemo(),
  ));
}

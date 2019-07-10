import 'package:flutter/material.dart';
import 'constrained_box.dart';
import 'decorated_box.dart';
import 'transform_demo.dart';
import 'text_page.dart';
import 'button_page.dart';
import 'image_and_icon.dart';

class WidgetsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('WidgetsPage'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('constrained box'),
            trailing: Icon(Icons.navigate_next),
            onTap: () => Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) {
              return ConstrainedBoxDemo();
            })),
          ),
          ListTile(
            title: Text('decorated box'),
            trailing: Icon(Icons.navigate_next),
            onTap: () => Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) {
              return DecoratedBoxDemo();
            })),
          ),
          ListTile(
            title: Text('transform box'),
            trailing: Icon(Icons.navigate_next),
            onTap: () => Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) {
              return TransformDemo();
            })),
          ),
          ListTile(
            title: Text('TextShowDemo'),
            trailing: Icon(Icons.navigate_next),
            onTap: () => Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) {
              return TextShowDemo();
            })),
          ),
          ListTile(
            title: Text('ButtonShowDemo'),
            trailing: Icon(Icons.navigate_next),
            onTap: () => Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) {
              return ButtonShowDemo();
            })),
          ),
          ListTile(
            title: Text('ImageAndIcon'),
            trailing: Icon(Icons.navigate_next),
            onTap: () => Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) {
              return ImageAndIcon();
            })),
          ),
        ],
      ),
    );
  }
}

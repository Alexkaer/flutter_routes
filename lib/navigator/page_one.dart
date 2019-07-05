import 'package:flutter/material.dart';
import 'page_two.dart';
import 'page_three.dart';

class NavigatorPageOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NavigatorPageOne'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('PUSH'),
            trailing: Icon(Icons.navigate_next),
            onTap: () => Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => NavigatorPageTwo())),
          ),
          ListTile(
              title: Text('PUSH WITH NAME'),
              trailing: Icon(Icons.navigate_next),
              onTap: () => Navigator.of(context).pushNamed('page_two')),
          ListTile(
            title: Text('PUSH WITH NAME PARAMS'),
            trailing: Icon(Icons.navigate_next),
            onTap: () => Navigator.of(context)
                .pushNamed('page_params', arguments: 'I am a param'),
          ),
          ListTile(
              title: Text('PUSH REPLACEMENT'),
              trailing: Icon(Icons.navigate_next),
              onTap: () => Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                      builder: (context) => NavigatorPageThree()))),
          ListTile(
              title: Text('PUSH REPLACEMENT NAMED'),
              trailing: Icon(Icons.navigate_next),
              onTap: () =>
                  Navigator.of(context).pushReplacementNamed('page_three')),
          ListTile(
            title: Text('POP'),
            trailing: Icon(Icons.navigate_next),
            onTap: () => Navigator.of(context).pop(),
          ),
        ],
      ),
    );
  }
}

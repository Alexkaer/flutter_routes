import 'package:flutter/material.dart';

class NavigatorPageThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('NavigatorPageThree'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.of(context)
            .pushNamed('page_params', arguments: 'params from page three...'),
        child: Icon(Icons.forward),
      ),
    );
  }
}

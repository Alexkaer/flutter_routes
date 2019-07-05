import 'package:flutter/material.dart';

class NavigatorPageTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('NavigatorPageTwo'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.of(context).pushNamed('page_three'),
        child: Icon(Icons.forward),
      ),
    );
  }
}

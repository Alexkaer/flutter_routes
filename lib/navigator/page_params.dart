import 'package:flutter/material.dart';

class PageWithParams extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final params = ModalRoute.of(context).settings.arguments;
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('PageWithParams'),
      ),
      body: Center(
        child: Text(params),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () =>
            Navigator.of(context).popUntil(ModalRoute.withName('page_one')),
        child: Icon(Icons.arrow_back),
      ),
    );
  }
}

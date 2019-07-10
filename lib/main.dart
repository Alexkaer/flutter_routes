import './widgets/widgets_page.dart';
import 'package:flutter/material.dart';
import './navigator/page_one.dart';
import './navigator/page_two.dart';
import './navigator/page_three.dart';
import './navigator/page_params.dart';
import 'package:flutter/rendering.dart';

void main() {
  debugPaintSizeEnabled = false;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
//      showPerformanceOverlay: true,
      title: 'Home Page',
      theme: ThemeData.light(),
      home: MyHomePage('Home Page'),
      routes: {
        'page_two': (context) => NavigatorPageTwo(),
        'page_three': (context) => NavigatorPageThree(),
        'page_params': (context) => PageWithParams(),
        'page_one': (context) => NavigatorPageOne(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage(this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('Navigator'),
            contentPadding: const EdgeInsets.all(8.0),
            trailing: const Icon(Icons.navigate_next),
            leading: const Icon(Icons.star),
            onTap: () =>
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => NavigatorPageOne(),
                    settings: RouteSettings(name: 'page_one'))),
          ),
          ListTile(
            contentPadding: const EdgeInsets.all(8),
            leading: const Icon(Icons.star),
            title: const Text('Widgets'),
            trailing: const Icon(Icons.navigate_next),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return WidgetsPage();
              }));
            },
          ),
        ],
      ),
    );
  }
}

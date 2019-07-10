import 'package:flutter/material.dart';

class ImageAndIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('ImageAndButton'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'image from assets:',
              textAlign: TextAlign.start,
            ),
            Image.asset('./images/wallhaven.jpg'),
            Image.asset(
              './images/wallhaven.jpg',
              width: 200,
            ),
            Image.asset(
              './images/wallhaven.jpg',
              width: 100,
              height: 200,
              fit: BoxFit.fill,
              repeat: ImageRepeat.repeatY,
            ),
            Text(
              'image from network:',
              textAlign: TextAlign.start,
            ),
            Image.network(
              "https://avatars2.githubusercontent.com/u/20411648?s=460&v=4",
            ),
            Image.network(
              'https://avatars2.githubusercontent.com/u/20411648?s=460&v=4',
              width: 200,
            ),
            Text(
              'icons from material:',
              textAlign: TextAlign.start,
            ),
            Icon(
              Icons.star,
              color: Colors.green,
            ),
            Icon(
              Icons.weekend,
              color: Colors.red,
            ),
            Icon(Icons.web),
          ],
        ),
      ),
    );
  }
}

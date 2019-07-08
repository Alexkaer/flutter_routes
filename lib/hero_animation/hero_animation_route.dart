import 'package:flutter/material.dart';

class HeroAnimationRoute extends StatefulWidget {
  @override
  HeroAnimationRouteState createState() => new HeroAnimationRouteState();
}

class HeroAnimationRouteState extends State<HeroAnimationRoute> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('HeroAnimationRoute'),
      ),
      body: Container(
        alignment: Alignment.topCenter,
        child: InkWell(
          child: Hero(
            tag: 'avatar',
            child: Image.asset(
              "images/wallhaven.jpg",
              width: 100,
              height: 100,
            ),
          ),
          onTap: () {
            Navigator.of(context).push(PageRouteBuilder(
                pageBuilder: (context, animation, secondaryAnimation) {
              return FadeTransition(
                opacity: animation,
                child: Scaffold(
                  appBar: AppBar(
                    title: Text('HeroAnimationRouteB'),
                  ),
                  body: HeroAnimationRouteB(),
                ),
              );
            }));
          },
        ),
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  void didUpdateWidget(HeroAnimationRoute oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }
}

class HeroAnimationRouteB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Hero(
        tag: "avatar", //唯一标记，前后两个路由页Hero的tag必须相同
        child: Image.asset("images/wallhaven.jpg"),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: HeroAnimationRoute(),
  ));
}

import 'package:flutter/material.dart';

class TextFieldDemo extends StatefulWidget {
  @override
  State createState() => TextFieldState();
}

class TextFieldState extends State<TextFieldDemo> {
  final FocusNode node1 = FocusNode();
  final FocusNode node2 = FocusNode();
  FocusScopeNode scopeNode;
  final TextEditingController _controller = TextEditingController();
  var inputUserName = '输入的用户名';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('TextFieldDemo'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _controller,
              focusNode: node1,
              autofocus: true,
              decoration: InputDecoration(
                labelText: '用户名',
                hintText: '请输入用户名',
                prefixIcon: Icon(Icons.person),
              ),
            ),
            TextField(
              focusNode: node2,
              autofocus: false,
              decoration: InputDecoration(
                labelText: '密码',
                hintText: '请输入密码',
                prefixIcon: Icon(Icons.lock),
              ),
              obscureText: true,
            ),
            RaisedButton(
              onPressed: () {
                if (scopeNode == null) {
                  scopeNode = FocusScope.of(context);
                }
                scopeNode.requestFocus(node2);
              },
              child: Text('切换焦点到密码框'),
            ),
            RaisedButton(
              onPressed: () {
                if (scopeNode == null) {
                  scopeNode = FocusScope.of(context);
                }
                scopeNode.requestFocus(node1);
              },
              child: Text('切换焦点到用户名'),
            ),
            RaisedButton(
              onPressed: () {
                node1.unfocus();
                node2.unfocus();
              },
              child: Text('隐藏键盘'),
            ),
            Text(
              inputUserName,
              style: TextStyle(
                color: Colors.blue,
                fontSize: 24,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      setState(() {
        inputUserName = _controller.text;
      });
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  void didUpdateWidget(oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }
}

import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<MyApp> {

  final GlobalKey<ScaffoldState> _scaffoldState = new GlobalKey<ScaffoldState>();

  void _showBar() {
    _scaffoldState.currentState.showSnackBar(new SnackBar(content: new Text('Hello world')));
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        key: _scaffoldState,
        appBar: new AppBar(
          title: new Text('Hello World'),
        ),
        body: new Container(
          padding: new EdgeInsets.all(32.0),
          child: new Center(
            child: new Column(
              children: <Widget>[
                new Text('Add Widgets here'),
                new RaisedButton(onPressed: _showBar, child: new Text('Click me'),)
              ],
            ),
          ),
        ));
  }
}

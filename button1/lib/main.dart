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

enum Answers { YES, NO, MAYBE }

class _State extends State<MyApp> {

  TextEditingController _user = new TextEditingController();
  TextEditingController _pass = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('Hello World'),
        ),
        body: new Container(
          padding: new EdgeInsets.all(32.0),
          child: new Center(
            child: new Column(
              children: <Widget>[
                new Row(
                  children: <Widget>[
                    new Text('Please Login'),
                    new Row(
                      children: <Widget>[
                        new Text('Username'),
                        new Expanded(child: new TextField(controller: _user,),)
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ));
  }
}

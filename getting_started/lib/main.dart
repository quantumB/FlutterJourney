import 'package:flutter/material.dart';

void main() => runApp(new GettingStartedApp());

class GettingStartedApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Getting Started Title",
      home: new Scaffold(
        appBar: new AppBar(
          title: new Center(
            child: new Text("Welcome to Flutter"),
          )
        ),
        body: new Center(
          child: new HomeWidget(),
        )
      )
    );
  }
}

class HomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new Center(
        child: Text("Hey Berna", style: new TextStyle(fontSize: 24.0,))
      ),
    );
  }
}
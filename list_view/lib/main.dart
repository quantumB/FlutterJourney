import 'package:flutter/material.dart';

void main() => runApp(ListWidget());

class ListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'Welcome to Flutter',
        home: Scaffold(
          appBar: AppBar(
            title: Text('Welcome to Flutter'),
          ),
          body: Center(
            child: Text('Initial'),
          ),
        ));
  }
}

import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: JePage(),
      ),
    );

class JePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[300],
      appBar: AppBar(
        backgroundColor: Colors.black45,
        title: Text('Jerry Emotions'),
      ),
      body: Je(),
    );
  }
}

class Je extends StatefulWidget {
  @override
  _JeState createState() => _JeState();
}

class _JeState extends State<Je> {
  int number = 5;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
          onPressed: () {
            setState(() {
              number = Random().nextInt(5) + 1;
            });
          },
          child: Image.asset('images/$number.png')),
    );
  }
}

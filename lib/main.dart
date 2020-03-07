import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class BallPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(
        title: Text("Ask Me Anything- AMA"),
        backgroundColor: Colors.blue[800],
      ),
      body: Ball(),
    ));
  }
}

class _BallState extends State<Ball> {
  int ballNumber = 1;

  void returnRandom() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: () {
          print(ballNumber);
          returnRandom();
        },
        child: Image.asset('images/ball$ballNumber.png'),
      ),
    );
  }
}

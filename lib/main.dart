import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
          home: Scaffold(
            backgroundColor: Colors.lightBlueAccent,
        appBar: AppBar(
          title: Title(
            title: 'title',
            color: Colors.blue,
            child: Text('Ask me anything'),
          ),
        ),
        body: SafeArea(child: MagicBalls()),
      )),
    );

class MagicBalls extends StatefulWidget {
  @override
  _MagicBallsState createState() => _MagicBallsState();
}

class _MagicBallsState extends State<MagicBalls> {
  int ball = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          FlatButton(
            onPressed: (){
              setState(() {
                var random = new Random();
                ball = random.nextInt(5)+1;
              });
              print(ball);
            },
            child: Image.asset('images/ball$ball.png'),
          ),
        ],
      ),
    );
  }
}

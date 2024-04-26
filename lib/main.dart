import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const BallPage());
}

class BallPage extends StatelessWidget {
  const BallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: const Center(
              child: Text(
            'Magic Ball',
            style: TextStyle(
                fontFamily: 'Pacifico', fontSize: 32.0, color: Colors.white),
          )),
          backgroundColor: Colors.blue.shade900,
        ),
        body: Ball(),
      ),
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({super.key});

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNo = 0;
  String noun = '';
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Ask me a question and touch the Ball',
            style: TextStyle(
                fontFamily: 'Pacifico', fontSize: 40.0, color: Colors.white),
          ),
        ),
        Expanded(
            flex: 0,
            child: TextButton(
                onPressed: () {
                  setState(() {
                    ballNo = Random().nextInt(5) + 1;
                  });
                },
                child: Image.asset('images/ball$ballNo.png'))),
      ],
    ));
  }
}

import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftSideNumber = 1;
  int rightSideNumber = 1;
  void changeDiceFace() {
    leftSideNumber = Random().nextInt(6) + 1;
    rightSideNumber = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              child: Image.asset('images/dice$leftSideNumber.png'),
              onPressed: () {
                setState(() {
                  changeDiceFace();
                });
              },
            ),
          ),
          Expanded(
            child: TextButton(
              child: Image.asset('images/dice$rightSideNumber.png'),
              onPressed: () {
                setState(() {
                  changeDiceFace();
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}

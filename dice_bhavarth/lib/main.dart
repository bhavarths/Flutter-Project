import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red[800],
        appBar: AppBar(
          title: Center(
            child: Text(
              'Dicee',
              style: TextStyle(color: Colors.white, fontSize: 26.0),
            ),
          ),
          backgroundColor: Colors.red[800],
        ),
        body: Dicepage(),
      ),
    ),
  );
}
class Dicepage extends StatefulWidget {
  const Dicepage({super.key});
  @override
  State<Dicepage> createState() => _DicepageState();
}
class _DicepageState extends State<Dicepage> {
  int leftDiceno = 1;
  int rightDiceno = 1;
  void changeDiceFace() {
    setState(() {
      leftDiceno = Random().nextInt(6) + 1;
      rightDiceno = Random().nextInt(6) + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: MaterialButton(
              onPressed: () {
                changeDiceFace();
              },
              child: Image.asset('images/dice$leftDiceno.png'),
            ),
          ),
          Expanded(
            child: MaterialButton(
              onPressed: () {
                changeDiceFace();
              },
              child: Image.asset('images/dice$rightDiceno.png'),
            ),
          )
        ],
      ),
    );
  }
}
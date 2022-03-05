import 'package:flutter/material.dart';

import 'QuestionText.dart';

void main() => runApp(QuizApp());

class QuizApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.purple[100],
      appBar: AppBar(
          backgroundColor: Colors.pinkAccent[700],
          title: Center(
              child: Text('Harry Potter Quiz',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Harry P',
                      fontSize: 50,
                      fontWeight: FontWeight.normal,
                      color: Colors.pink[50])))),
      body: QuestionText(),
    ));
  }
}

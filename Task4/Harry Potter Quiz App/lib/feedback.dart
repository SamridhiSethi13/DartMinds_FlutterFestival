import 'package:flutter/material.dart';

class FeedBack extends StatefulWidget {
  const FeedBack({ Key? key }) : super(key: key);

  @override
  State<FeedBack> createState() => _FeedBackState();
}

class _FeedBackState extends State<FeedBack> {
  double _currentSliderValue = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              'How many stars will you give us?',
              style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Harry P',
              ),
              textAlign: TextAlign.center,
            ),
            Slider(
              inactiveColor: Colors.white,
              activeColor: Colors.pinkAccent[700],
              value: _currentSliderValue,
              max: 5,
              divisions: 5,
              label: _currentSliderValue.round().toString(),
              onChanged: (double value) {
                setState(() {
                  _currentSliderValue = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
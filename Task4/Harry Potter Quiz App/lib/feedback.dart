import 'package:flutter/material.dart';

class FeedBack extends StatefulWidget {
  const FeedBack({ Key? key }) : super(key: key);

  @override
  State<FeedBack> createState() => _FeedBackState();
}

class _FeedBackState extends State<FeedBack> {
  double _currentSliderValue = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text('Please give your feedback !'),
            Slider(
              value: _currentSliderValue,
              max: 100,
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
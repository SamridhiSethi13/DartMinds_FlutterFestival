import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int _sum;
  const Result(this._sum);
  Widget res(int _sum) {
    if (_sum >= 26) {
      return const Text(
        "Well done! You're a big Harry Potter fan and it shows!",
        style: TextStyle(
          color: Colors.pink,
          fontSize: 40,
          fontWeight: FontWeight.normal,
          fontFamily: 'Harry P',
        ),
        textAlign: TextAlign.center,
      );
    } else if (_sum >= 10 && _sum <= 25) {
      return const Text(
        "Hmm, well you know one or two things about Harry Potter, but you'll have to do better than that! ",
        style: TextStyle(
          fontSize: 40,
          color: Colors.pink,
          fontWeight: FontWeight.bold,
          fontFamily: 'Harry P',
        ),
        textAlign: TextAlign.center,
      );
    } else {
      return const Text(
        "Oh no! A troll could score higher! Have another go!",
        style: TextStyle(
          fontSize: 40,
          color: Colors.pink,
          fontWeight: FontWeight.bold,
          fontFamily: 'Harry P',
        ),
        textAlign: TextAlign.center,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 200, horizontal: 10),
            child: Column(children: [
              Text('Your Score is ' + _sum.toString(),
                  style: const TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Harry P',
                  )),
              Padding(padding: EdgeInsets.all(10)),
              res(_sum),
            ])));
  }
}

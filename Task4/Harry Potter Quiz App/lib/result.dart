import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/feedback.dart';

class Result extends StatelessWidget {
  final int _sum;
  final String name;
  const Result(this._sum, this.name);
  Widget res(int _sum, name) {
    if (_sum >= 26) {
      return Text(
        "Well done! $name, you're a big Harry Potter fan and it shows!",
        style: const TextStyle(
          color: Colors.pink,
          fontSize: 40,
          fontWeight: FontWeight.normal,
          fontFamily: 'Harry P',
        ),
        textAlign: TextAlign.center,
      );
    } else if (_sum >= 10 && _sum <= 25) {
      return Text(
        "Hmm, $name, well you know one or two things about Harry Potter, but you'll have to do better than that! ",
        style: const TextStyle(
          fontSize: 40,
          color: Colors.pink,
          fontWeight: FontWeight.bold,
          fontFamily: 'Harry P',
        ),
        textAlign: TextAlign.center,
      );
    } else {
      return Text(
        "Oh no! $name, a troll could score higher! Have another go!",
        style: const TextStyle(
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
              const Padding(padding: EdgeInsets.all(10)),
              res(_sum, name),
              ElevatedButton(
              onPressed: () {
                Navigator.push(
                context,
                MaterialPageRoute<void>(
                    builder: (context) => const FeedBack()));
              },
              child: const Text(
                'Finish',
                style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Harry P',
                ),
                textAlign: TextAlign.center,
              ),
              style: ButtonStyle(
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0)
                  )
                ),
                alignment: Alignment.center,
                backgroundColor: MaterialStateProperty.all(Colors.pinkAccent[700]),
                elevation: MaterialStateProperty.all(5.0),
                shadowColor: MaterialStateProperty.all(Colors.pinkAccent[700]),
                overlayColor: MaterialStateProperty.all(Colors.purple[100]),
              )
            ),
            ])));
  }
}

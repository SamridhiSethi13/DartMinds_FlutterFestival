import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/result.dart';
import 'package:flutter/rendering.dart';
import 'result.dart';

class QuestionText extends StatefulWidget {
  const QuestionText({Key? key}) : super(key: key);

  @override
  _QuestionTextState createState() => _QuestionTextState();
}

class _QuestionTextState extends State<QuestionText> {
  final List<String> _ques = [
    'Who has a lightning bolt Scar on the forehead?',
    'Whose home was called THE BURROW?',
    'Whose parents were muggles?',
    'Who among them was not in Gryffindor?',
    "Who is Ginny Weasley's Sibling?",
    'Who among them used to teach potions at Hogwarts?',
    'Whose parents were killed by Lord Voldemort?',
    "Who started the Dumbledore's Army in Harry Potter and the Order of the Phoenix?",
    'Who Faced His Fear Of Spiders in the Forbidden Forest?',
    "Who knocks out the troll in the ladies’ bathroom in Harry Potter and the Philospher's Stone?",
  ];
  final List<String> _link = [
    'scar',
    'burrow',
    'parents',
    'gry',
    'gin',
    'potions',
    'voldemort',
    'da',
    'spider',
    'troll',
  ];

  final List<String> _val = [
    'Harry Potter',
    'Ron Weasley',
    'Hermione Granger',
    'Severus Snape',
    'Ron Weasley',
    'Severus Snape',
    'Harry Potter',
    'Hermione Granger',
    'Ron Weasley',
    'Ron Weasley',
  ];

  int _index = 0;
  int _sum = 0;

  void _answer(String score) {
    if (_index < 10) {
      if (score == _val[_index]) {
        _sum = _sum + 3;
      } else {
        _sum = _sum - 1;
      }
    }
    setState(() => _index++);
  }

  @override
  Widget build(BuildContext context) {
    if ((_index >= 10)) {
      return Result(_sum);
    } else {
      return SingleChildScrollView(
          child: Container(
              margin: const EdgeInsets.all(10.0),
              child: Column(
                children: <Widget>[
                  Padding(padding: EdgeInsets.all(5)),
                  Container(
                      child: Text(
                    _ques[_index],
                    style: TextStyle(
                      fontFamily: 'Playfair Display',
                      fontSize: 30,
                      color: Colors.pink[800],
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.center,
                  )),
                  Padding(padding: EdgeInsets.all(10)),
                  Container(
                      child: Image.asset(
                    "assets/images/${_link[_index]}.jpg",
                    height: 300,
                    width: 320,
                    fit: BoxFit.cover,
                  )),
                  Padding(padding: EdgeInsets.all(10)),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.purple[900],
                      onPrimary: Colors.white,
                      elevation: 20.0,
                      padding: const EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 20.0),
                    ),
                    onPressed: () => _answer('Harry Potter'),
                    child: const Text(
                      "Harry Potter",
                      style: TextStyle(
                        fontFamily: 'Playfair Display',
                        fontWeight: FontWeight.w600,
                        fontSize: 26.0,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.purple[900],
                      onPrimary: Colors.white,
                      elevation: 20.0,
                      padding: const EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 20.0),
                    ),
                    onPressed: () => _answer('Ron Weasley'),
                    child: const Text(
                      "Ron Weasley",
                      style: TextStyle(
                        fontFamily: 'Playfair Display',
                        fontWeight: FontWeight.w600,
                        fontSize: 26.0,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.purple[900],
                      onPrimary: Colors.white,
                      elevation: 20.0,
                      padding: const EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 20.0),
                    ),
                    onPressed: () => _answer('Hermione Granger'),
                    child: const Text(
                      "Hermione Granger",
                      style: TextStyle(
                        fontFamily: 'Playfair Display',
                        fontWeight: FontWeight.w600,
                        fontSize: 26.0,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.purple[900],
                      onPrimary: Colors.white,
                      elevation: 20.0,
                      padding: const EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 20.0),
                    ),
                    onPressed: () => _answer('Severus Snape'),
                    child: const Text(
                      "Severus Snape",
                      style: TextStyle(
                        fontFamily: 'Playfair Display',
                        fontWeight: FontWeight.w600,
                        fontSize: 26.0,
                      ),
                    ),
                  ),
                ],
              )));
    }
  }
}

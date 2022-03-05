import 'package:flutter/material.dart';

import 'QuestionText.dart';

class Intro extends StatefulWidget {
  const Intro({ Key? key }) : super(key: key);

  @override
  State<Intro> createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  final myController = TextEditingController();

  @override
  void initState() {
    super.initState();
    myController.addListener(() => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: [
            const Text(
              'Welcome !',
              style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Harry P',
              )                
            ),
            TextField(
              controller: myController,
              decoration: const InputDecoration(
                hintText: 'Enter your name',
                labelText: 'Name',
                border: OutlineInputBorder(),
              ),
              textInputAction: TextInputAction.done,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                context,
                MaterialPageRoute<void>(
                    builder: (context) => QuestionText(name: myController.text)));
              },
              child: const Text(
                'Enter the Quiz',
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
          ],
        )
      ),
    );
  }
}
// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter_application_3/SecondScreen.dart';
import 'package:flutter_application_3/sixth.dart';

import 'ThirdScreen.dart';
import 'fifth.dart';
import 'fourth.dart';

class FirstScreen extends StatelessWidget {
  FirstScreen({Key? key}) : super(key: key);
  final myImageAndCaption = [
    ["assets/images/goa1.jpg", "Goa Trip", "1"],
    ["assets/images/to.jpg", "Finally 21", "2"],
    ["assets/images/wi.jpg", "Bhaiya got married", "3"],
    ["assets/images/par.jpg", "Paris", "4"],
    ["assets/images/no.jpg", "Girls Night In", "5"],
  ];
  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.pink[50],
        appBar: AppBar(
            backgroundColor: Colors.pink[800],
            title: Center(
              child: Text('Memories',
                  style: TextStyle(
                      fontFamily: 'Cormorant',
                      fontSize: 60,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.normal,
                      color: Colors.pink[50])),
            )),
        body: GridView.count(
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 15.0,
          padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
          scrollDirection: Axis.vertical,
          crossAxisCount: 2,
          children: [
            ...myImageAndCaption.map(
              (i) => InkResponse(
                highlightShape: BoxShape.circle,
                splashColor: Colors.yellow,
                highlightColor: Colors.blue.withOpacity(0.5),
                onTap: () {
                  if (i[2] == "1") {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SecondScreen()));
                  } else if (i[2] == "2") {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ThirdScreen()));
                  } else if (i[2] == "3") {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const fourth()));
                  } else if (i[2] == "4") {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const fifth()));
                  } else if (i[2] == "5") {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const sixth()));
                  }
                },
                child: Card(
                  shadowColor: Colors.pinkAccent,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  elevation: 10.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Material(
                        type: MaterialType.transparency,
                        child: Image.asset(
                          i[0],
                          fit: BoxFit.cover,
                          height: 150,
                          width: 200,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(3),
                        child: Text(i[1],
                            style: const TextStyle(
                                fontFamily: "Satisfy-Regular",
                                fontSize: 16,
                                color: Colors.pinkAccent)),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      );
}

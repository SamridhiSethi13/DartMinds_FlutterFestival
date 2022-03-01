import 'package:flutter/material.dart';

void main() => runApp(reviewApp());

class reviewApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: dead_code
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.pink[900],
          appBar: AppBar(
            backgroundColor: Colors.green[300],
            title: Center(
              child: Text('BOOK REVIEW',
                  style: TextStyle(
                      fontFamily: 'Playfair Display',
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.pink[800])),
            ),
          ),
          body: ListView(                   //added ListView
            children: <Widget>[
              //Header Container
              Container(
                margin: const EdgeInsets.all(16.0),
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(color: Colors.pink[50]),
                alignment: Alignment.center,
                child: Text("It Ends with Us",
                    style: TextStyle(
                      fontSize: 45,
                      fontFamily: 'Playfair Display',
                      color: Colors.pink[800],
                    )),
              ),
              _buildHeader(),
              Container(
                  margin: const EdgeInsets.all(16.0),
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(color: Colors.blue[100]),
                  child: Text(
                    "At first glance, the couple is edgy but cute: Lily Bloom runs a flower shop for people who hate flowers; Ryle Kincaid is a surgeon who says he never wants to get married or have kids. They meet on a rooftop in Boston on the night Ryle loses a patient and Lily attends her abusive father’s funeral. The provocative opening takes a dark turn when Lily receives a warning about Ryle’s intentions from his sister, who becomes Lily’s employee and close friend. Lily swears she’ll never end up in another abusive home, but when Ryle starts to show all the same warning signs that her mother ignored, Lily learns just how hard it is to say goodbye. When Ryle is not in the throes of a jealous rage, his redeeming qualities return, and Lily can justify his behavior: “I think we needed what happened on the stairwell to happen so that I would know his past and we’d be able to work on it together,” she tells herself. Lily marries Ryle hoping the good will outweigh the bad, and the mother-daughter dynamics evolve beautifully as Lily reflects on her childhood with fresh eyes. Diary entries fancifully addressed to TV host Ellen DeGeneres serve as flashbacks to Lily’s teenage years, when she met her first love, Atlas Corrigan, a homeless boy she found squatting in a neighbor’s house. When Atlas turns up in Boston, now a successful chef, he begs Lily to leave Ryle. Despite the better option right in front of her, an unexpected complication forces Lily to cut ties with Atlas, confront Ryle, and try to end the cycle of abuse before it’s too late. The relationships are portrayed with compassion and honesty, and the author’s note at the end that explains Hoover’s personal connection to the subject matter is a must-read.",
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Playfair Display',
                      color: Colors.pink[800],
                    ),
                    textAlign: TextAlign.justify,
                  )),
            ],
          )),
    );
  }

  Row _buildHeader() {
    return Row(children: <Widget>[
      Container(
          margin: const EdgeInsets.fromLTRB(8.0, 0.5, 8.0, 0.5),
          padding: const EdgeInsets.fromLTRB(8.0, 0.5, 8.0, 0.5),
          width: 180,
          height: 220,
          child: Image.asset(
            'assets/images/it.jpg',
            fit: BoxFit.fill,
          )),
      Container(
          margin: const EdgeInsets.fromLTRB(2.0, 2.0, 2.0, 2.0),
          padding: const EdgeInsets.fromLTRB(2.0, 2.0, 2.0, 2.0),
          decoration: BoxDecoration(color: Colors.yellow[200]),
          width: 198,
          height: 220,
          child: Column(children: <Widget>[
            Text('Book Name: It Ends With Us',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Playfair Display',
                  color: Colors.pink[800],
                ),
                textAlign: TextAlign.center),
            Text('Author Name: Colleen Hoover',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Playfair Display',
                  color: Colors.pink[800],
                ),
                textAlign: TextAlign.center),
            Text('Genre: Romantic',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Playfair Display',
                  color: Colors.pink[800],
                ),
                textAlign: TextAlign.center),
            Text('Rating: 4.5/5',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Playfair Display',
                  color: Colors.pink[800],
                ),
                textAlign: TextAlign.center),
            Text('Release Date: 2 August 2016',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Playfair Display',
                  color: Colors.pink[800],
                ),
                textAlign: TextAlign.center),
          ]))
    ]);
  }
}

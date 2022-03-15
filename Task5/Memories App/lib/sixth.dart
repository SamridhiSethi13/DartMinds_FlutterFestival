import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class sixth extends StatefulWidget {
  const sixth({Key? key}) : super(key: key);

  @override
  _sixthState createState() => _sixthState();
}

// ignore: camel_case_types
class _sixthState extends State<sixth> {
  final msg = ["What a blast we had."];
  @override
  Widget build(BuildContext context) => Scaffold(
      backgroundColor: Colors.red[100],
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
      body: Center(
        child: CarouselSlider(
          options: CarouselOptions(
              height: 800,
              viewportFraction: 1,
              enlargeCenterPage: true,
              enableInfiniteScroll: false,
              enlargeStrategy: CenterPageEnlargeStrategy.height),
          items: [
            'assets/images/girls.jpg',
          ].map((i) {
            return Builder(builder: (BuildContext context) {
              return Center(
                  child: Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: [
                    const Padding(padding: EdgeInsets.fromLTRB(20, 70, 20, 0)),
                    Image.asset(
                      i,
                      height: 500,
                      fit: BoxFit.cover,
                    ),
                    if (i == 'assets/images/girls.jpg')
                      Container(
                          padding: const EdgeInsets.all(9.0),
                          width: 500,
                          decoration: BoxDecoration(
                            color: Colors.black87,
                            shape: BoxShape.rectangle,
                            border: Border.all(
                              color: Colors.black,
                              width: 0,
                            ),
                            borderRadius: BorderRadius.circular(2),
                          ),
                          child: Text(
                            msg[0],
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontFamily: 'Satisfy-Regular',
                                fontWeight: FontWeight.normal),
                          )),
                  ],
                ),
              ));
            });
          }).toList(),
        ),
      ));
}

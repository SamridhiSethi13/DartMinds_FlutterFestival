import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter_application_3/storage_services.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;

// ignore: camel_case_types
class fifth extends StatefulWidget {
  const fifth({Key? key}) : super(key: key);

  @override
  _fifthState createState() => _fifthState();
}

// ignore: camel_case_types
class _fifthState extends State<fifth> {
  final msg = [
    "Disneyland Paris.",
    "The Eiffle Tower.",
    "Louvre for me meant Da Vinci Code for a long time."
  ];
  @override
  Widget build(BuildContext context) {
    final Storage storage = Storage();
    return Scaffold(
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
          ),
          actions: [
            IconButton(
                onPressed: () async {
                  final results = await FilePicker.platform.pickFiles(
                    allowMultiple: false,
                    type: FileType.custom,
                    allowedExtensions: ["jpg", "png"],
                  );
                  if (results == null) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("No files selected."),
                      ),
                    );
                    return null;
                  }
                  final String path = results.files.single.path!;
                  final String fileName = results.files.single.name;

                  storage
                      .uploadFile(path, fileName)
                      ?.then((value) => print('Done'));
                },
                icon: const Icon(Icons.add_a_photo))
          ],
        ),
        body: Center(
          child: CarouselSlider(
            options: CarouselOptions(
                height: 800,
                viewportFraction: 1,
                enlargeCenterPage: true,
                enableInfiniteScroll: false,
                enlargeStrategy: CenterPageEnlargeStrategy.height),
            items: [
              'assets/images/disneyland.jpg',
              'assets/images/eiffle.jpg',
              'assets/images/louvre.jpg'
            ].map((i) {
              return Builder(builder: (BuildContext context) {
                return Center(
                    child: Container(
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    children: [
                      const Padding(
                          padding: EdgeInsets.fromLTRB(20, 70, 20, 0)),
                      Image.asset(
                        i,
                        height: 500,
                        fit: BoxFit.fill,
                      ),
                      /* if (i == 'assets/images/disneyland.jpg')
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
                    if (i == 'assets/images/eiffle.jpg')
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
                            msg[1],
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                color: Colors.white,
                                fontFamily: 'Satisfy-Regular',
                                fontSize: 20,
                                fontWeight: FontWeight.normal),
                          )),
                    if (i == 'assets/images/louvre.jpg')
                      Container(
                        padding: const EdgeInsets.all(9.0),
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
                          msg[2],
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              color: Colors.white,
                              fontFamily: 'Satisfy-Regular',
                              fontSize: 20,
                              fontWeight: FontWeight.normal),
                        ),
                      )*/
                    ],
                  ),
                ));
              });
            }).toList(),
          ),
        ));
  }
}

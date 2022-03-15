import 'package:carousel_slider/carousel_slider.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_3/storage_services.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  final msg = [
    "Reminds me of Dhammal. This is Church of Our Lady of Immaculate Conception.",
    "The best Calangute beach.",
    "Candolim beach."
  ];
  final String path = "";
  final String fileName = "";
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
        /* body: Column(children: [
        FutureBuilder(
          future: _getImage(context, "Login for Admin.png"),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done &&
                snapshot.hasData) {
              return Container(
                width: 300,
                height: 250,
                child: snapshot.data as Widget,
                // fit: BoxFit.cover,
              );
            }
            if (snapshot.connectionState == ConnectionState.waiting ||
                !snapshot.hasData) {
              return CircularProgressIndicator();
            }
            return Container();
          },
        ),
      ]),
*/
        body: Center(
          child: CarouselSlider(
            options: CarouselOptions(
                height: 800,
                viewportFraction: 1,
                enlargeCenterPage: true,
                enableInfiniteScroll: false,
                enlargeStrategy: CenterPageEnlargeStrategy.height),
            items: [
              'assets/images/chur.jpg',
              'assets/images/calangute.jpg',
              'assets/images/candolim.jpg'
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
                      /* if (i == 'assets/images/chur.jpg')
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
                              msg[0],
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontFamily: 'Satisfy-Regular',
                                  fontWeight: FontWeight.normal),
                            )),
                      if (i == 'assets/images/calangute.jpg')
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
                     if (i == 'assets/images/candolim.jpg')
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

  Future<Widget?> _getImage(BuildContext context, String imageName) async {
    Image image;
    await FireStorageService.loadImage(context, imageName).then((value) {
      image = Image.network(
        value.toString(),
        fit: BoxFit.scaleDown,
      );
    });
  }
}

class FireStorageService extends ChangeNotifier {
  FireStorageService();
  static Future<dynamic> loadImage(BuildContext context, String Image) async {
    return await FirebaseStorage.instance.ref().child(Image).getDownloadURL();
  }
}

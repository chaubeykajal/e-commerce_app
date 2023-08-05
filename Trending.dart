import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class TrendingShows_screen extends StatefulWidget {
  const TrendingShows_screen({super.key});
  @override
  State<TrendingShows_screen> createState() => _TrendingShows_SreenState();
}

class _TrendingShows_SreenState extends State<TrendingShows_screen> {
  List<String> Posters_links = [];

  Future<void> FetchPosters() async {
    try {
      CollectionReference _moviesposters =
          FirebaseFirestore.instance.collection("Mxposters");
      QuerySnapshot AllDetails = await _moviesposters.get();
      AllDetails.docs.forEach((DocumentSnapshot doc) {
        // var doc = AllDetails.docx.data();
        print("Document id : ${doc.id}");
        print("Movies image link : ${doc['images']}");
        print("Movies name : ${doc['name']}");
        print("Movies Releasing  : ${doc['Releasing Year']}");
        Posters_links.add(doc["images"]);
        print(Posters_links);
      });
    } catch (error) {
      print("error: $error");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 32, 71, 129),
        body: FutureBuilder(
            future: FetchPosters(),
            builder: (context, snapshot) {
              return Column(children: [
                // SingleChildScrollView(scrollDirection: Axis.horizontal,
                // child:
                Row(
                  children: [
                    Container(
                        child: ListView.builder(
                            itemCount: Posters_links.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                    width: 150,
                                    height: 200,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.network(
                                          Posters_links[index],
                                          fit: BoxFit.fill,
                                        ))),
                              );
                            })),
                  ],
                ),
              ]);
            }));
  }
}

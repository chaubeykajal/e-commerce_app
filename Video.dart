import 'package:flutter/material.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_core/firebase_core.dart';


class Video_screen extends StatefulWidget{

  const Video_screen({super.key});
  @override
  State<Video_screen> createState()=>_Video_SreenState ();
    

}

class _Video_SreenState extends State<Video_screen>{

  // List <String> Movies_posters= [];

  // Future <void> fetching_posters() async{
  //   try{
  //     CollectionReference coll_Location= FirebaseFirestore.instance.collection("New_Movies");
  //     QuerySnapshot Documents= await coll_Location.get();

  //     Documents.docs.forEach((DocumentSnapshot  docs ) {
  //       print("Id :${docs.id}");
  //       print("name : ${docs['name']}");
  //       print("Releasing Year : $docs['Releasing Year]");
  //       Movies_posters.add(docs['images']);
  //       print(Movies_posters);
  //      }
  //      );
  //      }
  //      catch(error){
  //       print("Errors : $error");
  //      }

  // }

  @override

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Color.fromARGB(255, 32, 71, 129) ,
        title:const Text("New and trending ",style: TextStyle(fontWeight:FontWeight.w500,color:Colors.white)),
      ),
      backgroundColor:Color.fromARGB(255, 32, 71, 129),

      // body:FutureBuilder(
      //   future: fetching_posters(),
      //   builder:(context, snapshort){
      //     return Padding(
      //       padding: const EdgeInsets.all(10.0),
      //       child: Column (
      //         // mainAxisAlignment: MainAxisAlignment.center,
      //         // crossAxisAlignment: CrossAxisAlignment.center,
      //         children:[
      //           Container(
      //             height:200 ,
      //             width:180,

      //             child: ListView.builder(
      //               scrollDirection: Axis.horizontal,
      //               itemCount:Movies_posters.length,
      //               itemBuilder: (context, index){
      //                 return Padding(padding:EdgeInsets.all(8.0),
      //                 child: Container(
      //                   height:200,
      //                   width:120,
      //                   decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0),color:Colors.amber),
      //                   child:ClipRRect(borderRadius:BorderRadius.circular(10),child:Image.network(Movies_posters[index],fit: BoxFit.cover),
      //                 )));

                      
                      
      //               }
          
      //             )
      //           )
      //         ]
          
          
      //       ),
      //     );

      //   }
      // )

      
      
    );

  }
}
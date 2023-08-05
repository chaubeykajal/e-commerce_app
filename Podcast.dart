import 'package:flutter/material.dart';

class Podcast_screen extends StatefulWidget{

  const Podcast_screen({super.key});
  @override
  State<Podcast_screen> createState()=>Podcast_screenState ();
    

}

// ignore: camel_case_types
class Podcast_screenState extends State<Podcast_screen>{

  @override

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Color.fromARGB(255, 32, 71, 129) ,
        title:const Text("Podcast_screen",style: TextStyle(fontWeight:FontWeight.w500,color:Colors.white)),
      ),
      backgroundColor:Color.fromARGB(255, 32, 71, 129),
      body:
      Container(child:
      const Text("Podcast_screen",style: TextStyle(fontWeight:FontWeight.w500,color:Colors.white)
      )
    )
    );

  }
}
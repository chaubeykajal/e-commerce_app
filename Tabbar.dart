import 'package:flutter/material.dart';

import 'package:onemoremxplayer/Show_screen.dart';
import 'Posters.dart';
import "package:onemoremxplayer/Trending.dart";
import "package:onemoremxplayer/Video.dart";
import "package:onemoremxplayer/Podcast.dart";
// import 'package:onemoremxplayer/Movies.dart';





class TabbarPage extends StatefulWidget {
  TabbarPage({super.key});


@override
  State<TabbarPage> createState() => _TabbarPageStateState();
}

class _TabbarPageStateState extends State<TabbarPage> {
  

  
  @override
  Widget build(BuildContext context) {
   
    return DefaultTabController(length: 5, child:
     Scaffold(
      appBar:AppBar(
        
        bottom: TabBar(
          isScrollable:true,
          labelColor: Colors.white,
          indicatorColor: Colors.white ,
          unselectedLabelColor:Colors.white.withOpacity(0.6),

          
        

          tabs:const[
            Tab(
            icon:Icon(Icons.home)),
            Tab(text:"SHOWS",),
            Tab(text:"NEW & HOT🔥",),
            Tab(text:"MOVIES",),
            Tab(text:"MX VDESI",),
            // Tab(text:"MX GOLD⭐ ",),
            // Tab(text:"PODCAST🎙️",)
            ]),
            toolbarHeight:1,
            backgroundColor:const  Color.fromARGB(255, 32, 71, 129),),

      body:
      
     
      
      const TabBarView(children: [
        allPosters(),
        Shows_dramas_screen(),
        TrendingShows_screen(),
        Video_screen(),
        Podcast_screen(),
        
        // podcast_



       ],
       ),

     ) 
    );
  }
}
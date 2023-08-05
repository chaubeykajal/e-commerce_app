
import 'package:flutter/material.dart';



class localpage extends StatefulWidget{
  const localpage({super.key});
  @override
  State<localpage> createState()=>_localpageState();


}

class _localpageState extends State<localpage>{

    @override

  Widget build(BuildContext context){
    return Scaffold(
  
      backgroundColor:const Color.fromARGB(255, 32, 71, 129) ,
      body:SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                children: [
                  
                  localcontainer(Icon1:Icon(Icons.lock_clock,color: Colors.blue,size:17),Icon2:Icon(Icons.lock,color: Colors.white,size:14),text:"Privacy"),
                  localcontainer(Icon2:Icon(Icons.share,color: Colors.white,size:17),text:"Share"),
                  localcontainer(Icon2:Icon(Icons.music_note_outlined,color: Colors.white,size:17),text:"Music"),
                  localcontainer(Icon2:Icon(Icons.notifications,color: Colors.white,size:16),text:"New Release"),
                  localcontainer(Icon2:Icon(Icons.download,color: Colors.white,size:17),text:"Downloader"),
                  localcontainer(Icon2:Icon(Icons.playlist_add_check,color: Colors.white,size:17),text:"Playlist"),
                  localcontainer(Icon2:Icon(Icons.cloud,color: Colors.white,size:17),text:"M-cloud"),
                ],),
              ),

               SizedBox(height: 10,),

              Text("Recent view", style:TextStyle( fontSize: 20,color: Colors.white)),
              SizedBox(height: 10,),
              
              Container(
                height :80,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                width: 140,child: ClipRRect(borderRadius:BorderRadius.circular(10),child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSoRvhhB60FyojUFaIZik-Vgewv7eJeI3u-Sw&usqp=CAU",fit: BoxFit.fill))),
              SizedBox(height: 10,),
              
              contentwidget("Camera","4 videos"),
              contentwidget("Downloads","3 videos"),
              contentwidget("Instagram","14 videos"),
              contentwidget("videos","7 videos"),
              contentwidget("Whatsapp","10 videos"),
              contentwidget("ShareMe","9 videos"),
              contentwidget("Movies","6 videos"),
              contentwidget("Canva","10 videos"),  
            ],
          ),
        ),
      )

    );
      
}
}


Widget contentwidget(String text, String infotext) {
    return  Row(
        children: [
          Icon(Icons.folder,color: Colors.grey,size:80),
          SizedBox(width: 25,),
          Column(
            children: [
              Text(text,style: TextStyle(fontSize: 18,color:Colors.white,),),
              Text(infotext,style: TextStyle(fontSize: 15,color:Colors.white,))
            ],
          )
        ],
      
    );
}



Widget localcontainer({Icon? Icon1,required Icon Icon2, required String text}){

  return Padding(
    padding: const EdgeInsets.only(top:5.0,right: 5 ),
    child: Container(
                  alignment: Alignment.center,
                  height:40,
                  width:110,
                  decoration: BoxDecoration(color: Colors.black26, borderRadius: BorderRadius.circular(20)),
                  child:Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                       if (Icon1!=null)Icon1,
                     
                       const SizedBox(width:8),
                       Icon2,
                       const SizedBox(width:4),
                        
                       
                      Text(text,style: TextStyle(color:Colors.white,fontSize: 12)),
                       
                    ],),
                  )
        
                ),
    
    
  );
}

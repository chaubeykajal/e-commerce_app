import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Search_screen extends StatefulWidget{

  const Search_screen({super.key});
  @override 
  State <Search_screen> createState()=>_Search_screen();
}




class _Search_screen extends State<Search_screen>{

  String searchText="";
  TextEditingController search_ctrl= TextEditingController();
  
  Map<String, dynamic>? usermap;
  
   
  

  //Search function 


  Future <void> Searchmovies()async{
    try{
      FirebaseFirestore _firestore=  await FirebaseFirestore.instance;
      _firestore.collection("Mxposters").where("name".toLowerCase(),isEqualTo: search_ctrl.text.toLowerCase()).get().then((value)
      {
        setState(() {usermap=value.docs[0].data();});
      });
      print(usermap);

    }catch(error){
      print("Sorry! an eror occured $error");
    }
    

  }


  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor:Color.fromARGB(255, 32, 71, 129),
      body :
      Padding(padding: EdgeInsets.symmetric(horizontal:15,vertical: 50),
      
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                    height:40,
                    width:320,
                    decoration:  BoxDecoration(color:Colors.grey,borderRadius: BorderRadius.only(topLeft:Radius.circular(10),bottomLeft:Radius.circular(10),),
                    boxShadow: [BoxShadow(
                      spreadRadius: 0.4)] ),
                    
                    child: TextField(
                      controller: search_ctrl, 
                      onChanged: (value) {
                        searchText =value;
                      },
                    
                      style: GoogleFonts.kalam(fontSize:15,color:Colors.white),
                        decoration: const InputDecoration(
                        border: InputBorder.none,
                          
                          hintText: "Movies,Musics,Series",
                          hintStyle: TextStyle(fontSize:15,color: Colors.white),
                          contentPadding: EdgeInsets.symmetric(horizontal:8.0,),
                        ),
                  
                        ),
                      ),
                    InkWell(
                      onTap: () {Searchmovies();},
                      child: Container(
                        height:40,
                        width:40,
                        decoration:BoxDecoration(borderRadius:BorderRadius.only(topRight:Radius.circular(10),bottomRight:Radius.circular(10)),color:Color.fromARGB(255, 130, 176, 246)),
                       child:Icon(Icons.search,color:Colors.white)
                      ),
                    ) 
                  ]),
               const SizedBox(height:40,),
              usermap!=null ?Column(
                  children:[
                    Image.network(usermap!["image"]==null ? "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6oP7HYSK6aduxMSdEfTka4bXlxF8S2Z3EYA&usqp=CAU": usermap!['image']),
                    const SizedBox(height: 10,),
                          Text(
                            usermap!["name"],
                            style: TextStyle(fontSize: 25),
                          ),
                 
                  ]):SizedBox(),
          
            
          
      
      
        
      
      
          ])

      )

    );

  }


}
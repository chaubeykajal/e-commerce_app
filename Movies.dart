import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class trendingShows_screen
 extends StatefulWidget{

  const trendingShows_screen
  ({super.key});
  @override
  State<trendingShows_screen
  > createState()=>_trendingShows_SreenState ();
    

}

class _trendingShows_SreenState extends State<trendingShows_screen
>{

  @override

  Widget build(BuildContext context){
    return Scaffold(
      
      backgroundColor:Color.fromARGB(255, 32, 71, 129),
      body:
      SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            SingleChildScrollView(scrollDirection: Axis.horizontal,
              child:Row(
                children: [
                  MoviesContainer("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT7N2P0p5lsPFqOrnbSljqakN1zBw1qYiE0Lw&usqp=CAU"),
                  MoviesContainer("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTlJN_H6-oZlLoMnr74EOmUaHV3mXCofR_jmA&usqp=CAU"),
                  MoviesContainer("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSvLHQ6Ems6M2sm2O8soknIs2CaVYNTL_B98UW0S1ggVrFMq2ey_CDGYEuL9QySr31si98&usqp=CAU"),
                  MoviesContainer("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQC6g8r0Do2WodDuccBEDMW_8VdTfL12KGBzA&usqp=CAU"),
                  MoviesContainer("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJWSQqDv4QHSOCy7CN8PeC8ON1FdQVWRZwFw&usqp=CAU"),
                  
                ],
              )
            ),

            Padding(padding: EdgeInsets.all(8.0),
            child:Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("MX Top Picks",style: TextStyle(fontWeight: FontWeight.bold,color:Colors.white,fontSize:20 ),),

                Icon(Icons.arrow_forward_ios,color: Colors.white,size:15,)
              ],)),

          
              SingleChildScrollView(scrollDirection: Axis.horizontal,
                child:Row(
                  children: [
                    MxTopPickcontainer("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqvsKYOiLe1_-1ac4TzpMR0gixJmOdwirO_Q&usqp=CAU"),
                    MxTopPickcontainer("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSeCElKPW6Oblw9wYIku8N8xzl30lYOIdU1bg&usqp=CAU"),
                    MxTopPickcontainer("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSwHkn7RIM1f6eKWbZvGvJs3FScLyABgw4rhw&usqp=CAU"),
                    MxTopPickcontainer("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTeFd4erT20YYvG4D5vFMSeYoOA1Nk5i2WErA&usqp=CAU"),
                    MxTopPickcontainer("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJFpRbJMUFWYOlnyc7YSMgVcKP_CgR0WhBJw&usqp=CAU"),
                    MxTopPickcontainer("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT41CgxZ4n-gXUcVySaBEi3qhlcrwauWoIaZQ&usqp=CAU"),
                    MxTopPickcontainer("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3mNTYv3aktQj2XSKAbAPWciB1ahH4zdSy6g&usqp=CAU")
                      
                    ],),
                  ),
  
              
              const Padding(padding: EdgeInsets.all(8.0),
                child:
                    Text("Movies Series Not To Miss",style: TextStyle(fontWeight: FontWeight.bold,color:Colors.white,fontSize:20 ),),
                  
               ),


              SingleChildScrollView(scrollDirection: Axis.horizontal,
                child:Row(
                  children: [
                    MostwatchMoviesContainer("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTbuoGNFlmcDgzp5s3HJ3DlVd2Kbb4YBLT2fg&usqp=CAU"),
                    MostwatchMoviesContainer("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQrFb4sX30HwGiIPSeWIT5N_uXEXQu5Vi6xjg&usqp=CAU"),
                    MostwatchMoviesContainer("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSn2_zWAhe7nj9EgzJtNm0Y5hCPN0eRleGm1Q&usqp=CAU"),
                    MostwatchMoviesContainer("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSlVKmnN5Hl5dCXz1-rl9DiuuTTFRyv1pF74A&usqp=CAU"),
                    MostwatchMoviesContainer("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzJTkdPVAsp-i9GdusgSvj6LztRYsDQgzZkw&usqp=CAU"),
                    MostwatchMoviesContainer("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT1YjubILiwA_1_MlhGQFvW_qtbkES9E2GI3A&usqp=CAU"),



          ]
        ) ,    
      
      ),
          ]),
    ),
    
    );


  }



  Widget  MoviesContainer(String imgurl)=> Padding(padding: EdgeInsets.all(8.0),
  child:Stack(

    children: [Container(
      height:180,
      width:370,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: const Color.fromARGB(60, 189, 185, 185),),
      child :ClipRRect(child:Image.network(imgurl,fit: BoxFit.fill,),borderRadius: BorderRadius.circular(15),),

    ),
    Padding(
      padding: const EdgeInsets.only(top:140),
      child: Container(
        height:20,
        width:20,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.white),
      
        child:Icon(Icons.add,color: Colors.black,size:20,),
      )
    
      ,
    
    )
  ]),
  
  );



  Widget MxTopPickcontainer(String imgurl)=> Padding(padding: EdgeInsets.all(8.0),
  child:Container(
    height:130,
    width:170,
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: const Color.fromARGB(60, 189, 185, 185),),
    child :ClipRRect(child:Image.network(imgurl,fit: BoxFit.fill,),borderRadius: BorderRadius.circular(15),),

  ));


  Widget MostwatchMoviesContainer(String imgurl)=>Padding(padding: EdgeInsets.all(8.0),
  child: Stack(
    children: [
      Container(
        height:190,
        width:240,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: const Color.fromARGB(60, 189, 185, 185),),
        child :ClipRRect(child:Image.network(imgurl,fit: BoxFit.fill,),borderRadius: BorderRadius.circular(15),),
        ),

        Padding(padding: EdgeInsets.only(top:160),
          child:Container(
          height:20,
          width:20,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.white),
        
          child:Icon(Icons.add,color: Colors.black,size:20,),
          ) ,
        ),

        Padding(padding: EdgeInsets.symmetric(horizontal:50,vertical:80),
        child: Text("Series",style: GoogleFonts.kaushanScript(fontSize: 40,color: Colors.white)))
    ],
  ),
  
  
  );





  
}
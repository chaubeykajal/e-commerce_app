import 'package:flutter/material.dart';



class Shows_dramas_screen extends StatefulWidget{

  const Shows_dramas_screen
  ({super.key});
  @override
  State<Shows_dramas_screen> createState()=>_Shows_dramas_SreenState ();
    

}

class _Shows_dramas_SreenState extends State<Shows_dramas_screen>{

  @override

  Widget build(BuildContext context){
    return Scaffold(
     backgroundColor:Color.fromARGB(255, 32, 71, 129), 
     body:Padding(
       padding: const EdgeInsets.all(8.0),
       child: SingleChildScrollView(
         child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
           children: [
              SingleChildScrollView(scrollDirection: Axis.horizontal,
                child:Row(
                  children :[
                    ShowContianer("https://qqcdnpictest.mxplay.com/pic/d8137465319e4c0da8fa8cc9cd81a7b5/en/2x3/320x480/test_pic1680502768149.webp"),
                    ShowContianer("https://qqcdnpictest.mxplay.com/pic/30f21868f86976d55ab8df99e290c83c/en/2x3/320x480/test_pic1668176927078.webp"),
                    ShowContianer("https://qqcdnpictest.mxplay.com/pic/b40a2dada92aeb0a6e4b5d28b343a3fd/en/16x9/320x180/test_pic1604472993494.webp"),
                    ShowContianer("https://qqcdnpictest.mxplay.com/pic/cb057090ca8b0abfbe15ae4f2f2dd598/en/16x9/320x180/test_pic1668488174963.webp"),
                    ShowContianer("https://qqcdnpictest.mxplay.com/pic/22d4ba0dfd17acb8a6b785c4a7a3601d/en/16x9/320x180/test_pic1664539074427_badged_1664539082230.webp"),
                    ShowContianer("https://qqcdnpictest.mxplay.com/pic/fe3768a6cff4bbce4b28a077d8b72e91/en/2x3/320x480/test_pic1665547923418.webp"),
                    ShowContianer("https://qqcdnpictest.mxplay.com/pic/7220a488a2e651c159376b6d8a1eac88/en/16x9/320x180/test_pic1646815260942_badged_1662644767568.webp"),
       
       
                  ]
                )
                
              ),
       
              Padding(padding: EdgeInsets.symmetric(horizontal:8,vertical:10),
              child:
              Text("Explore Top Categories",style:TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize:20))),
       
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  child:Column(
                    children: [
                      SingleChildScrollView(scrollDirection: Axis.horizontal,
                        child:
                          Row(children:[
                            gridviewcontainer("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTae59PyJk9mlspN12UooQ-itnUJiJ-hRn_pA&usqp=CAU",Colors.blue,"Hollywood"),
                            gridviewcontainer("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTHcT4T0QShSklqs33EmNXeotPx8-TgSHP18w&usqp=CAU",Colors.pink,"Mandarin"),
                           
                          ],),),
                          SizedBox(height:10),
                          SingleChildScrollView(scrollDirection: Axis.horizontal,
                            child: Row(children:[
                              gridviewcontainer("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWqLnE03gHJmBakdztEqSiG8Nnp9tnHLr_DA&usqp=CAU",Colors.indigo,"Turkish"),
                              gridviewcontainer("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTnrOoY1Hyqyc2CGS0tCyv6BOWGqHS6eTLnZg&usqp=CAU",Colors.orange,"Korean"),
                             
                            ],),
                          )
                           
                           
                        ],
                      ),
                    
                  )
                ),
              


             const  Padding(padding: EdgeInsets.symmetric(horizontal:8,vertical:10),
              child:
              Text("MX Original Web Shows",style:TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize:20))),
       



            SingleChildScrollView(scrollDirection: Axis.horizontal,
              child:Row(
                children: [
                  MXOriginalWebContainer("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNoxurnZYT3kkvYAGj7Jq27GKCl09-SslQmQ&usqp=CAU"),
                  MXOriginalWebContainer("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS9ckDAbQtD8UPp_1MHQ0v2Ox3Ol6_z9WBtFA&usqp=CAU"),
                  MXOriginalWebContainer("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQeebroEKn0IvvbsXxkK80qflDZStR4zF2ow&usqp=CAU"),
                  MXOriginalWebContainer("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRnGUebAj6FQkoDZmJRINg_Ye7H2zKLKts5nQ&usqp=CAU"),
                  MXOriginalWebContainer("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQ-6sjgDMBEmuIhEp0COBpXZrYICdTDS2mtA&usqp=CAU"),
                  MXOriginalWebContainer("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTnO4Gyrqaoh4HqvbRtkGxqKoZXlDnqg6iC-Q&usqp=CAU"),
                  MXOriginalWebContainer("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1M2cXRM9CcHdGRu2y1LxYe7VFAs0WdjWl8A&usqp=CAU"),
                  MXOriginalWebContainer("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSwoIciOkgBjmJMYd9YiX1ey-tLOzXOWWkASA&usqp=CAU"),

                  
                ],
              )

            ),

            Padding(padding: EdgeInsets.symmetric(horizontal:8,vertical:10),
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("Trending Shows on MX Player",style:TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize:20),
                  ),
                
                  Icon(Icons.arrow_forward)
                ]
            )
           ),

            SingleChildScrollView(scrollDirection: Axis.horizontal,
            child:Row(
              children: [
                TrendingShowsContainer("https://qqcdnpictest.mxplay.com/pic/7097c73355eb2efe1be7a3d5a5f86b1b/en/16x9/320x180/test_pic1641968038392.webp"),
                TrendingShowsContainer("https://qqcdnpictest.mxplay.com/pic/5a972487b9a3e4d8e0e6696f4749bf51/en/2x3/208x312/f0e093b383abe245722a4fd8a42ce511_1280x1920.webp"),
                TrendingShowsContainer("https://qqcdnpictest.mxplay.com/pic/77ef6b4b1d54ffbf361daa907c43c994/en/16x9/320x180/22b8253e6dc52496ce53af1ef95879e5_1920x1080.webp"),
                TrendingShowsContainer("https://qqcdnpictest.mxplay.com/pic/837db667b30d8ff5aa687929abbae25b/en/2x3/208x312/b41a32d2ed6bfe1ed715932eff71c9e8_1280x1920.webp"),
                TrendingShowsContainer("https://qqcdnpictest.mxplay.com/pic/a5fd7bff35e23a9f84e33e395c4372db/en/2x3/208x312/test_pic1669102704902.webp"),
                TrendingShowsContainer("https://qqcdnpictest.mxplay.com/pic/69d10bd26cacd730003a743001a80997/en/2x3/208x312/8c362596f8e0a0cb9e616a9ed131e2ae_1280x1920.webp"),
          
                ],
              ),
            ),
            ]
          ),
        ),
      ),
    );
  }

  Widget ShowContianer(String imgurl)=>Padding(padding: EdgeInsets.all(10.0),
  child:
    Container(
      height:180,
      width:370,
      decoration: BoxDecoration(borderRadius:BorderRadius.circular(10)),
      child:ClipRRect(borderRadius:BorderRadius.circular(10.0),child:Image.network(imgurl,fit: BoxFit.fill,))

  ));


  Widget gridviewcontainer(String imgurl,Color col,String text)=> Padding(padding: EdgeInsets.all(4.0),
  child:
    Stack(
      children: [
            
        Container(
          height:100,
          width:170,
          decoration:BoxDecoration(borderRadius:BorderRadius.circular(10)),
          child:ClipRRect(borderRadius: BorderRadius.circular(10),child: Image.network(imgurl,fit:BoxFit.fill,))
        ),

        Container(
          height:100,
          width:170,
          decoration:BoxDecoration(borderRadius: BorderRadius.circular(10),
          color:col.withOpacity(0.3)),
        ),

        Padding(padding: EdgeInsets.symmetric(horizontal:10,vertical: 50),
        child:
          Row(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(text,style: TextStyle(fontWeight: FontWeight.bold,fontSize:15,color: Colors.white),)
          ],
          )
            )
            ],
          
            )
              
              
  

  );


  Widget MXOriginalWebContainer(String imgurl)=>Padding(padding: EdgeInsets.all(10.0),
  child:
    Container(
      height:200,
      width:180,
      decoration: BoxDecoration(borderRadius:BorderRadius.circular(10)),
      child:ClipRRect(borderRadius:BorderRadius.circular(10.0),child:Image.network(imgurl,fit: BoxFit.fill,))

  ));


  Widget TrendingShowsContainer(String imgurl)=>Padding(padding: EdgeInsets.all(10.0),
  child:
    Container(
      height:200,
      width:180,
      decoration: BoxDecoration(borderRadius:BorderRadius.circular(10)),
      child:ClipRRect(borderRadius:BorderRadius.circular(10.0),child:Image.network(imgurl,fit: BoxFit.fill,))

   )
  );


  
}
import "package:flutter/material.dart";

class allPosters extends StatefulWidget{
  const allPosters ({super.key});
  @override

  State<allPosters> createState()=>_allPostersState();

}

class _allPostersState extends State<allPosters>{

  var col=Colors.blue;

  @override
  Widget build(BuildContext context){
    return Scaffold(

      backgroundColor: const Color.fromARGB(255, 32, 71, 129),
   
      body:  SingleChildScrollView(child:Padding(padding:EdgeInsets.all(10.0),
        child:
        Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child:Row(
                  children: [

                    homepagebanner("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLgkAqQG4Fpa-jgRRN0qig-PsDsFYGScHs9Q&usqp=CAU"),
                    homepagebanner("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRenu0L5XCFaKAltALHQqXZwV_-H2A10tFi2A&usqp=CAU"),
                    homepagebanner("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQgqjPfuDqBOUpnyyx4PbZ-Pjek0lsyJp7LQQ&usqp=CAU"),
                    homepagebanner("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-AeWGdIskvWcOSYXtLwbaFU-ndK7RmeKEOg&usqp=CAU"),
                    homepagebanner("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdwvi6e1d5lfBmf5zczag5d4z2nzE9AM7gzg&usqp=CAU"),
                    homepagebanner("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSevkmaXEenPfbtrG7X5tp9jepK1F1ApN2LGg&usqp=CAU"),
                  ],)
                  
              ),
              
              
              SingleChildScrollView(scrollDirection: Axis.horizontal,
                child:Row(
                  children:[
                    Iconcontainer("images/review.png", "List"),
                    Iconcontainer("images/download.png", "Downloads"),
                    Iconcontainer("images/video-player.png", "Mxtube"),
                    Iconcontainer("images/upcoming.png", "Upcomings"),
                    Iconcontainer("images/microphone.png", "Podcasts"),

                  ]
                )
              ),
              

              const Padding(
                padding: const EdgeInsets.symmetric(horizontal:10.0, vertical:2.0),
                child: Text("Continue Watching" ,style:TextStyle(fontWeight: FontWeight.bold ,color: Colors.white,fontSize: 18) ,),
              ),

              SingleChildScrollView(scrollDirection: Axis.horizontal,
                child: Row(children: [
                  continuecontainer("https://qqcdnpictest.mxplay.com/pic/bceab5497543938297f6412880d371f0/en/2x3/320x480/test_pic1682313365231_badged_1683018498630.webp"),
                  continuecontainer("https://qqcdnpictest.mxplay.com/pic/44d5a2c323f49026245bfad99e47b4f1/en/2x3/208x312/e6b9f8b3c29d311fef8e162920594620_1280x1920.webp"),
                  continuecontainer("https://qqcdnpictest.mxplay.com/pic/0a706d75fe0a324a6edbfd560f22e1d5/en/2x3/320x480/test_pic1681732166281_badged_1682489478429.webp"),
                ],),
              ),



              Padding(
                padding: const EdgeInsets.symmetric(horizontal:10.0, vertical:2.0),
                  child:
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text("Highly Active Movies" ,style:TextStyle(fontWeight: FontWeight.bold ,color: Colors.white,fontSize: 18),),
                        Icon(Icons.arrow_forward,color: Colors.white,),
                        ])
              ),




              SingleChildScrollView(scrollDirection:Axis.horizontal ,child:
              Row(children: [
                highlyactivecontainer("https://qqcdnpictest.mxplay.com/pic/50ad9260a0b79fd478bb60322e003985/en/16x9/320x180/test_pic1667719184529.webp"),
                highlyactivecontainer("https://qqcdnpictest.mxplay.com/pic/b158cc19869b458246754df8725f15ad/en/2x3/320x480/test_pic1666765763856.webp"),
                highlyactivecontainer("https://qqcdnpictest.mxplay.com/pic/f7da7d4773de9e7046a7bf3c16303503/en/16x9/320x180/test_pic1674454337941_badged_1674454343487.webp"),
                highlyactivecontainer("https://qqcdnpictest.mxplay.com/pic/0824b942cecba2886443004138a8e860/en/2x3/208x312/b73fa454b62777d915a0f9271b92f1fa_1280x1920.webp"),
                highlyactivecontainer("https://qqcdnpictest.mxplay.com/pic/a5807c1f4c8ee63a3e474d1164546239/en/16x9/320x180/e811292d39f2b483a3d513c1582b3397_1920x1080.webp")
              ],)),

              Padding(padding:EdgeInsets.all(5.0),
                child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("MX Original Shows" ,style:TextStyle(fontWeight: FontWeight.bold ,color: Colors.white,fontSize: 18),),
                ]
              )
              ),

              SingleChildScrollView(scrollDirection:Axis.horizontal ,child:
              Row(children: [
                MxOriginalShow("https://qqcdnpictest.mxplay.com/pic/35145b6944a0b3cf9a363c040a3280ba/en/16x9/320x180/test_pic1681292113393.webp"),
                MxOriginalShow("https://qqcdnpictest.mxplay.com/pic/ee5f8ba6d087fc47627c1bb41bd9916d/en/16x9/320x180/test_pic1665995897686.webp"),
                MxOriginalShow("https://qqcdnpictest.mxplay.com/pic/2d97e7bf2c1989d9e526175531316a0d/en/2x3/320x480/test_pic1653545847373.webp"),
                MxOriginalShow("https://qqcdnpictest.mxplay.com/pic/500f8c5e98bf9d06e109d8b880a76342/en/2x3/208x312/85429f6de5c97988fd403bd5ebebe38a_1280x1920.webp"),
                MxOriginalShow("https://qqcdnpictest.mxplay.com/pic/3ac6ef72dc06e251ce5735b076a2f8cf/en/2x3/208x312/11a83e6c960f520a40d629e07a764bed_1280x1920.webp")
              ],)),
              

      
                  

              ],)
              
        
      ),
    )
    
    
    );



  }

  Widget homepagebanner(String imgurl) => Padding(
    padding: const EdgeInsets.all(9.0),
    child: 
        Container (
          height: 180,
          width:380,
          decoration: BoxDecoration(color: Colors.amber,borderRadius: BorderRadius.circular(15)),
          child:ClipRRect(borderRadius:BorderRadius.circular(15),
                  child:Image.network(imgurl,fit:BoxFit.cover,))
  
        ),
            
        
    );


  Widget Iconcontainer(String imgurl, String text)=> Padding(
    padding :EdgeInsets.all(12.0),
    child:Column(
      children: [
        Container(
          height:50,
          width: 50,
          decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(15)),
          child: Padding(padding: const EdgeInsets.all(8.0),child:Image.asset(imgurl),)



        ),
        Padding(
          padding:EdgeInsets.symmetric(vertical:4),
          child: Text(text,style: TextStyle(color: Colors.white),),
        )
      ],
    )
  );


  Widget continuecontainer(String imgurl)=> Padding(padding: EdgeInsets.all(10.0),
  child:
      Container(
        height:160,
        width:110,
        decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(15)),
          child:ClipRRect(borderRadius: BorderRadius.circular(4),child:Image.network(imgurl,fit: BoxFit.cover,),)

        
      ),

      
    
  );


  Widget highlyactivecontainer(String imgurl)=> Padding(padding: EdgeInsets.all(7.0),
  child:
      Container(
        height:160,
        width:100,
        decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(15)),
          child:ClipRRect(borderRadius: BorderRadius.circular(4),child:Image.network(imgurl,fit: BoxFit.cover,),)

        
      ),
  );


  Widget MxOriginalShow(String imgurl)=> Padding(padding: EdgeInsets.all(8.0),
  child:Container(
    height: 180,
    width:115,
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
    

    child: Stack(
      children: [
        Container(
          height: 180,
          width:115,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
          child:ClipRRect(borderRadius:BorderRadius.circular(5),
                child:Image.network(imgurl,fit: BoxFit.cover),)
        ),

        
        Padding(
          padding: const EdgeInsets.only(top:150),
          child: Container(
              height:17,
              width:17,
              decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(30)),
              // child: Padding(padding: EdgeInsets.symmetric(horizontal:40,vertical:100),
              child:Icon(Icons.add,size:15,color: Colors.black,)
              ),
        )
                
      
        
      ]
    ),
  ),
  );


  
}
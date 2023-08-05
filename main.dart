import 'package:flutter/material.dart';
import 'package:onemoremxplayer/SplashScreen.dart';
import 'package:onemoremxplayer/Movies.dart';
import 'package:onemoremxplayer/Tabbar.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:onemoremxplayer/Search.dart';
import 'package:page_transition/page_transition.dart';
import 'package:url_launcher/url_launcher.dart';
import 'Local.dart';

//one change




// void main() {
//   runApp(const MyApp());
// }
 void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options:const FirebaseOptions(
      apiKey:"AIzaSyCokBG8GIsLGbhm_4OSIp37h531rLNlHH8",
      appId: "1:1036504470355:android:5930245069cad87e0d87a6",
      messagingSenderId: "1036504470355	",
      projectId: "mxplayerclone",
  )
  );
  runApp(const MyApp());}




class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

      theme: ThemeData(
      
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:SplashScreen(title: "flutter"),
      // home:MyHomePage(title: "MyMXpalyer"),
      // home:MyHomePage(title: "MyMXpalyer"),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 
 var Screen = [
  localpage(),
  trendingShows_screen(),
  TabbarPage(),  
  Text('Audio', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)), ];
  

  int Selected_index= 0;
  

  

  void ontapped(int index){

    setState(() {
      Selected_index=index;
      
    });
  }
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(

      appBar: AppBar(
        backgroundColor:Color.fromARGB(255, 32, 71, 129),

        // leading icon
        leading: Padding(padding: EdgeInsets.symmetric(horizontal:8.0),
        child:Image.asset("images/pngwing.com.png", height:30 ,width:30),),
        title:const
        
        //title text 
          Row(
            children:[

              Text("MX",style: TextStyle(fontWeight:FontWeight.w500,color:Colors.white)),
              Text("PLAYER",style: TextStyle(fontWeight:FontWeight.w300,color:Colors.white ),)
            ],
          ),

        //ending icons 

            actions: [InkWell(
              child:Image.asset("images/search.png", height:25,width:25,color:Colors.white,),
              onTap: () {
                Navigator.push(context ,PageTransition(
                          curve:Curves.bounceOut,
                          type:PageTransitionType.leftToRight,
                          alignment:Alignment.topCenter,
                          child:Search_screen(),));
              },),
                SizedBox(width:15),
                Image.asset("images/notification.png", height:25,width:25,color:Colors.white),
                SizedBox(width:15),
                Image.asset("images/add.png", height:25,width:25,color:Colors.white,) 
              ],
            elevation: 0,),
      
      body:
        Center(child:Screen.elementAt(Selected_index)),
        bottomNavigationBar:BottomNavigationBar(
          type:BottomNavigationBarType.fixed,
          unselectedItemColor: Colors.white,
          selectedItemColor: Color.fromARGB(255, 153, 188, 248),
          backgroundColor: Color.fromARGB(255, 32, 71, 129),
          showUnselectedLabels: true,
          currentIndex: Selected_index,
          items:const [
            BottomNavigationBarItem(icon:Icon(Icons.folder),label:"Local", backgroundColor:Color.fromARGB(255, 32, 71, 129), ),
            BottomNavigationBarItem(icon:Icon(Icons.video_file),label:"Video",backgroundColor:Color.fromARGB(255, 32, 71, 129)),
            BottomNavigationBarItem(icon:Icon(Icons.live_tv),label:"Live",backgroundColor:Color.fromARGB(255, 32, 71, 129)),
            BottomNavigationBarItem(icon:Icon(Icons.tv),label:"Mxtube",backgroundColor:Color.fromARGB(255, 32, 71, 129)),
            BottomNavigationBarItem(icon:Icon(Icons.audio_file),label:"Audio",backgroundColor:Color.fromARGB(255, 32, 71, 129)),
            // BottomNavigationBarItem(icon:Icon(Icons.search),label:"Search",backgroundColor:Color.fromARGB(255, 32, 71, 129)),
          ],
          onTap:(int index) async{
            if (index==2){
              const url='https://www.mxplayer.in';
              if (await canLaunchUrl(Uri.parse(url))) {
                await launchUrl(Uri.parse(url));
              }
              else{
                throw 'Could not launch $url';
              }
              
            }else{ontapped(index);}
          }
          
      )  

    );
  }
}

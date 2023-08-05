
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

import 'package:onemoremxplayer/functions/login_service.dart';




class SplashScreen extends StatefulWidget{

  SplashScreen({super.key, required this.title});

  final String title;


  
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>{
  
  loginservice services=loginservice();
  @override

  void initState(){
    super.initState();
    //Don't try to use directly loginservice her first u need to make a var
    services.isLogin(context);
    // Timer(Duration(seconds:1), () {Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(_)=>LoginPage(),),);});
    }
  
  
 
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor:Color.fromARGB(255, 32, 71, 129),
      body:
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child:Image.asset("images/pngwing.com.png",height:70,width:70,),
              ),
              Text("MX Player",style: GoogleFonts.kaushanScript(fontSize:20,color:Colors.white))
            ],
          ),
        ),
        

      
    );
  }
}
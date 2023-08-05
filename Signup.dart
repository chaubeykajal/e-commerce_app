import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onemoremxplayer/main.dart';

import 'Login.dart';




class SignupScreen extends StatefulWidget{

  const SignupScreen({super.key});



  @override
  State<SignupScreen> createState()=>_SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen>{
  
  TextEditingController Random_Email= TextEditingController();
  TextEditingController Random_Password= TextEditingController();


  Future <void> CreateUserwithemailpassword(
    String useremail,String userpassword)async{
      try{
      UserCredential UserDetails= await FirebaseAuth.instance.createUserWithEmailAndPassword(email:useremail , password:userpassword );
      User? users=UserDetails.user;
      print(users!.uid);
      print("USer Registered");
      Navigator.push(context, MaterialPageRoute(builder:(context)=>MyHomePage(title: "home page")));
      
      }

      catch(error){
          print("Error: $error");
      }
    }
  

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign in"),

      ),
      backgroundColor:Color.fromARGB(255, 32, 71, 129),
      body:Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 1200,
              width:1000,
              child: Image.asset("images/sunrise.jpeg",fit:BoxFit.fill)),
          ),

          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: Container(
                height:500, 
                width: 500,
                decoration: BoxDecoration(
                  color: Colors.transparent.withOpacity(0.6),border: Border.all(color: Colors.white,width:0.5)),
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children:[
                    Padding(
                      padding: const EdgeInsets.only(top:20.0,right:20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(child: Text("SignUp", style:GoogleFonts.kalam(fontSize:40, fontWeight:FontWeight.bold,color:Colors.white))),
                          
                          SizedBox(height:20),
                          
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal:20.0),
                            child: Text("Email Address",style:GoogleFonts.courgette(fontSize:20,fontWeight:FontWeight.w300,color: Colors.white)),
                          ),
                         
                          SizedBox(height:5),

                          Padding(padding: EdgeInsets.symmetric(horizontal:20.0),
                          child:Container(
                            height:40,
                            width:270,
                            decoration:BoxDecoration(color: Color.fromARGB(255, 251, 249, 249),),
                            
                            child:Padding(
                              padding: const  EdgeInsets.all(8.0),
                              child: TextField(
                                controller: Random_Email,
                                decoration:const InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "jum778578@gamil.com",
                                  hintStyle: TextStyle(fontSize:14,color:Colors.black54)
                            
                                ),
                              ),
                            )) ),

                          SizedBox(height:15),

                            Padding(
                            padding: const EdgeInsets.symmetric(horizontal:20.0),
                            child: Text("Password",style:GoogleFonts.courgette(fontSize:20,fontWeight:FontWeight.w300,color: Colors.white)),
                          ),
                         
                          SizedBox(height:5),

                          Padding(padding: EdgeInsets.symmetric(horizontal:20.0),
                          child:Container(
                            height:40,
                            width:270,
                            decoration:BoxDecoration(color: Color.fromARGB(255, 251, 249, 249),),
                            
                            child: Padding(
                              padding: const  EdgeInsets.all(8.0),
                              child: TextField(
                                controller:Random_Password,
                                decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Enter your password",
                                  hintStyle: TextStyle(fontSize:14,color:Colors.black54),
                                   
                            
                                ),
                              ),
                            )) ),

                             SizedBox(height:15),

                            Padding(
                            padding: const EdgeInsets.symmetric(horizontal:20.0),
                            child: Text("Confirm Password",style:GoogleFonts.courgette(fontSize:20,fontWeight:FontWeight.w300,color: Colors.white)),
                          ),
                         
                          SizedBox(height:5),

                          Padding(padding: EdgeInsets.symmetric(horizontal:20.0),
                          child:Container(
                            height:40,
                            width:270,
                            decoration:BoxDecoration(color: Color.fromARGB(255, 251, 249, 249),),
                            
                            child:const  Padding(
                              padding:  EdgeInsets.all(8.0),
                              child: TextField(
                            
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Confirm your password",
                                  hintStyle: TextStyle(fontSize:14,color:Colors.black54),
                                   
                            
                                ),
                              ),
                            )) ),


                          SizedBox(height:18),
                         
                            
                            Padding(
                              padding:EdgeInsets.all(15.0),
                              child: 
                              InkWell(
                                onTap:(){ CreateUserwithemailpassword(Random_Email.text, Random_Password.text);},
                                child: Container(
                                  height:40,
                                  width:90,
                                  decoration:BoxDecoration(color:Color.fromARGB(255, 246, 186, 68),borderRadius: BorderRadius.circular(30)),
                                  child:
                                  Center(child: Text("SignUp",style: GoogleFonts.oswald(fontSize:20, fontWeight:FontWeight.bold,color:Colors.white),)),
                                  ),
                              ),
                            ),
                              // ),

                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal:15.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("Already have account?" ,style:GoogleFonts.courgette(fontSize:15,color: Colors.white)),
                                    InkWell(onTap: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                                    },
                                    child:Text('Login',style: GoogleFonts.courgette(fontSize:15,color:Color.fromARGB(255, 246, 186, 68)))
                                ) ],
                                                                ),
                              ),
                            
                          ],
                            ))
                          
                        
                  
                        ],
                      )
                    
                    )
      ))]
                )
            

      
    );
  }

}


// body:Padding(
//         padding: const EdgeInsets.only(top:150.0),
//         child:
//           Center(
//           child: Column(
//             children: [
//               Container(
//                   height:60,
//                   width:400,
//                   decoration: BoxDecoration(border:Border.all(color: Colors.blueGrey),borderRadius: BorderRadius.circular(20),color:Color.fromARGB(255, 235, 219, 172)),
//                   child:
//                     TextField(
//                       controller:Random_Email,
//                       cursorHeight:10,
                      
//                       style: const TextStyle(fontSize:15,color:Color.fromARGB(255, 21, 23, 26)),
//                       scrollPadding: const EdgeInsets.all(15),
//                       cursorColor:const  Color.fromARGB(255, 237, 228, 202),
//                       decoration: const InputDecoration(
//                       border:OutlineInputBorder(
//                       borderSide: BorderSide.none),
//                       labelText:("Email_id"),
//                       labelStyle:TextStyle(fontSize:20,color:Colors.black) ,
//                       hintText:"Enter your email_id",
//                       hintStyle: TextStyle(fontSize:20,color:Colors.black)),

//                     )
        
//                   ),
//                   SizedBox(height:10 ,),
        
//                   Container(
//                   height:60,
//                   width:400,
//                   decoration: BoxDecoration(border:Border.all(color: Colors.blueGrey),borderRadius: BorderRadius.circular(20),color:Color.fromARGB(255, 227, 212, 167)),
//                   child:
//                     TextField(
                      
//                       controller:Random_Password,
//                       cursorHeight:10,
                      
//                       style: const TextStyle(fontSize:15,color:Color.fromARGB(255, 12, 13, 14)),
//                       scrollPadding: const EdgeInsets.all(15),
//                       cursorColor:const  Color.fromARGB(255, 237, 228, 202),
//                       decoration: const InputDecoration(
//                       border:OutlineInputBorder(
//                       borderSide: BorderSide.none,),
//                       label: Text("Password"),
//                       labelStyle:TextStyle(fontSize:20,color:Colors.black),
//                       hintText:"Enter your password" ,
//                       hintStyle: TextStyle(fontSize:20,color:Colors.black))
//                     )
        
//                   ),
        
//                   SizedBox(height:10),
//                   InkWell(
//                     child: Container(
//                     height:60,
//                     width:280,
//                     decoration: BoxDecoration(border:Border.all(color: Colors.amberAccent),color: Colors.amber,borderRadius:BorderRadius.circular(20)),
//                     child:Center(child: Text("Sign in",style: TextStyle(color: Colors.black) ,))
//                     ),
        
//                     onTap: (){
//                       CreateUserwithemailpassword(Random_Email.text,Random_Password.text);{
//                         Navigator.push(context ,PageTransition(
//                           curve:Curves.bounceOut,
//                           type:PageTransitionType.leftToRight,
//                           alignment:Alignment.topCenter,
//                           child:MyHomePage(title: "mxplayer"),

//                         ));
//                       }
        
//                     },
//                   ),
        
//                 ],
          
            
//           ),
//         )
//       )
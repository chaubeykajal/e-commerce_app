import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onemoremxplayer/main.dart';
import 'package:onemoremxplayer/Signup.dart';


class LoginPage extends StatefulWidget{

  const LoginPage({super.key});
  @override
  State<LoginPage> createState()=>LoginPageState ();
    

}

// ignore: camel_case_types
class LoginPageState extends State<LoginPage>{
  var Controller_input="";
  TextEditingController username = TextEditingController();
  TextEditingController emailId = TextEditingController();
  TextEditingController password = TextEditingController();

  Future <void> loginUserWithEmailandPassword(
    String email ,String password) async{
    try {
      UserCredential userdetails= await FirebaseAuth.instance.signInWithEmailAndPassword(
      email:email,password:password);
      
      User? users=userdetails.user;
      print(users!.uid);
      print("Login Succesful");
      Navigator.push(context, MaterialPageRoute(builder:(context)=>MyHomePage(title: "home page")));
    }catch(error){
      print("error:$error");
    }
    }
    

  

  @override

  Widget build(BuildContext context){
    
    return Scaffold(
      
    
      body:Stack(
        children: [
          Container(
            height: 1200,
            width:1000,
            child: Image.asset("images/landscap.jpeg",fit:BoxFit.fill)),

          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: Container(
                height:500, 
                width: 500,
                decoration: BoxDecoration(
                  color: Colors.transparent.withOpacity(0.6),border: Border.all(color: Colors.white,width:0.5)),
                child:Column(
                  children:[
                    Padding(
                      padding: const EdgeInsets.only(top:20.0,right:20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(child: Text("Login", style:GoogleFonts.kalam(fontSize:40, fontWeight:FontWeight.bold,color:Colors.white))),
                          
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
                              padding:  EdgeInsets.all(8.0),
                              child: TextField(
                                controller:emailId,
                                decoration: InputDecoration(
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
                              padding:const  EdgeInsets.all(8.0),
                              child: TextField(
                              controller: password,
                                decoration:const  InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Enter your password",
                                  hintStyle: TextStyle(fontSize:14,color:Colors.black54),
                                   
                            
                                ),
                              ),
                            )) ),

                          SizedBox(height:18),
                         
                          
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Padding(padding: EdgeInsets.only(right:60),child:
                                InkWell(
                                  onTap: (){
                                    loginUserWithEmailandPassword(emailId.text, password.text);
                                  },
                                  child: Container(
                                    height:40,
                                    width:90,
                                    decoration:BoxDecoration(color:Color.fromARGB(255, 246, 186, 68),borderRadius: BorderRadius.circular(30)),
                                    child:
                                    Center(child: Text("Login",style: GoogleFonts.oswald(fontSize:20, fontWeight:FontWeight.bold,color:Colors.white),)),
                                    ),
                                ),),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text("Don't have account?" ,style:GoogleFonts.courgette(fontSize:15,color: Colors.white)),
                                    InkWell(onTap: (){
                                      Navigator.push(context , MaterialPageRoute(builder: (context)=>SignupScreen()));
                                    },
                                    child:Text('SignUp',style: GoogleFonts.courgette(fontSize:15,color:Color.fromARGB(255, 246, 186, 68)))
                                 ) ],
                                )
                              ],
                            ),
                          // SizedBox(height:15,),
                        
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Container(
                            height:20,
                            width:130,
                            decoration: BoxDecoration(color:Colors.transparent.withOpacity(0.6),border: Border.all(color: Colors.white, width:0.4),
                            borderRadius:BorderRadius.circular(30)),
                            child:Padding(
                              padding: const EdgeInsets.symmetric(horizontal:10.0),
                              child: Row(children:[
                              Image.asset("images/googlelogo.jpeg",height:10,width:10,),
                              SizedBox(width:5),
                              Text("login with google",style:GoogleFonts.courgette(fontSize:10,color:Colors.white))
                                                     ] ),
                            )
                          ),
                        )
                        
                  
                        ],
                      )
                    
                    )
                  ]
                )
            
              ),
            ),
          )
        ],
      )
     );

  }
}



// Widget LoginButton (String text)=>Padding(padding: EdgeInsets.symmetric(vertical:10),
  
//   child: 
//     Container(
//         height:15,
//         width:60,
//         decoration: BoxDecoration(border:Border.all(color: Colors.white),borderRadius: BorderRadius.circular(20),color: Color.fromARGB(255, 247, 187, 207),),
//         child:Center(
//           child: Text(text,style:GoogleFonts.courgette(fontSize:9,)
//           ),
//       )
//       ),
//     );
//  }
//  body:
//         Center(
//               child: 
//               Stack(
//                 children: [
                  
//                 Container(
//                 height:350,
//                 width:370,
//                 decoration:BoxDecoration(borderRadius: BorderRadius.circular(10),border: Border.all(color: Colors.white,width: 2.0),color:const Color.fromARGB(255, 247, 187, 207)),),
                
//                 Padding(
//                   padding: const EdgeInsets.all(18.0),
//                   child: Container(
//                   height:320,
//                   width: 200,
//                   decoration:BoxDecoration(borderRadius: BorderRadius.circular(10),color:Color.fromARGB(234, 153, 221, 203)),
//                   child:
//                     Padding(
//                       padding: const EdgeInsets.all(35.0),
//                       child: Column(
//                         // mainAxisAlignment: MainAxisAlignment.center,
//                         crossAxisAlignment:CrossAxisAlignment.start,
//                          children:[
                    
//                           Center(child: Text("Welcome",style: GoogleFonts.courgette(fontSize:20,color: Colors.white,),)),
                    
//                           SizedBox(height:18),
                    
//                           Text("Username",style: GoogleFonts.courgette(fontSize:10,color:Color.fromARGB(255, 32, 71, 129),),),
                          
            
//                           Container(
//                             height:18,
//                             width:130,
//                             decoration: BoxDecoration(border:Border.all(color: Colors.white),borderRadius: BorderRadius.circular(20),),
//                           child:
//                              TextField(
//                               controller:username,
//                               cursorHeight:7,
//                               style: const TextStyle(fontSize:10,color:Color.fromARGB(255, 32, 71, 129)),
//                               scrollPadding: const EdgeInsets.all(15),
//                               cursorColor:const  Color.fromARGB(255, 237, 228, 202),
//                               decoration: const InputDecoration(
//                                border:OutlineInputBorder(
//                                 borderSide: BorderSide.none
//                                ),
                               
                              
          
//                                 // labelText: "name",
//                                 // labelStyle: TextStyle(color: Color.fromARGB(255, 32, 71, 129)),
//                                 hintText: "Name",
//                                 hintStyle: TextStyle(color: Colors.white ,fontSize:10,),
//                                 contentPadding: EdgeInsets.symmetric(horizontal:6),
//                               ),
//                               ),
//                             ),
//                             SizedBox(height:10),
//                             Text("Email-Id",style: GoogleFonts.courgette(fontSize:10,color:Color.fromARGB(255, 32, 71, 129),),),
          
                  
//                               Container(
//                                  height:18,
//                                  width:130,
//                                 decoration: BoxDecoration(border:Border.all(color: Colors.white),borderRadius: BorderRadius.circular(20)),
//                                 child: TextField(
//                                   controller:emailId,
//                                   cursorHeight: 7,
                                  
//                                   style: TextStyle(fontSize:10,color:Color.fromARGB(255, 32, 71, 129)),
//                                   // scrollPadding: EdgeInsets.all(15),
//                                   cursorColor: Color.fromARGB(255, 237, 228, 202),
          
                                
                                
//                                   decoration:const  InputDecoration(
//                                     border: OutlineInputBorder(borderSide:BorderSide.none),
//                                     // labelText: "name",
//                                     hintText: "XXXXX@gmail.com",
//                                     hintStyle: TextStyle(color: Colors.white,fontSize:10,),
//                                     contentPadding: EdgeInsets.symmetric(horizontal:1,vertical: 8)
//                                     ),
//                                   ),
//                                 ),
//                             const SizedBox(height:10),
//                             Text("Password",style: GoogleFonts.courgette(fontSize:10,color:Color.fromARGB(255, 32, 71, 129),),),
                  
//                               Container(
//                                 height:19,
//                                 width:130,
//                                 decoration: BoxDecoration(border:Border.all(color: Colors.white),borderRadius: BorderRadius.circular(20)),
//                                 child: TextField(
                                  
//                                   controller:password,
//                                   cursorHeight: 7,
          
//                                   style: TextStyle(fontSize:10,color:Color.fromARGB(255, 32, 71, 129)),
//                                   scrollPadding: EdgeInsets.all(10),
//                                   cursorColor: Color.fromARGB(255, 237, 228, 202),
//                                   decoration: InputDecoration(
//                                     border:OutlineInputBorder(borderSide:BorderSide.none)                              // labelText: "name",
//                                     // hintText: "Name",
//                                     // hintStyle: TextStyle(color: Color.fromRGBO(168, 32, 77, 0.861),fontSize:10),
//                                     // contentPadding: EdgeInsets.all(3)
//                                     ),
//                                   ),
//                                 ),
          
          
//                                 Row(
//                                     children: [
//                                       InkWell(
                                        
//                                         child:LoginButton("Login"),
                                        
//                                         onTap:(){
//                                           loginUserWithEmailandPassword(
//                                             emailId.text,password.text
//                                           );   
//                                           Navigator.push(context, 
//                                             PageTransition(
//                                               curve:Curves.bounceOut,
//                                               type:PageTransitionType.rotate,
//                                               alignment: Alignment.centerLeft,
//                                               child:MyHomePage(title: "come on",),
//                                             ),
//                                             );               
//                                        }
//                                        ),
                                      
//                                       SizedBox(width:9),
        
//                                       InkWell(
//                                         onTap:(){
//                                           Navigator.push(context,MaterialPageRoute(builder: (context)=>SignInScreen()));
//                                           // TabbarPage()));
//                                         },
//                                         child:LoginButton("Sign In")
//                                       )
//     ]
//                                   )
                      
//                       ]
//                     ),
//                   )
                      
//                   ),
//                 ),


//             Padding(
//               padding: const EdgeInsets.only(top:18,left:200.0,bottom:10.0,right:10.0),
//               child: Container(
//               height:320,
//               width:150,
//               decoration: BoxDecoration(border: Border.all(color: Colors.white)),
//               child:ClipRRect(
//                     // borderRadius: BorderRadius.only(bottomRight:),
//                     child:Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSajKZUpkARQplzHOYUdfCm_5NI7XYESSD9FQ&usqp=CAU",fit: BoxFit.fill,),),
//               )
//               )],
//               ),
//             ),
      
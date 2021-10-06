import 'dart:async';

import 'package:animated_text_kit/animated_text_kit.dart';

import 'package:flutter/material.dart';

import 'package:testapp/loginscreen.dart';


class Splashscreen extends StatefulWidget {
  @override
  _Splashscreenstate createState() => _Splashscreenstate();
  
}

class _Splashscreenstate extends State<Splashscreen> {
  

   final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  
 @override  
  void initState() {  
    super.initState();  
    Timer(Duration(seconds: 4),  
            ()=>Navigator.pushReplacement(context,  
            MaterialPageRoute(builder:  
                (context) => Logincreen()        
            )  
         )  
    );  
  }  
  
            @override
            Widget build(BuildContext context) {


        
                                return 
                                
                                Scaffold(
                                  key: _scaffoldKey,
                                  backgroundColor: Color(0xffa52a2a),
                                  body:  Center(
                                         child: Column(
                                         mainAxisAlignment: MainAxisAlignment.center,
                                         children: <Widget>[
                                           Image.asset(
                                             "assets/Images/log.png",
                                              height: 450,
                                              width: 450,
                                              color:Colors.black
                                            ) ,
                                            SizedBox(height: 20,),
                                            SizedBox(
                                            width: 250.0,
                                            child: DefaultTextStyle( style: const TextStyle(
                                            fontSize: 30.0,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'Montserrat' ),
                                            child: AnimatedTextKit(
                                            repeatForever: true,
                                            isRepeatingAnimation: true,
                                            animatedTexts: 
                                            [
                                            TyperAnimatedText('Discover World With Us'),
                                            ] ,
                                            ),
    
                                            ),
                                            )
       
        
         
           
                                 ]
                                )
                                ),

                                );
                              }




  
  }
                            
                          
                  
                   



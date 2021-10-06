import 'dart:math';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';
import 'package:testapp/homepage.dart';

bool otpclicked=false;
class Logincreen extends StatefulWidget {
  @override
  _Loginscreenstate createState() => _Loginscreenstate();
  
}

class _Loginscreenstate extends State<Logincreen> {
  
   TextEditingController phonecontroller=TextEditingController();
   TextEditingController otpcontroller=TextEditingController();
   final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
   static const textbgcolor = Color(0xffDBDBDB);
 
  
        @override
        Widget build(BuildContext context) {

        return 
        new WillPopScope(
        onWillPop: ()async {
        showDialog(
                context: context,
                builder: (ctx) => AlertDialog(
                  title: Text("Exit",style:TextStyle(fontWeight: FontWeight.w800,color: Color(0xffa52a2a),fontFamily: 'Montserrat')),
                  content: Text("Are you sure you want to exit?",style: TextStyle(fontWeight: FontWeight.w900,color: Colors.black,fontFamily: 'Montserrat'),),
                  actions: <Widget>[
                    FlatButton(
                      color: Color(0xffa52a2a),
                      onPressed: () {
                        Future.delayed(const Duration(milliseconds: 1000), () {
                        SystemChannels.platform.invokeMethod('SystemNavigator.pop');});
                    
                      },
                      child: Text("YES",style:TextStyle(fontWeight: FontWeight.w900,color: Colors.white,fontFamily: 'Montserrat'),),
                    ),
                    Spacer(),
                     FlatButton(
                         color: Color(0xffa52a2a),
                      onPressed: () {
                       Navigator.of(ctx).pop();
                      },
                child: Text("CANCEL",style: TextStyle(fontWeight: FontWeight.w900,color:Colors.white,fontFamily: 'Montserrat'),),
                    ),
                  ],
                ),
              );
              return true;
  },
                             child:
                                
                                Scaffold(
                                  key: _scaffoldKey,
                                  backgroundColor: Color(0xffa52a2a),
                                  body:  
                                Center(
                                child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
              
                                 Image.asset(
                                 "assets/Images/log.png",
                                              height: 250,
                                              width: 250,
                                              color:Colors.black
                                            ) ,
              

             SizedBox(height: 20,),
             Container(
             height:50,
             padding: EdgeInsets.symmetric(horizontal: 30),
                child: TextField(
                controller: phonecontroller,
                keyboardType: TextInputType.number,
                textAlign:TextAlign.center,
                decoration: InputDecoration(
                fillColor: textbgcolor,
                filled: true,
                enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide(color:Colors.black,width: 1)),
                focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide(color:Colors.black,width: 1)),
                hintText: 'Mobile Number',hintStyle: TextStyle(fontWeight: FontWeight.normal,color: Colors.black,fontFamily: 'Montserrat'),)
              ),
            ),
             
          SizedBox(height: 20,),
          Container(
             height: 50,
             padding: EdgeInsets.symmetric(horizontal: 30),
             width: MediaQuery.of(context).size.width-60,
             decoration: BoxDecoration(
             color: Colors.black, borderRadius: BorderRadius.circular(10)),
             child: FlatButton(

                onPressed: () {
                   FocusScope.of(context).unfocus();
                   String strphone=phonecontroller.text;
                   if(strphone.isEmpty) {
                   Fluttertoast.showToast( 
                                   msg: "Mobile Number Required", 
                                   backgroundColor: Colors.grey, 
                                 );
                   }else{
                   Navigator.push(context, MaterialPageRoute(builder: (_) =>  HomeScreen()));
                  }
                
                },
                child: Text(
                  'LOGIN',
                  style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontFamily: 'Montserrat',fontSize: 25),
                ),
              ),
            ),
          
      
        
         
           
          ]
                    )
        
      ),

                                ));
                              }




  
  }
                            
                          
                  
                   



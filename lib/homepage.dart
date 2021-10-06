import 'dart:async';
import 'dart:core';
import 'dart:ui';
import 'package:carousel_slider/carousel_slider.dart';

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:testapp/loginscreen.dart';
import 'package:testapp/model.dart';


String result='';


int globalbadgecount=0;



bool searchlistvisible=false;


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
  
}

class _HomeScreenState extends State<HomeScreen> {
 
   final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
 
     List<Model> list=[

   Model(strimage: "assets/Images/fortkochi.jpg",strdec:"Fort Kochi, the western part of the Kochi city of Ernakulam district in Kerala. It is about 12 km away from Ernakulam Town. Fort Kochi has played an important role in the history of Kerala. Fort Kochi also has several attractions like the Santa Cruz Basilica. ",strtitle:"FortKochi",),
     Model(strimage: "assets/Images/alappey.jpg",strdec:"Alappuzha (Alleppey) is known as ‘the Venice of the East’. Offering the best tourist places in Alleppey, this charming place is the hub of Kerala’s backwaters and is home to a huge network of backwaters and more than thousand houseboats.",strtitle:"Alleppey",),
      Model(strimage: "assets/Images/munnar.jpg",strdec:"Munnar is one of the most popular hill-resort towns in Kerala and in southern India. Munnar is located on the Western Ghats, situated in the Idukki district.We can witness the nature's beauty at its best over Munnar. Gorgeous Clouds at Munnar refreshes our mind and rejuvenate our soul.",strtitle:"Munnar",),
       Model(strimage: "assets/Images/wayanad.jpg",strdec:"Adorning the northern hills of Kerala is the beautiful district of Wayanad, maintained by the District Tourism Promotion Council, Wayanad.   ",strtitle:"Wayanad",),
     
    
    
  

    
  ];

@override
  void initState() {
    super.initState();
      setState(() {
        
      });
     
    
  }
            @override
            Widget build(BuildContext context) {


        
                                return
                                new WillPopScope(
        onWillPop: ()async {
          Navigator.push(context,  
            MaterialPageRoute(builder:  
                (context) => Logincreen()  
            )  
         );
    return true;
  },
        child:
                                Scaffold(
                                  key: _scaffoldKey,
                                   backgroundColor: Colors.black,
                                
                                  
                                  body:
                                
                                  ListView(
                                    shrinkWrap: true,

                              
                                 
 children: <Widget>[
   Container(
     transform: Matrix4.translationValues(0, -15, 0),
    child:CarouselSlider(
              items: [
                  
                                            Image.asset(
          
                                              "assets/Images/kadhakali.jpg",
                                               width: MediaQuery.of(context).size.width,
                                                  height: 500,
                                            ) ,
                                             Image.asset(
          
                                              "assets/Images/k3.jpg",
                                             width: MediaQuery.of(context).size.width,
                                             height: 500,
                                            ) ,
               
                //2nd Image of Slider
               
  
          ],
              
            //Slider Container properties
              options: CarouselOptions(
                height: 180.0,
                enlargeCenterPage: true,
                autoPlay: true,
               
             //   autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(milliseconds: 500),
                viewportFraction: 1,
              ),
          ),),
            Container(
              transform: Matrix4.translationValues(0, -10, 0),
            child:Text('Discover Kerala',textAlign: TextAlign.center, style:TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontFamily: 'Montserrat',fontSize: 20)),
            ),    
                   
SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Column(
          children: <Widget>[
          
             ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount:4,
                padding: EdgeInsets.only(left: 10,right: 10,bottom: 20),
                itemBuilder: (context,index){
                  return  Card(
                    color: Color(0xffa52a2a),
            elevation: 4,
            child: 
            Container(
           
           // padding: EdgeInsets.only(right: 10),
           child: Column(
              children: [
                
          
                Container(
               
                  child:Image.asset(list[index].strimage,
                     
                                                
                                             //  width: 100,height:40
                                             
                                            )),
               Container(
               
                 padding: EdgeInsets.only(left: 10,right: 10,bottom: 20,top: 10),
                  child:  Column(children: [
                    Text(list[index].strtitle,textAlign: TextAlign.center, style:TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontFamily: 'Montserrat',)),
                  
                      Text(list[index].strdec,textAlign: TextAlign.justify, style:TextStyle(fontWeight: FontWeight.normal,color: Colors.white,fontFamily: 'Montserrat',)),
                  
                    ],),
                    
                     
                )

             //  buildItem(context, index),

             
              ],
            )
           
          ));
                })
          ],
        ),
      )
      
                             
                                
                                  ],)
                               
                                ));

                              }
 
 

  
  


}
  
  

 
                            
                          
                  
                   


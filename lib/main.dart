

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:testapp/splashscreen.dart';

Future<void> main() async {

 
  runApp(MyApp());
  
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      
        ));
    return MaterialApp(
       theme: ThemeData(
       appBarTheme: AppBarTheme(
     color: Colors.black,
  )),
   
      debugShowCheckedModeBanner: false,
      home: Splashscreen(),
      
    );
  }
}


 




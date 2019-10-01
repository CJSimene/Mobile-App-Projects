import 'package:flutter/material.dart';
import 'package:simene_app/Pages/loginpage.dart';
import 'package:simene_app/Pages/homepage.dart';

class Page1 extends StatelessWidget {

  final routes = <String, WidgetBuilder>{
    LoginPage.tag: (context)=>LoginPage(),
    Homepage.tag: (context)=>Homepage(),
  };


  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
        
      ),
      home: LoginPage(),
      routes: routes,
      );

    
  }
}
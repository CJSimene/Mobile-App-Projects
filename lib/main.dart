import 'package:flutter/material.dart';
import 'package:simene_app/Pages/Page1.dart';
import 'package:simene_app/Pages/Page2.dart';



void main() => runApp(new MyApp());



class MyApp extends StatefulWidget {
  MyAppState createState()=> MyAppState();

}

class MyAppState extends State<MyApp>{
  int _currentIndex=0;
  Widget callPage(int currentIndex){
    switch (currentIndex){
      case 0: return Page1();
      case 1: return Page2();
      break;
      default: return Page1();

    }

  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My First Application',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Simene Application'),
        ),
        body: callPage(_currentIndex),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (value){
            _currentIndex=value;
            setState(() {
            
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.add_to_home_screen),
              title: Text('Login')
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_box),
              title: Text('Calculator')
            ),
          ],
        ),
        )
      );

  }
  
}
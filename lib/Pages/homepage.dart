import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  static String tag = 'home-page';
  @override
  Widget build(BuildContext context) {

    final simene = Hero(
      tag: 'ProfilePicture',
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: CircleAvatar(
          radius: 72.0,
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage('assets/simene.jpg'),
        ),
      ),
    );

    final welcome = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Welcome Mr.Simene',
        style: TextStyle(fontSize: 28.0, color: Colors.white),
      ),
    );

    final contents = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'PAGES UNDER DEVELOP! THANK YOU',
        style: TextStyle(fontSize: 15.0, color: Colors.red),
      ),
    );   

    final body = Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(28.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.blue,
          Colors.blueGrey,
        ])
      ),
      child: Column(
        children: <Widget>[
          simene, welcome, contents
        ],
      ),
    );
    return Scaffold(
      body: body,
      
    );
  }
}
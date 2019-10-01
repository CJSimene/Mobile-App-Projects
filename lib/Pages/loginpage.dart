import 'package:flutter/material.dart';

import 'homepage.dart';

class LoginPage extends StatefulWidget {
  static String tag = 'LoginPage';
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
  
  final images = Hero(
    tag: 'picture',
    child: CircleAvatar(
      backgroundColor: Colors.transparent,
      radius: 48.0,
      
    ),

  );
    
  final email = TextFormField(
    keyboardType: TextInputType.emailAddress,
    autofocus: false,
    initialValue: 'simenejames@gmail.com',
    decoration: InputDecoration(
      hintText: 'Email',
      contentPadding: EdgeInsets.fromLTRB(20.0, 10.0,20.0,10.0),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(32.0)
      ),
    )
  );

  final Password = TextFormField(
    keyboardType: TextInputType.emailAddress,
    autofocus: false,
    initialValue: 'password',
    obscureText: true,
    decoration: InputDecoration(
      hintText: 'Password',
      contentPadding: EdgeInsets.fromLTRB(20.0, 10.0,20.0,10.0),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(32.0)
      ),
    )
  );
  
  final loginButton = Padding(
    padding:  EdgeInsets.symmetric(vertical: 16.0),
    child: Material(
      borderRadius: BorderRadius.circular(30.0),
      shadowColor: Colors.lightBlueAccent.shade100,
      elevation: 5.0,
      child: MaterialButton(
        minWidth: 200.0,
        height: 42.0,
        onPressed: (){
          Navigator.of(context).pushNamed(Homepage.tag);
        },
        color: Colors.lightBlueAccent,
        child: Text('Log In', style: TextStyle(color: Colors.white)),

      ),
    ),
  );
  
  final forgotLabel = FlatButton(
    child:Text(
      'Forgot password?',
    style: TextStyle(color: Colors.black26),
  ),
  onPressed: () {},
  );


  


  return Scaffold(
    backgroundColor: Colors.white,
    body: Center(
      child: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.only(left: 25.0, right: 24.0),
        children: <Widget>[
          email,
          SizedBox(height: 8.0,),
          Password,
          SizedBox(height: 24.0),
          loginButton,
          forgotLabel,
        ],
      ) ,)
      
    );
  }
}
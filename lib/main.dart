import 'package:flutter/material.dart';
import 'package:hello_world/pages/login.dart';

void main(){
  runApp(MeuApp());
}

class MeuApp extends StatelessWidget {
  Widget build(BuildContext context){
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => HomeApp(),
        '/page2': (context) => Page2(),
        '/page3': (context) => Page3()
      },
    );
  }
}

class HomeApp extends StatelessWidget {
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Home Page"),),
        body: Center(
          child: Column(
            children: <Widget>[              
              RaisedButton(
                child: Text("Login"), onPressed: () {
                  Navigator.pushNamed(context, '/page2');
                },
              ),
              RaisedButton(
                child: Text("Login V2"), onPressed: () {
                  Navigator.pushNamed(context, '/page3');
                },
              ),
            ],
          ),
          ),
      )
    );
  }
}



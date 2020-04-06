import 'package:flutter/material.dart';

void main(){
  runApp(MeuApp());
}

class MeuApp extends StatelessWidget {
  Widget build(BuildContext context){
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => HomeApp(),
        '/page2': (context) => Page2()
      },
    );
  }
}

class Page2 extends StatelessWidget {
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Login"),),
        body: Padding(
          padding: EdgeInsets.all(10),
          child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Texto de exemplo"),
              Text("Texto de exemplo"),
              Text("Texto de exemplo"),
              Text("Texto de exemplo")
            ],
          )
        ),
          ),
      )
    );
  }
}

class HomeApp extends StatelessWidget {
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Home Page"),),
        body: Center(
          child: RaisedButton(
            child: Text("segunda pagina"), onPressed: () {
              Navigator.pushNamed(context, '/page2');
            },
            ),
          ),
      )
    );
  }
}
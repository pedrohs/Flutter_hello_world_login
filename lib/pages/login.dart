import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Login"),
          leading: IconButton(
                icon: const Icon(Icons.chevron_left), onPressed: () {
                    Navigator.pop(context);
                },
              )
          ),
        body: Padding(
          padding: EdgeInsets.all(10),
          child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextFormField(
                autofocus: true,
                keyboardType: TextInputType.number,
                style: TextStyle(fontSize:25),
                decoration: InputDecoration(
                  labelText: "CPF:"
                ),
                ),
                Divider(),
              TextFormField(
                keyboardType: TextInputType.text,
                obscureText: true,
                style: TextStyle(fontSize:25),
                decoration: InputDecoration(labelText: "Senha:"),
              ),
              Divider(),
              ButtonTheme(
                height: 60.0,
                child: RaisedButton(
                  child: Text("Entrar", style: TextStyle(color: Colors.white)), onPressed: () {},
                ),
              )
            ],
          )
        ),
          ),
      )
    );
  }
}

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
          top:60,
          left:40,
          right:40
        ),
        color:Colors.white,
      ),
    );
  }
}
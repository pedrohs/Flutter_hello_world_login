import 'package:flutter/material.dart';
import 'package:hello_world/pages/reset-password.dart';

class Page2 extends StatelessWidget {
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Login"),
          leading: IconButton(
                icon: const Icon(Icons.chevron_left), 
                onPressed: () {
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
        child: ListView(
          children: <Widget>[
            //Logo
            SizedBox(
              width: 128,
              height: 128,
              child: Image.asset("assets/logo.png"),
            ),
            //Espacamento
            SizedBox(height: 20),
            //Email input
            TextFormField(
              autofocus: false,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: 'E-mail',
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                )
              ),
              style: TextStyle(fontSize: 20),
            ),
            //Espacamento
            SizedBox(height: 20),
            //Senha input
            TextFormField(
              autofocus: false,
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Senha',
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                )
              ),
              style: TextStyle(fontSize: 20),
            ),
            //botão recuperar senha
            Container(
              height: 40,
              alignment: Alignment.centerRight,
              child: FlatButton(
                child: Text('Recuperar Senha',), 
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ResetPasswordPage(),
                    ));
                },
              ),
            ),
            //Espacamento
            SizedBox(height: 40,),
            //Botao login
            Container(
              height: 60,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin:Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops:[0.3, 1],
                  colors: [
                    Color(0xFFF58524),
                    Color(0xFFF92B7F)
                  ],
                ),
                borderRadius: BorderRadius.all(Radius.circular(5))
              ),
              child: SizedBox.expand(
                child: FlatButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                    Text(
                      "Login",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                        ),
                    ),
                    Container(
                      child: SizedBox(
                        child: Image.asset("assets/bone.png"),
                        height: 28,
                        width: 28,
                      ),
                    ),
                  ],),
                  onPressed: () => {},
                ),
              ),
            ),
            //Espacamento
            SizedBox(height: 10,),
            //Botão login facebook
            Container(
              height: 60,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                color: Color(0xFF3C5A99),
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),

              ),
              child: SizedBox.expand(
                child: FlatButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Login com Facebook",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white
                        ),
                        ),
                      SizedBox(
                        child: Image.asset("assets/fb-icon.png"),
                        height: 28,
                        width: 28,
                      )
                    ],
                  ), onPressed: () {},)
              ),
            ),
            //Espacamento
            SizedBox(height: 10,),
            Container(
              child: FlatButton(
                child: Text("Cadastre-se", textAlign: TextAlign.center,), onPressed: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
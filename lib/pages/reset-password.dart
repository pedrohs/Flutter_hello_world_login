import 'package:flutter/material.dart';

class ResetPasswordPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black38,
          onPressed: () => Navigator.pop(context, false),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(
          top:60,
          left: 40,
          right: 40,
        ),
        child: ListView(children: <Widget>[
          SizedBox(
            width: 200,
            height: 200,
            child: Image.asset("assets/reset-password-icon.png"),
          ),
          SizedBox(height: 15,),
          Text("Esqueceu sua senha?",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Colors.black38),
            ),
            SizedBox(height: 15,),
            Text("Por Favor, informe o email associado a sua conta para enviarmos o link de recuperação.",
            textAlign: TextAlign.justify,
            style: TextStyle(fontSize: 16, color: Colors.black45, fontWeight: FontWeight.w400),),
            //Espacamento
            SizedBox(height: 15,),
            //input email
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: "E-mail",
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20
                )
              ),
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20,),
            Container(
              height: 60,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0,1],
                  colors: [
                    Color(0xFFF58524),
                    Color(0xFFF92B7F)
                  ]                  
                ),
                borderRadius: BorderRadius.all(
                    Radius.circular(5)
                  )
              ),
              child: SizedBox.expand(
                child: FlatButton(
                  child: Text("Enviar",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                  ), onPressed: () {},
                )
              ),
            )
        ],
        ),
      ),
    );
  }
}
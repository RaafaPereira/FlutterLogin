import 'package:brasil_fields/brasil_fields.dart';
import 'package:flutter/material.dart';

import 'package:flutter/services.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.deepPurple,
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
                    style: new TextStyle(color: Colors.white, fontSize: 20),
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                      CpfInputFormatter(),
                    ],
                    decoration: InputDecoration(
                        labelText: "CPF",
                        labelStyle: TextStyle(color: Colors.white)),
                  ),
                  Divider(),
                  TextFormField(
                    autofocus: true,
                    obscureText: true,
                    keyboardType: TextInputType.text,
                    style: new TextStyle(color: Colors.white, fontSize: 20),
                    decoration: InputDecoration(
                        labelText: "Senha",
                        labelStyle: TextStyle(color: Colors.white)),
                  ),
                  Divider(),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(primary: Colors.white),
                    child: Text(
                      "Acessar",
                      style: TextStyle(color: Colors.deepPurple, fontSize: 15),
                    ),
                  ),
                ],
              ),
            )));
  }
}

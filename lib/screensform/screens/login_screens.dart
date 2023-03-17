import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  //Variable de tipo FormState
  //La variable formkey obtenos una referencia del FormState
  //Accedemos con variable a los valores que contengan los input
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: EdgeInsets.all(20.0),
      child: Form(
          key: formkey,
          child: Column(
            children: <Widget>[
              emailField(),
              passwordField(),
              Container(
                margin: EdgeInsets.only(top: 25.0),
              ),
              submitField(),
            ],
          )),
    );
  }

  Widget emailField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration:
          InputDecoration(labelText: 'Email', hintText: 'example@dominio.com'),
      validator: (value) {
        //print(value);
        if (!value!.contains("@")) {
          return "email invalido";
        }
      },
    );
  }

  Widget passwordField() {
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
        labelText: 'Contraseña',
        hintText: 'Contraseña',
      ),
      validator: (value) {
        print(value);
        if (value!.length < 6) return "Contraseña Invalida";
      },
    );
  }

  Widget submitField() {
    return ElevatedButton(
      child: Text("Enviar"),
      onPressed: () {
        formkey.currentState!.validate();
      },
    );
  }
}

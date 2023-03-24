import 'package:appmobile1/srcbloc/bloc/bloc.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  final bloc = Bloc();
  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[
          emailField(),
          passwordField(),
          Container(margin: EdgeInsets.only(top: 25.0),),
          submitButton(),
        ],
      ),
    );
  }

  Widget emailField() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: 'example@dominio.com',
        labelText: 'Email',
        errorText: '',
      ),
    );
  }

  Widget passwordField() {
    return TextField(
      decoration: InputDecoration(
        labelText: 'Contraseña',
        hintText: 'Contraseña',
      ),
    );
  }

  Widget submitButton() {
    return ElevatedButton(
      child: Text('Enviar'),
      onPressed: () {},
    );
  }
}

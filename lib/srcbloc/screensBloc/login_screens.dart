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
          Container(
            margin: EdgeInsets.only(top: 25.0),
          ),
          submitButton(),
        ],
      ),
    );
  }

  Widget emailField() {
    return StreamBuilder(
      stream: bloc.email,
      builder: (context, snapshot) {
        return TextField(
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            hintText: 'example@dominio.com',
            labelText: 'Email',
            errorText: snapshot.error.toString(),
          ),
          onChanged: (value) => bloc.changeEmail,
          /*onChanged: (value) {
          //Enviamos datos al string
          //Llamamos al emailController(/bloc.dart), sink y add enviamos el valor del usuario
          bloc.emailController.sink.add(value);
          },*/
        );
      },
    );
  }

  Widget passwordField() {
    return StreamBuilder(
      stream: bloc.password,
      builder: (context, snapshot) {
        return TextField(
          decoration: InputDecoration(
            labelText: 'Contraseña',
            hintText: 'Contraseña',
            errorText: snapshot.error.toString(),
          ),
          obscureText: true,
          onChanged: (value) => bloc.changePassword,
          /*onChanged: (value) {
          //Enviamos datos al string
          bloc.passwordController.sink.add(value);
          },*/
        );
      },
    );
  }

  Widget submitButton() {
    return ElevatedButton(
      child: Text('Enviar'),
      onPressed: () {},
    );
  }
}

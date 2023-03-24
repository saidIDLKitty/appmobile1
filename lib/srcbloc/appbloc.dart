import 'package:appmobile1/srcbloc/screensBloc/login_screens.dart';
import 'package:flutter/material.dart';

class Appbloc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home:Scaffold(
        body: LoginScreen(),
      ),
    );
  }
}
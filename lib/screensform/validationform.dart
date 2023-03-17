import 'package:flutter/material.dart';
import 'package:appmobile1/screensform/screens/login_screens.dart';

class Validation extends StatelessWidget {
  static const String routeName = "/validation";

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: Scaffold(
        body: Login(),
      ),
    );
  }
}

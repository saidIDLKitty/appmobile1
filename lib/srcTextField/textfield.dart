import 'dart:ffi';
import 'package:flutter/material.dart';

class MyTextField extends StatefulWidget {
  @override
  _MyTextFieldState createState() => new _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  String inputText = "";
  final TextEditingController controller =
      TextEditingController(); //instanciando
  void onSubmitted(String value) {
    setState(() {
      inputText = inputText + "\n" + value;
      controller.text = "";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Widget TextField'),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(hintText: "Ingrese el nombre"),
              onSubmitted: onSubmitted,
              controller: controller,
              //(String value) {print(value);},
            )
          ],
        ),
      ),
    );
  }
}

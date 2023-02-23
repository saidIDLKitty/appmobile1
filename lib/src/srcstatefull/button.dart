import 'package:flutter/material.dart';

class MyButton extends StatefulWidget {
  @override
  _MyButtonState createState() => new _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  String flutterText = "";
  int indice = 0;
  List<String> collections = ['Mirella', 'Jessica', 'Julissa', 'Carmela'];
  void onPressedButton() {
    //Metodo que define el estado a tomar
    setState(() {
      flutterText = collections[indice];
      indice = indice < 3 ? indice + 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Proyecto Statefull Widget"),
        backgroundColor: Colors.redAccent,
      ),
      body: Container(
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              flutterText,
              //"AMISTAD",
              style: TextStyle(fontSize: 40.0),
            ),
            IconButton(
                iconSize: 72,
                icon: const Icon(Icons.favorite_rounded),
                color: Colors.red,
                onPressed: onPressedButton),
          ],
        )),
      ),
    );
  }
}

import 'package:appmobile1/src/screens/card.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  final double iconSize = 30.0;
  final TextStyle textStyle = TextStyle(color: Colors.grey, fontSize: 30.0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("App Stateless Widget"),
        ),
        backgroundColor: Color.fromARGB(255, 253, 145, 181),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          // ignore: prefer_const_literals_to_create_immutables
          children: <Widget>[
            MyCardFlutter(
              title: Text("Call Police",
                  style:
                      textStyle //TextStyle(color: Colors.grey, fontSize: 20.0),
                  ),
              icon: Icon(Icons.phone, color: Colors.redAccent, size: 30.0),
            ),
            MyCardFlutter(
              title: Text("Archivo", style: textStyle),
              icon: Icon(Icons.attach_file,
                  color: Colors.greenAccent, size: iconSize),
            ),
            MyCardFlutter(
              title: Text("Descarga", style: textStyle),
              icon: Icon(Icons.archive,
                  color: Colors.orangeAccent, size: iconSize),
            )
            /*
            //Widget permite colocar varios widget dentro de distintas filas
            Card(
              child: Container(
                padding: EdgeInsets.all(20.0), //Diseñamos un border
                child: Column(
                  children: <Widget>[
                    Text(
                      "Call Police",
                      style: TextStyle(color: Colors.grey, fontSize: 30.0),
                    ),
                    Icon(Icons.phone, color: Colors.greenAccent, size: 30.0),
                  ],
                ),
                //child: Text("Koraima Cristina Leon Gavino"),
              ),
            ),
            */
          ],
        ),
      ),
    );
  }
}
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class Infinita extends StatefulWidget {
  static const String routeName = "/infinita";
  @override
  _InfinitaState createState() => _InfinitaState();
}

class _InfinitaState extends State<Infinita> {
  //suggestions: sugerencias tipo lista
  //WordPair: clase de combinacion de 2 palabras(English words)
  final suggestions = <WordPair>[];
  //Para guardar los elementos que hacemos click
  final saved = <WordPair>[];
  //Construimos una funcion
  //Construimos las filas
  ListTile buildRow(WordPair pair) {
    return ListTile(
      trailing: Icon(Icons.shopping_cart),
      title: Text(pair.asCamelCase),
      onTap: () {
        //Captura los eventos en la pantalla
        setState(() {
          //Renderiza los widgets
          saved.add(pair); //Agrega un elemento
        });
      },
    );
    /*return ListTile(
      leading: Icon(Icons.shopping_cart),
      title: Text(pair.asPascalCase), //Agrega formato a las palabras
    );*/
  }

  @override
  Widget build(BuildContext context) {
    void pushSaved() {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return Scaffold(
          appBar: AppBar(
            title: Text("Guardadas"),
          ),
        );
      }));
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Lista infinita"),
        actions: <Widget>[
          //Creamos un icon button para acceder a otra pantalla
          IconButton(
            icon: Icon(Icons.list),
            onPressed: pushSaved,
          ),
        ],
      ),
      body: ListView.builder(itemBuilder: (context, i) {
        //si es impar llamar al Widget divider
        if (i.isOdd) return Divider();
        //si el indice es >= cantidad de datos de la variable
        if (i >= suggestions.length) {
          //funcion addAll: puede agregar más de un elemento a una lista
          //funcion generateWordPairs: tomamos los elementos de tipo WordPair
          //y agregamos a la coleccion de datos
          suggestions.addAll(generateWordPairs().take(10));
        }
        return buildRow(suggestions[i]);
        /*return ListTile(
          leading: Icon(Icons.shopping_cart),
          title: Text('Producto $i'),
          subtitle: Text('Precio:${Random().nextInt(500)} USD'),
        );*/
      }),
    );
  }
}

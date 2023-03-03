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
    final bool alreadySaved = saved.contains(pair);
    return ListTile(
      trailing: Icon(alreadySaved ? Icons.favorite : Icons.favorite_border,
          color: Colors.redAccent),
      title: Text(pair.asCamelCase),
      onTap: () {
        //Captura los eventos en la pantalla
        setState(() {
          if (alreadySaved) {
            saved.remove(pair);
          } else {
            //Renderiza los widgets
            saved.add(pair); //Agrega un elemento
          }
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
      //direcciona a una ruta especifica
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        final title = saved
            .map((pair) => ListTile(
                  title: Text(pair.asPascalCase),
                ))
            .toList();
        return Scaffold(
          appBar: AppBar(
            title: Text("Guardadas"),
          ),
          body: ListView(children: title),
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
          Text("HOLA");
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

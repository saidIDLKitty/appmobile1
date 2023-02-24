import 'package:appmobile1/screensDrawer/screensItem/contactItem.dart';
import 'package:appmobile1/screensDrawer/screensItem/contactModel.dart';
import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  static const String routeName = "/contac";
  //Creamos metodo que retorna un contactModel
  buildList() {
    return <ContactModel>[
      ContactModel(name: "Rodrigo Lopez", email: "rlopez@gmail.com"),
      ContactModel(name: "Angel Torres", email: "atorres@gmail.com"),
      ContactModel(name: "Luis Perez", email: "lperez@gmail.com"),
      ContactModel(name: "Jenifer Arana", email: "jarana@gmail.com"),
      ContactModel(name: "Carlos Ipanaque", email: "cipanaque@gmail.com"),
      ContactModel(name: "Jessica Carrera", email: "jcarrera@gmail.com"),
    ];
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contacto"),
      ),
      body: ListView(
        children: <Widget>[ContactItem()],
      ),
    );
  }
}

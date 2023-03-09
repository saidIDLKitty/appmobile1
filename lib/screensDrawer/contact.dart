import 'package:appmobile1/screensDrawer/screensItem/contactItem.dart';
import 'package:appmobile1/screensDrawer/screensItem/contactModel.dart';
import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  static const String routeName = "/contac";
  //Creamos metodo que retorna un contactModel
  List<ContactModel> buildList() {
    return <ContactModel>[
      ContactModel("leancoder27@gmail.com", "Leandro Palma Alvarado"),
      ContactModel("0333181023@unjfsc.edu.pe", "Martin Palma Alvarado"),
      ContactModel("abelito1900@gmail.com", "Abel Toti Cabrera Alvino"),
      ContactModel("rorroXD@gmail.com", "Rodrigo Flores Allccaco"),
      ContactModel("tati27@gmail.com", "Tati Palma Alvarado"),
      ContactModel("totiCAT@gmail.com", "Toti Palma Alvarado"),
    ];
  }

  //Retornamos una lista de contactItem
  List<ContactItem> buildContactList() {
    List<ContactItem> contactItems = buildList().map((contactModel) => ContactItem(contactModel)).toList();
    return contactItems;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contacto"),
      ),
      body: ListView(
        children: buildContactList(),
      ),
    );
  }
}

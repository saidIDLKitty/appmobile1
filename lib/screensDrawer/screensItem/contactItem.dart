import 'package:appmobile1/screensDrawer/screensItem/contactModel.dart';
import 'package:flutter/material.dart';

class ContactItem extends StatelessWidget {
  ContactModel? contact;
  ContactItem(this.contact);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        // Linea de codigo para poder obtener el primer caracter del name (para mostrarlo en el avatar):
        child: Text(contact!.name.split(contact!.name.substring(1)).first),
      ),
      title: Text(contact!.name),
      subtitle: Text(contact!.email),
    );
  }
}

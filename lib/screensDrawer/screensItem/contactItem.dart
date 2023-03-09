import 'package:appmobile1/screensDrawer/screensItem/contactModel.dart';
import 'package:flutter/material.dart';

class ContactItem extends StatelessWidget {
  ContactModel? contact;
  ContactItem(this.contact);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        child: Text(contact!.name.split(contact!.name.substring(1)).first),
      ),
      title: Text(contact!.name),
      subtitle: Text(contact!.email),
      /* title: Text("Rodrigo"),
      subtitle: Text("Rodrigo@gmail.com"), */
    );
  }
}

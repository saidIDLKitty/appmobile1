import 'package:appmobile1/screensDrawer/screensItem/contactModel.dart';
import 'package:flutter/material.dart';

class ContactItem extends StatelessWidget {
  final ContactModel? contact;
  ContactItem({this.contact});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        child: Text("R"),
      ),
      title: Text("Rodrigo"),
      subtitle: Text("Rodrigo@gmail.com"),
    );
  }
}

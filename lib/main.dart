import 'package:appmobile1/home.dart';
import 'package:appmobile1/screensDrawer/battery.dart';
import 'package:appmobile1/screensDrawer/settings.dart';
import 'package:appmobile1/screensDrawer/contact.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: Home(),
    routes: <String, WidgetBuilder>{
      Settings.routeName: (BuildContext context) => Settings(),
      Battery.routeName: (BuildContext context) => Battery(),
      Contact.routeName: (BuildContext context) => Contact(),
    },
  ));
}

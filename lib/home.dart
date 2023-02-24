import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home> {
  Drawer getDrawer(BuildContext context) {
    //Retornamos el Drawer
    var header = DrawerHeader(child: Text("Ajustes"));
    var info = AboutListTile(
      child: Text("Informacion APP"),
      applicationIcon: Icon(Icons.favorite),
      applicationVersion: "v1.0.0",
      icon: Icon(Icons.info),
    );
    ListTile getItem(Icon icon, String descripcion, String route) {
      //Creamos una lista
      return ListTile(
        leading: icon,
        title: Text(descripcion),
        onTap: () {
          Navigator.pushNamed(context, route);
        },
      );
    }

    ListView getList() {
      //Drawer contenedor
      return ListView(
        children: <Widget>[
          header,
          getItem(Icon(Icons.settings), 'Configuracion', '/configuracion'),
          getItem(Icon(Icons.home), 'Pagina Principal', '/'),
          getItem(Icon(Icons.battery_charging_full), 'Bateria', '/bateria'),
           getItem(Icon(Icons.contact_mail), 'Contacto', '/contac'),
          info
        ],
      );
    }

    return Drawer(child: getList());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pagina Principal"),
      ),
      //drawer: Drawer(child: getList()),
      drawer: getDrawer(context),
    );
  }
}
/*class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pagina Principal"),
      ),
      drawer: Drawer(),
    );
  }
}*/
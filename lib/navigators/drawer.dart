import 'package:flutter/material.dart';
import 'package:prueba1/screens/ejercicio01.dart';
import 'package:prueba1/screens/ejercicio02.dart';

class MiDrawer extends StatelessWidget {
  const MiDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Column(
              children: [
                Text('Menú Prueba'),
                Image.network(
                    width: 120,
                    "https://static.vecteezy.com/system/resources/previews/012/986/755/non_2x/abstract-circle-logo-icon-free-png.png")
              ],
            ),
          ),
          ListTile(
            tileColor: Color.fromRGBO(240, 164, 164, 1),
            title: Text("Ejercicio 01"),
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => Ejercicio01())),
          ),
          ListTile(
            tileColor: Color.fromRGBO(204, 238, 176, 1),
            title: Text("Ejercicio 02"),
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => Ejercicio02())),
          ),
        ],
      ),
    );
  }
}

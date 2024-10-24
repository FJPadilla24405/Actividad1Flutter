import 'package:flutter/material.dart';
import 'Enlace1.dart';
import 'Enlace2.dart';
import 'Enlace3.dart';
import 'Enlace7.dart';


class MenuLateral extends StatelessWidget {
  const MenuLateral({super.key});


  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          const UserAccountsDrawerHeader(
            accountName: Text("Francisco Javier Padilla Lopez"),
            accountEmail: Text("https://github.com/FJPadilla24405/Actividad1Flutter"),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage("https://i.ytimg.com/vi/9TlmBmMonIc/maxresdefault.jpg"),
                    fit: BoxFit.cover)),
          ),
          Ink(
            color: const Color.fromARGB(255, 133, 102, 0),
            child: ListTile(
              title: const Text(
                "Row",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => const Enlace1()));
              },
            ),
          ),
          ListTile(
            title: const Text("Columns"),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => const Enlace2()));
            },
          ),
          ListTile(
            title: const Text("Icons"),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => const Enlace3()));
            },
          ),
          ListTile(
            title: const Text("Instagram"),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => const Enlace7()));
            },
          ),
        ],
      ),
    );
  }
}
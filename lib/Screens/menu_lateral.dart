import 'package:actividad_1/home_screen.dart';
import 'package:actividad_1/screens/entrada10.dart';
import 'package:actividad_1/screens/entrada5.dart';
import 'package:actividad_1/screens/entrada6.dart';
import 'package:actividad_1/screens/entrada7.dart';


import 'package:flutter/material.dart';
import 'entrada11.dart';
import 'entrada2.dart';
import 'entrada3.dart';
import 'entrada4.dart';
import 'entrada8.dart';
import 'entrada9.dart';


class MenuLateral extends StatelessWidget {
  const MenuLateral({super.key});


  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          const UserAccountsDrawerHeader(
            accountName: Text("Francisco Javier Padilla Lopez", style: TextStyle( color: Colors.white),),
            accountEmail: Text("https://github.com/FJPadilla24405/Actividad1Flutter", style: TextStyle( color: Colors.white),),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage("https://i.ytimg.com/vi/9TlmBmMonIc/maxresdefault.jpg"),
                    fit: BoxFit.cover)),
          ),
          Ink(
            color: const Color.fromARGB(255, 133, 102, 0),
            child: ListTile(
              title: const Text(
                "Home",
                style: TextStyle(color: Colors.black),
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => const HomeApp()));
              },
            ),
          ),
          ListTile(
            title: const Text("Rows"),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => const Enlace2()));
            },
          ),
          ListTile(
            title: const Text("Columns"),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => const Enlace3()));
            },
          ),
          ListTile(
            title: const Text("Icons"),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => const Enlace4()));
            },
          ),
          ListTile(
            title: const Text("Desafío"),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => const Enlace5()));
            },
          ),
          ListTile(
            title: const Text("Anidados"),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => const Enlace6()));
            },
          ),
          ListTile(
            title: const Text("Contador"),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => const Enlace7()));
            },
          ),
          ListTile(
            title: const Text("Instagram"),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => const Enlace8()));
            },
          ),
          ListTile(
            title: const Text("Imágenes cambiantes"),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => const Enlace9()));
            },
          ),
          ListTile(
            title: const Text("Juego de cartas"),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => const Enlace10()));
            },
          ),
          ListTile(
            title: const Text("Formularios"),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => const Enlace11()));
            },
          ),
        ],
      ),
    );
  }
}
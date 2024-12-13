// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

class Temas extends StatelessWidget {
  const Temas({super.key});

  ThemeData Tema1() {
    return ThemeData(
      brightness: Brightness.light,
        primaryColor: const Color.fromARGB(255, 255, 255, 0),
        scaffoldBackgroundColor: const Color.fromARGB(255, 32, 32, 32),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromARGB(255, 212, 191, 0),
          foregroundColor: Colors.black,
          iconTheme: IconThemeData(color: Color.fromARGB(255, 0, 0, 0)),
        ),
        drawerTheme: const DrawerThemeData(
          backgroundColor: Colors.black,
        ),
        listTileTheme: const ListTileThemeData(
          textColor: Colors.white,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 53, 53, 53),
            foregroundColor: const Color.fromARGB(255, 212, 191, 0),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: const Color.fromARGB(255, 255, 238, 0),
          ),
        ),
        iconTheme: const IconThemeData(
          color: Color.fromARGB(255, 255, 238, 0),
        ),
        textTheme: const TextTheme(
          titleLarge: TextStyle(
              fontSize: 24, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 212, 191, 0)),
          bodyMedium: TextStyle(fontSize: 18, color: Color.fromARGB(255, 255, 238, 0)),
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Color.fromARGB(255, 53, 53, 53),
          foregroundColor: Color.fromARGB(255, 212, 191, 0),
        ),
        inputDecorationTheme: const InputDecorationTheme(
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromARGB(255, 212, 191, 0)),
          ),
          labelStyle: TextStyle(
            color: Colors.grey,
          ),
          iconColor: Color.fromARGB(255, 212, 191, 0)
        ),
        
      );
  }
  
  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();
  }
}
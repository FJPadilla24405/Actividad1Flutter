import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'screens/menu_lateral.dart';


void main() => runApp(const MyApp());


class MyApp extends StatelessWidget {
  const MyApp({super.key});


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Actividad 1',
        theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: const Color.fromARGB(255, 255, 238, 0),
        scaffoldBackgroundColor: const Color.fromARGB(255, 32, 32, 32),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromARGB(255, 212, 191, 0),
          foregroundColor: Colors.black,
          iconTheme: IconThemeData(color: Color.fromARGB(255, 0, 0, 0)),
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
      ),
        home: Scaffold(
          appBar: AppBar(
            title: Text("Francisco Padilla",
            style: GoogleFonts.pacifico(
                
                letterSpacing: 8.0,
                fontSize: 30,
              ),
),
            
          ),
          drawer: const MenuLateral(),
          body: Center(
             child: Image.asset('assets/images/Ricardo.png', width: 300, height: 300),
          ),
        ));
  }
}


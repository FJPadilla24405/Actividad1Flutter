import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'screens/menu_lateral.dart';
import 'screens/temas.dart';


void main() => runApp(const HomeApp());


class HomeApp extends StatelessWidget {
  const HomeApp({super.key});


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Actividad 1',
        theme: const Temas().Tema1(),
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
             child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("https://github.com/FJPadilla24405/Actividad1Flutter",
                style: GoogleFonts.kenia(
                  fontSize: 50,
                  fontWeight: FontWeight.bold
                ), textAlign: TextAlign.center,),
                Image.asset('assets/images/Ricardo.png', width: 300, height: 300)
              ],)
            
          ),
        ));
  }
}


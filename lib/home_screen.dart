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
        home: Scaffold(
          appBar: AppBar(
            title: Text("Francisco Javier Padilla López",
            style: GoogleFonts.pacifico(
                color: const Color.fromARGB(255, 133, 102, 0),
                letterSpacing: 8.0,
                fontSize: 34,
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


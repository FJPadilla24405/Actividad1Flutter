import 'package:flutter/material.dart';


void main() => runApp(const Enlace9());


class Enlace9 extends StatefulWidget {
  const Enlace9({super.key});


  @override
  MyAppState createState() => MyAppState();
}


class MyAppState extends State<Enlace9> {
  // Variable para controlar el modo claro/oscuro
  bool isDarkMode = false;


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tema Personalizado',
      debugShowCheckedModeBanner: false,
      themeMode: isDarkMode ? ThemeMode.dark : ThemeMode.light,
      //****************Define el tema claro:*****************
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
            foregroundColor: const Color.fromARGB(255, 212, 191, 0),
          ),
        ),
        iconTheme: const IconThemeData(
          color: const Color.fromARGB(255, 212, 191, 0),
        ),
        textTheme: const TextTheme(
          titleLarge: TextStyle(
              fontSize: 24, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 212, 191, 0)),
          bodyMedium: TextStyle(fontSize: 18, color: const Color.fromARGB(255, 212, 191, 0)),
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Color.fromARGB(255, 53, 53, 53),
          foregroundColor: Color.fromARGB(255, 212, 191, 0),
        ),
      ),


      //****************Define el tema oscuro:*****************
      darkTheme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: Colors.teal,
          scaffoldBackgroundColor: Colors.black,
          appBarTheme: const AppBarTheme(
            backgroundColor: Color.fromARGB(255, 242, 244, 244),
            foregroundColor: Color.fromARGB(255, 180, 213, 95),
            iconTheme: IconThemeData(color: Colors.black),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.teal,
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            ),
          ),
          textButtonTheme: TextButtonThemeData(
            style: TextButton.styleFrom(
              foregroundColor: Colors.teal,
            ),
          ),
          iconTheme: const IconThemeData(color: Colors.teal),
          textTheme: const TextTheme(
            titleLarge: TextStyle(
                fontSize: 24, fontWeight: FontWeight.bold, color: Colors.teal),
            bodyMedium: TextStyle(fontSize: 18, color: Colors.white),
          ),
          floatingActionButtonTheme: const FloatingActionButtonThemeData(
            backgroundColor: Colors.teal,
            foregroundColor: Colors.white,
          )),
      home: HomeScreen(
        isDarkMode: isDarkMode,
        toggleTheme: (value) {
          setState(() {
            isDarkMode = value;
          });
        },
      ),
    );
  }
}


class HomeScreen extends StatelessWidget {
  final bool isDarkMode;
  final ValueChanged<bool> toggleTheme;


  const HomeScreen(
      {super.key, required this.isDarkMode, required this.toggleTheme});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tema Personalizado',
            style: Theme.of(context).textTheme.titleLarge),
        actions: [
          IconButton(
            icon: const Icon(Icons.brightness_6),
            onPressed: () {
              toggleTheme(!isDarkMode);
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Este es un texto con estilo personalizado',
                style: Theme.of(context).textTheme.bodyMedium),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Botón Elevado'),
            ),
            const SizedBox(height: 10),
            TextButton(
              onPressed: () {},
              child: const Text('Botón de Texto'),
            ),
            const SizedBox(height: 10),
            IconButton(
              icon: const Icon(Icons.thumb_up),
              onPressed: () {},
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}

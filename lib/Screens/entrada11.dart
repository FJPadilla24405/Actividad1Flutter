import 'package:flutter/material.dart';


void main() => runApp(const Enlace11());


class Enlace11 extends StatelessWidget {
  const Enlace11({super.key});


  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Ejemplo de formularios',
      home: MyHomePage(title: 'Formularios'),
    );
  }
}


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {
  Widget textoEntrada() {
    return SingleChildScrollView(
        child: Center(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                hintText: 'Ricardo',
                counterText: ' ',
                labelText: 'Nombre',
                suffixIcon: const Icon(Icons.rtt),
                icon: const Icon(Icons.group),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                )),
              onChanged: (text) {
                print("Nombre en el formulario de entrada: $text");
              },
              onSubmitted: (String valor) {
                print("El nombre introducido es: $valor");
              },
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: '2',
                counterText: ' ',
                labelText: 'Mascotas',
                suffixIcon: const Icon(Icons.rtt),
                icon: const Icon(Icons.group),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                )),
              onChanged: (text) {
                print("Texto en el formulario de entrada: $text");
              },
              onSubmitted: (String valor) {
                print("El texto introducido es: $valor");
              },
            ),
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: 'Ricardo@gmail.com',
                counterText: ' ',
                labelText: 'Email',
                suffixIcon: const Icon(Icons.rtt),
                icon: const Icon(Icons.group),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                )),
              onChanged: (text) {
                print("Texto en el formulario de entrada: $text");
              },
              onSubmitted: (String valor) {
                print("El texto introducido es: $valor");
              },
            ),
            TextField(
              keyboardType: TextInputType.datetime,
              decoration: InputDecoration(
                hintText: '9/12/24',
                counterText: ' ',
                labelText: 'Fecha de nacimiento',
                suffixIcon: const Icon(Icons.rtt),
                icon: const Icon(Icons.group),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                )),
              onChanged: (text) {
                print("Texto en el formulario de entrada: $text");
              },
              onSubmitted: (String valor) {
                print("El texto introducido es: $valor");
              },
            ),
            TextField(
              keyboardType: const TextInputType.numberWithOptions(decimal: true, signed: true),
              decoration: InputDecoration(
                hintText: '+948474343',
                counterText: ' ',
                labelText: 'Número de teléfono',
                suffixIcon: const Icon(Icons.rtt),
                icon: const Icon(Icons.group),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                )),
              onChanged: (text) {
                print("Texto en el formulario de entrada: $text");
              },
              onSubmitted: (String valor) {
                print("El texto introducido es: $valor");
              },
            )
          ],)
        ));
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(child: textoEntrada()),
    );
  }
}

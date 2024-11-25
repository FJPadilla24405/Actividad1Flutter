import 'package:flutter/material.dart';

import 'menu_lateral.dart';
import 'temas.dart';

void main() {
  runApp(const Enlace7());
}

class Enlace7 extends StatelessWidget {
  const Enlace7({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contador de clicks',
      theme: const Temas().Tema1(),
      home: const MiContador()
    );
  }
}

class MiContador extends StatefulWidget {
  const MiContador({super.key});

  @override
  State<MiContador> createState() => _MiContadorState();
}

class _MiContadorState extends State<MiContador> {
  int numeroVeces = 0;

  incrementar() {
    setState(() {
      numeroVeces++;
    });
    
  }
  decrementar() {
    setState(() {
      if (numeroVeces>0) {
        numeroVeces--;
      }
    });
    
  }
  resetear() {
    setState(() {
      numeroVeces = 0;
    });
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: 
          AppBar(title: const Text("Contador de clicks"),),
      drawer: const MenuLateral(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
            "Has pulsado $numeroVeces veces",
            style: const TextStyle(fontSize:30),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: decrementar, child: const Text("Decrementar")),
                ElevatedButton(onPressed: resetear, child: const Text("Resetear")),
                ElevatedButton(onPressed: incrementar, child: const Text("Incrementar"))
              ],
            )
          ],
        ),
        ),
      );
  }
}


import 'package:flutter/material.dart';

import 'menu_lateral.dart';
import 'dart:math';

import 'temas.dart';


void main() {
  runApp(const Enlace10());
}
class Enlace10 extends StatefulWidget {
  const Enlace10({super.key});


  @override
  // ignore: library_private_types_in_public_api
  _SieteYMedia createState() => _SieteYMedia();
}

class _SieteYMedia extends State<Enlace10> {
  double playerPoints = 0;
  double dealerPoints = 0;
  int contadorVictoriasPlayer = 0;
  int contadorVictoriasDealer = 0;
  bool disable = false;
  bool textoVictoria = false;
  String nombreCarta = "";
  String victoriaTexto = "";
  late ElevatedButton sacar;
  late ElevatedButton plantar;

  var palo = [
    'Oros', 'Copas', 'Espadas', 'Bastos'
  ];

  var cartas = {
    {'Uno de ':1},
    {'Dos de ':2},
    {'Tres de ':3},
    {'Cuatro de ':4},
    {'Cinco de ':5},
    {'Seis de ':6},
    {'Siete de ':7},
    {'Sota de ':0.5},
    {'Caballo de ':0.5},
    {'Rey de ':0.5}
  };

  @override
  void initState() {
    super.initState();
    disable = false;
    getRandomCarta();
  }

  void reiniciar() {
    playerPoints = 0;
    dealerPoints = 0;
    disable = false;
    nombreCarta = "";
    victoriaTexto = "";
    getRandomCarta();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: const Temas().Tema1(),
      home: Scaffold(
         appBar: AppBar(
            title: const Text("Juego de cartas"),
          ),
          drawer: const MenuLateral(),
        body: Center( 
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            Text("Victorias: $contadorVictoriasPlayer | $contadorVictoriasDealer", style: const TextStyle(fontSize: 25)),
            const Padding(padding: EdgeInsets.all(10)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Tú: $playerPoints", style: const TextStyle(fontSize: 25)),
                Text("Máquina: ${disable ? dealerPoints : "?"}", style: const TextStyle(fontSize: 25)),
              ],
            ),
            const Padding(padding: EdgeInsets.all(10)),
            Text(nombreCarta, style: const TextStyle(fontSize: 20)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                sacar = ElevatedButton(onPressed: disable ? null : getRandomCarta, child: const Text("Sacar carta", style: TextStyle(fontSize: 20)),),
                plantar = ElevatedButton(onPressed: disable ? reiniciar : dealerPlays, child: Text(disable ? "Reiniciar" : "Plantarse", style: const TextStyle(fontSize: 20)))
            ],),
            const Padding(padding: EdgeInsets.all(10)),
            Text(victoriaTexto, style: const TextStyle(fontSize: 30)),
            
          ],))
        
      ),
    );
  }


  void getRandomCarta() {
    
    Random random = Random();
    int randomNumber = random.nextInt(10);
    nombreCarta += cartas.elementAt(randomNumber).keys.first;
    nombreCarta += "${palo[random.nextInt(4)]}\r\n";
    playerPoints += cartas.elementAt(randomNumber).values.first;
    setState(() {});

    comprobarVictoria(false);
  }

  void dealerPlays() {
    bool plantar = false;
    Random random = Random();

    while (!plantar) {
      int randomNumber = random.nextInt(10);

      if (!(dealerPoints + cartas.elementAt(randomNumber).values.first > 7.5)) {
        dealerPoints += cartas.elementAt(randomNumber).values.first;
      } else {
        plantar = true;
      }

      setState(() {});
    }

    comprobarVictoria(true);

  }

  void comprobarVictoria(bool mostrar) {

    if (playerPoints > 7.5) {
      victoriaTexto = "Te has pasado";
      disable = true;
      textoVictoria = false;
      contadorVictoriasDealer++;
    } else if (playerPoints > dealerPoints && mostrar) {
      victoriaTexto = "Has ganado";
      disable = true;
      textoVictoria = true;
      contadorVictoriasPlayer++;
    } else  if (mostrar) {
      victoriaTexto = "La máquina te ha ganado";
      disable = true;
      textoVictoria = false;
      contadorVictoriasDealer++;
    }
  
    setState(() {});
    if (contadorVictoriasDealer >= 5 || contadorVictoriasPlayer >= 5) {
      victoriaDefinitiva();
    }

  }

  void victoriaDefinitiva() {
      
    showDialog(context: context, builder: (BuildContext context) {
      return Dialog(child: Container(
        constraints: BoxConstraints.expand(
          height: Theme.of(context).textTheme.headlineMedium!.fontSize! * 1.1 + 200.0,
        ),
        padding: const EdgeInsets.all(5.0),
        alignment: Alignment.center,
          child: Text(textoVictoria ? "Le has pegado un palizón histórico a la máquina" : "La máquina te ha pegado un palizón histórico",
          style: Theme.of(context)
          .textTheme
          .headlineMedium!
          .copyWith(color: Colors.black,), textAlign: TextAlign.center,),
      ));
    },);

    setState(() {});

    contadorVictoriasDealer = 0;
    contadorVictoriasPlayer = 0;

    reiniciar();

  }
}
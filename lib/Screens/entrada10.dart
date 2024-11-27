import 'package:actividad_1/tools/variabletimer.dart';
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
  int points = 0;
  bool click = false;
  late String nombreCarta;
  late double randomWidth;
  late double randomHeight;
  late Image image;

  var palo = [
    'Oros', 'Copas', 'Espadas', 'Bastos'
  ];

  var cartas = {
    0, {'Uno de ':1},
    1, {'Dos de ':2},
    2, {'Tres de ':3},
    3, {'Cuatro de ':4},
    4, {'Cinco de ':5},
    5, {'Seis de ':6},
    6, {'Siete de ':7},
    7, {'Sota de ':0.5},
    8, {'Caballo de ':0.5},
    9, {'Rey de ':0.5}
  };
  
  late double screenWidth = 500;
  late double screenHeight = 1000;
  


  @override
  void initState() {
    super.initState();
    getRandomImage();
    getRandomPosition();
    extractPoints();
  }

  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: const Temas().Tema1(),
      home: Scaffold(
         appBar: AppBar(
            title: const Text("Juego de cartas"),
          ),
          drawer: const MenuLateral(),
        body: Stack(
          children: [
            
            Positioned(
            left: randomWidth,
            bottom: randomHeight,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Puntos: $points',
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
                Center(
              child: GestureDetector(
                
                onTap: () {
                  onGiftTap(image);
                },
                child: Column(
                  children: [
                    
                    //image = Image.asset(randomImage, width: 150, height: 150,),
                    
                  ],
                ),
              ),
            ),]
                ),
            
             
      )
    
  ]
)
        
      ),
    );
  }


  void getRandomImage() {
    
    Random random = Random();
    int randomNumber = random.nextInt(6);
    //randomImage = assetsImages[randomNumber];
  }

  void getRandomPosition() {
    Random random = Random();
    randomWidth = random.nextDouble() * (screenWidth - 150);
    randomHeight = random.nextDouble() * (screenHeight - 275);
  }

  void extractPoints() {

    if (points > 0 && !click) {
      points -= (points * 0.25).round();
      
    }

    click = false;

  }

  void onGiftTap(Image image) {
    
      if (!click) {
        points+= 5;
        click = true;
      }
      
    setState(() {});
  }
}
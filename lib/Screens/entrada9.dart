import 'package:actividad_1/tools/variabletimer.dart';
import 'package:flutter/material.dart';

import 'menu_lateral.dart';
import 'dart:math';

import 'temas.dart';


void main() {
  runApp(const Enlace9());
}
class Enlace9 extends StatefulWidget {
  const Enlace9({super.key});


  @override
  // ignore: library_private_types_in_public_api
  _RandomImages createState() => _RandomImages();
}


class _RandomImages extends State<Enlace9> {
  int points = 0;
  bool click = false;
  late String randomImage;
  late double randomWidth;
  late double randomHeight;
  late Image image;
  var assetsImages = [
    'assets/images/Ricardo.png',
    'assets/images/Ricarda.png',
    'assets/images/RicardoFiestas.png',
    'assets/images/RicardoElegante.png',
    'assets/images/RicardoNavidad.png',
    'assets/images/RicardoPelo.png'
  ];
  late double screenWidth = 500;
  late double screenHeight = 1000;
  


  @override
  void initState() {
    super.initState();
    getRandomImage();
    getRandomPosition();
    extractPoints();
    timer();
  }

  /*void timer() {
    Timer timer = Timer.periodic(Duration(milliseconds: 1500-points*5), (timer) {
      getRandomImage();
      getRandomPosition();
      extractPoints();
      setState(() {});
      
    });
  }*/

  void timer() {
    VariableTimer(const Duration(milliseconds: 1500), (timer) {
    getRandomImage();
    getRandomPosition();
    extractPoints();
    setState(() {});
    
    timer.period = Duration(milliseconds: 1500-points*2);
      
    
  });
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
            title: const Text("Juego de imágenes"),
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
                    
                    image = Image.asset(randomImage, width: 150, height: 150,),
                    
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
    randomImage = assetsImages[randomNumber];
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

import 'package:flutter/material.dart';
import 'menu_lateral.dart';


class Enlace5 extends StatelessWidget {
  const Enlace5({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ricardos anidados"),
      ),
      drawer: const MenuLateral(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
	        children:[
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
	            children:[
                Image.asset('assets/images/RicardoFiestas.png', width: 100, height: 100,),
                const Text("Ricardo fiestero")
              ]
            ),
          ]
          ),
          Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
	        children:[
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
	            children:[
                Image.asset('assets/images/Ricardo.png', width: 100, height: 100,),
                const Text("Ricardo")
              ]
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
	            children:[
                Image.asset('assets/images/Ricarda.png', width: 100, height: 100,),
                const Text("Ricarda")
              ]
            ),
          ]
          ),
          Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
	        children:[
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
	            children:[
                Image.asset('assets/images/RicardoElegante.png', width: 100, height: 100,),
                const Text("Ricardo elegante")
              ]
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
	            children:[
                Image.asset('assets/images/RicardoNavidad.png', width: 100, height: 100,),
                const Text("Ricardo navideño")
              ]
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
	            children:[
                Image.asset('assets/images/RicardoPelo.png', width: 100, height: 100,),
                const Text("Ricardo pelazo")
              ]
            ),
          ]
        ),
          ]
        )

      ),
    );
  }
}
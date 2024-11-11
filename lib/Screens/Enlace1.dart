import 'package:flutter/material.dart';
import 'menu_lateral.dart';


class Enlace1 extends StatelessWidget {
  const Enlace1({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ricardos en fila"),
      ),
      drawer: const MenuLateral(),
      body: Center(
        child: Row(
	        children:[
            Image.asset('assets/images/Ricardo.png', width: 100, height: 100,),
            Image.asset('assets/images/Ricardo.png', width: 100, height: 100,),
            Image.asset('assets/images/Ricardo.png', width: 100, height: 100,),
          ]
        ),

      ),
    );
  }
}
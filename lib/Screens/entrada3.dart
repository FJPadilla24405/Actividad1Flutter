import 'package:flutter/material.dart';
import 'menu_lateral.dart';


class Enlace3 extends StatelessWidget {
  const Enlace3({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ricardos en columnas"),
      ),
      drawer: const MenuLateral(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
	        children:[
            Image.asset('assets/images/Ricardo.png', width: 100, height: 100,),
            Image.asset('assets/images/Ricardo.png', width: 200, height: 200,),
            Image.asset('assets/images/Ricardo.png', width: 300, height: 300,),
          ]
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';


class Enlace2 extends StatelessWidget {
  const Enlace2({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ricardos en columnas"),
      ),
      body: Center(
        child: Column(
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
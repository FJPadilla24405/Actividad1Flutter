import 'package:flutter/material.dart';
import 'menu_lateral.dart';


class Enlace3 extends StatelessWidget {
  const Enlace3({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ricardos en fila"),
      ),
      drawer: const MenuLateral(),
      body: const Center(
        child: Row(
	        children:[
            Column(
	            children:[
                Icon(Icons.airline_seat_flat_outlined),
                Icon(Icons.agriculture),
              ]
            ),
            Column(
	            children:[
                Icon(Icons.restore_from_trash),
                Icon(Icons.view_comfortable_rounded),
              ]
            ),
            Column(
	            children:[
                Icon(Icons.airline_seat_flat_outlined),
              ]
            ),
            
            
          ]
        ),

      ),
    );
  }
}
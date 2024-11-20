import 'package:flutter/material.dart';
import 'menu_lateral.dart';


class Enlace4 extends StatelessWidget {
  const Enlace4({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Iconos"),
      ),
      drawer: const MenuLateral(),
      body: const Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
	        children:[
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
	            children:[
                Icon(Icons.airline_seat_flat_outlined, size: 100),
                Icon(Icons.agriculture, size: 100),
              ]
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
	            children:[
                Icon(Icons.phone_in_talk_rounded, size: 100),
              ]
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
	            children:[
                Icon(Icons.restore_from_trash, size: 100),
                Icon(Icons.view_comfortable_rounded, size: 100),
              ]
            ),
            
            
            
          ]
        ),

      ),
    );
  }
}
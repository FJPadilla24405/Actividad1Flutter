import 'package:flutter/material.dart';
import 'menu_lateral.dart';


class Enlace4 extends StatelessWidget {
  const Enlace4({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Challenge"),
      ),
      drawer: const MenuLateral(),
      body: Align(
  alignment: Alignment.center,
  child: Container(
    margin: const EdgeInsets.only(top: 20),
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      border: Border.all(
        color: const Color.fromARGB(255, 255, 238, 0),
        width: 10,
      ),
    ),
    width: 280,
    height: 280,
    alignment: Alignment.center,
    child: const Text(
      'H',
      style: TextStyle(
        fontSize: 180,
      ),
    ),
  ),
),
    );
  }
}
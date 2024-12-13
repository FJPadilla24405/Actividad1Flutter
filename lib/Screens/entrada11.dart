import 'package:flutter/material.dart';

import 'menu_lateral.dart';
import 'temas.dart';


void main() => runApp(const Enlace11());


class Enlace11 extends StatelessWidget {
  const Enlace11({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Formulario',
      theme: const Temas().Tema1(),
      home: HomeWidget(),
    );
  }
}


class HomeWidget extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final List<TextEditingController> _textEditingControllers = [];
  final List<Widget> _widgets = [];
  HomeWidget({super.key}) {
    List<List> fieldNames = [
      ["Nombre", TextInputType.name],
      ["Número de teléfono", TextInputType.phone],
      ["Fecha de nacimiento", TextInputType.datetime],
      ["Email", TextInputType.emailAddress],
      ["Dirección", TextInputType.streetAddress],
      ["Contraseña", TextInputType.visiblePassword],
      ["Descripción", TextInputType.multiline]
    ];
    for (int i = 0; i < fieldNames.length; i++) {
      String fieldName = fieldNames[i][0];
      TextEditingController textEditingController =
          TextEditingController(text: "");
      TextInputType textType = fieldNames[i][1];
      _textEditingControllers.add(textEditingController);
      _widgets.add(Padding(
        padding: const EdgeInsets.all(7.0),
        child: _createTextFormField(fieldName, textEditingController, textType),
      ));
    }
    _widgets.add(ElevatedButton(
      onPressed: () {
        _formKey.currentState?.validate();
      },
      child: const Text('Guardar'),
    ));
  }
  TextFormField _createTextFormField(
      String fieldName, TextEditingController controller, TextInputType textType) {
    return TextFormField(
      style: const TextStyle(color: Colors.white),
      keyboardType: textType,
      obscureText: fieldName == "Contraseña",
        validator: (value) {
          if (value!.isEmpty) {
            return 'Por favor, introduzca $fieldName.';
          }
          return null;
        },
        decoration: InputDecoration(
            icon: const Icon(Icons.person),
            hintText: fieldName,
            labelText: 'Introduzca $fieldName'),
        controller: controller);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Formulario"),
        ),
        drawer: const MenuLateral(),
        body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Form(
                key: _formKey,
                child: ListView(
                  children: _widgets,
                ))));
  }
}

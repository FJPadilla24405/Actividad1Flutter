import 'package:flutter/material.dart';
import 'menu_lateral.dart';

void main() => runApp(const Enlace8());

class Enlace8 extends StatelessWidget {
  const Enlace8({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return MaterialApp(
        title: 'Actividad 1',
        home: Scaffold(
          appBar: AppBar(
            title: const Text("Francisco Javier Padilla López"),
          ),
          drawer: const MenuLateral(),
          body: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage('assets/images/Ricardo.png'),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("1.026",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Text("Publicaciones")
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("859",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Text("Seguidores")
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("211",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Text("Seguidos")
                      ],
                    ),
                  ],
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(padding: EdgeInsets.all(10)),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Ricardo Álvarez del Vayo",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Text("'Nunca sabes lo que te depara el futuro'."),
                        Text("faqsandroid.com/")
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.black,
                          backgroundColor: Colors.white,
                          side: const BorderSide(color: Colors.grey, width: 1),
                          shape: const BeveledRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(4))),
                          minimumSize: Size((screenWidth - 40), 35)),
                      child: const Text(
                        "Editar perfil",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
                const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(padding: EdgeInsets.fromLTRB(45, 0, 45, 0)),
                        CircleAvatar(
                          radius: 35,
                          backgroundImage:
                              AssetImage('assets/images/Ricarda.png'),
                        ),
                        Text("Nuevo")
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(padding: EdgeInsets.fromLTRB(45, 0, 45, 0)),
                        CircleAvatar(
                          radius: 35,
                          backgroundImage:
                              AssetImage('assets/images/RicardoElegante.png'),
                        ),
                        Text("Pilotando")
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(padding: EdgeInsets.fromLTRB(45, 0, 45, 0)),
                        CircleAvatar(
                          radius: 35,
                          backgroundImage:
                              AssetImage('assets/images/Ricardo.png'),
                        ),
                        Text("Praga")
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(padding: EdgeInsets.fromLTRB(45, 0, 45, 0)),
                        CircleAvatar(
                          radius: 35,
                          backgroundImage:
                              AssetImage('assets/images/RicardoNavidad.png'),
                        ),
                        Text("Arquitectura")
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(padding: EdgeInsets.fromLTRB(45, 0, 45, 0)),
                        CircleAvatar(
                          radius: 35,
                          backgroundImage:
                              AssetImage('assets/images/Ricardo.png'),
                        ),
                        Text("Yo")
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(padding: EdgeInsets.fromLTRB(45, 0, 45, 0)),
                        CircleAvatar(
                          radius: 35,
                          backgroundImage:
                              AssetImage('assets/images/RicardoFiestas.png'),
                        ),
                        Text("Fiestas")
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(padding: EdgeInsets.fromLTRB(45, 0, 45, 0)),
                        CircleAvatar(
                          radius: 35,
                          backgroundImage:
                              AssetImage('assets/images/RicardoPelo.png'),
                        ),
                        Text("Retratos")
                      ],
                    ),
                  ],
                ),),
                Row(
                  children: [
                    Column(
                      children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.grid_on_outlined),
                                style: ElevatedButton.styleFrom(
                                    foregroundColor: Colors.black,
                                    backgroundColor: Colors.white,
                                    shadowColor: Colors.black,
                                    elevation: 3,
                                    shape: const BeveledRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(1))),
                                    minimumSize: Size((screenWidth/2), 50)),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.person),
                                style: ElevatedButton.styleFrom(
                                    foregroundColor: Colors.black,
                                    backgroundColor: Colors.white,
                                    shadowColor: Colors.black,
                                    elevation: 3,
                                    shape: const BeveledRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(1))),
                                    minimumSize: Size((screenWidth/2), 50)),
                              ),
                            ]),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                                width: screenWidth,
                                height: 350,
                                child: GridView.count(
                                  crossAxisCount: 3,
                                  children: [
                                    Image.asset('assets/images/Ricardo.png'),
                                    Image.asset('assets/images/Ricarda.png'),
                                    Image.asset('assets/images/RicardoElegante.png'),
                                    Image.asset('assets/images/RicardoFiestas.png'),
                                    Image.asset('assets/images/RicardoNavidad.png'),
                                    Image.asset('assets/images/RicardoPelo.png'),
                                    Image.asset('assets/images/Ricardo.png'),
                                    Image.asset('assets/images/Ricardo.png'),
                                    Image.asset('assets/images/cesped.jpg'),
                                  ],
                                ))
                          ],
                        ),
                      ],
                    )
                  ],
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.home),
                    Icon(Icons.search),
                    Icon(Icons.add),
                    Icon(Icons.favorite_outline),
                    CircleAvatar(
                        radius: 20,
                        backgroundImage:
                            AssetImage('assets/images/Ricardo.png'))
                  ],
                )
              ]),
        ));
  }
}

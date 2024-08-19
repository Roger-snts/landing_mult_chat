import 'package:flutter/material.dart';

class Perfil extends StatelessWidget {
  const Perfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(
                "images/icone.png",
                height: 130,
                width: 130,
              ),
              Text(
                "Moacir",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "mrsantos@hotmail.com",
                style: TextStyle(color: Colors.grey),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Text("Recompensa"),
                      Text(
                        "360",
                        style: TextStyle(color: Colors.blue),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Text("Viagens"),
                      Text(
                        "265",
                        style: TextStyle(color: Colors.blue),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Text("Lista de desejos"),
                      Text(
                        "473",
                        style: TextStyle(color: Colors.blue),
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: ListView(
              padding: EdgeInsets.all(8),
              shrinkWrap: true,
              children: [
                ListTile(
                  leading: Icon(Icons.person_rounded),
                  title: Text("Perfil"),
                  trailing: Icon(Icons.arrow_forward_ios_sharp),
                ),
                ListTile(
                  leading: Icon(Icons.favorite),
                  title: Text("Marcados como Favoritos"),
                  trailing: Icon(Icons.arrow_forward_ios_sharp),
                ),
                ListTile(
                  leading: Icon(Icons.airplanemode_active_sharp),
                  title: Text("Viagens anteriores"),
                  trailing: Icon(Icons.arrow_forward_ios_sharp),
                ),
                ListTile(
                  leading: Icon(Icons.roller_shades_outlined),
                  title: Text("Configurações"),
                  trailing: Icon(Icons.arrow_forward_ios_sharp),
                ),
                ListTile(
                  leading: Icon(Icons.manage_search_rounded),
                  title: Text("Versão"),
                  trailing: Icon(Icons.arrow_forward_ios_sharp),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

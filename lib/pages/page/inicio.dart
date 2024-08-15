
import 'package:flutter/material.dart';
import 'package:landing_mult_chat/pages/page/partial_pages/mensagens.dart';
import 'package:landing_mult_chat/pages/page/partial_pages/perfil.dart';
import 'package:landing_mult_chat/pages/page/partial_pages/principal.dart';

class Inicio extends StatefulWidget {
  const Inicio({super.key});

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  int estadoAtual = 0;
  final paginas = [
    Mensagens(),
    Principal(),
    Perfil()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
            child: Row(
              children: [
                Image(
                  image: AssetImage("images/icone.png"),
                  height: 50,
                ),
                Text("AAAAAAA")
              ],
            ),
          ),
          backgroundColor: Colors.transparent,
        ),
        body: paginas[estadoAtual],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: Colors.black,
          fixedColor: Colors.blue,
          currentIndex: estadoAtual,
          iconSize: 25,
          
          onTap: (index) => setState(() => estadoAtual = index),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.chat_outlined),
              label: 'Mensagens',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home_mini),
              label: 'Início',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_rounded),
              label: 'Perfil',
            ),
          ],
        ));
  }
}

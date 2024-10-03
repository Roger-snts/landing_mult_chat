import 'package:flutter/material.dart';

class Mensagem extends StatelessWidget {
  const Mensagem({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
             Column(
              children: [
                const Row(
                  children: [
                    Text(
                      "Mensagens",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          fontWeight: FontWeight.normal),
                    ),
                    Spacer(),
                    Icon(Icons.edit_note_sharp)
                  ],
                ),
                TextField(
                  autocorrect: true,
                  autofocus: false,
                  expands: false,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    label: const Text("Pesquise por bate-papos e mensagens"),
                    prefixIcon: const Icon(Icons.search),
                    filled: true,
                    fillColor: Colors.grey[300],
                  ),
                ),
              ],
            ),
            ListView(
              shrinkWrap: true,
              children: [
                ListTile(
                  leading: Image.asset(
                    "images/icone.png",
                    height: 40,
                    width: 40,
                  ),
                  title: const Text("Clara Pizzantino"),
                  subtitle: const Text("Simto Muito"),
                  trailing: const Icon(
                    Icons.verified_outlined,
                    color: Colors.orangeAccent,
                  ),
                ),
                ListTile(
                  leading: Image.asset(
                    "images/icone.png",
                    height: 40,
                    width: 40,
                  ),
                  title: const Text("James Robson"),
                  subtitle: const Text("Futebol hoje às 22h?"),
                  trailing: const Icon(
                    Icons.verified,
                    color: Colors.greenAccent,
                  ),
                ),
                ListTile(
                  leading: Image.asset(
                    "images/icone.png",
                    height: 40,
                    width: 40,
                  ),
                  title: const Text("Mario'n Armario"),
                  subtitle: const Text("Não encontrei o cano verde."),
                  trailing: const Icon(
                    Icons.verified,
                    color: Colors.greenAccent,
                  ),
                ),
                ListTile(
                  leading: Image.asset(
                    "images/icone.png",
                    height: 40,
                    width: 40,
                  ),
                  title: const Text("Arthur Lutter King"),
                  subtitle: const Text("Tô te dizendo, eu sou o cara certo!"),
                  trailing: const Icon(
                    Icons.verified_outlined,
                    color: Colors.blueAccent,
                  ),
                ),
                ListTile(
                  leading: Image.asset(
                    "images/icone.png",
                    height: 40,
                    width: 40,
                  ),
                  title: const Text("Maria Duda"),
                  subtitle: const Text("Hoje eu não posso."),
                  trailing: const Icon(
                    Icons.verified_outlined,
                    color: Colors.orange,
                  ),
                ),
                ListTile(
                  leading: Image.asset(
                    "images/icone.png",
                    height: 40,
                    width: 40,
                  ),
                  title: const Text("Michael J.J."),
                  subtitle: const Text("A Duda disse que não poderia."),
                  trailing: const Icon(
                    Icons.verified,
                    color: Colors.greenAccent,
                  ),
                ),
                ListTile(
                  leading: Image.asset(
                    "images/icone.png",
                    height: 40,
                    width: 40,
                  ),
                  title: const Text("Walter D."),
                  subtitle: const Text("Blz"),
                  trailing: const Icon(
                    Icons.verified_outlined,
                    color: Colors.blueAccent,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

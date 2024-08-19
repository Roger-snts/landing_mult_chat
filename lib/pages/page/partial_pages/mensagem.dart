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
            Row(
              children: [
                Text(
                  "Mensagens",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
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
                prefix: Icon(Icons.search),
              ),
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
                  title: Text("Clara Pizzantino"),
                  subtitle: Text("Simto Muito"),
                  trailing: Icon(
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
                  title: Text("James Robson"),
                  subtitle: Text("Futebol hoje às 22h?"),
                  trailing: Icon(
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
                  title: Text("Mario'n Armario"),
                  subtitle: Text("Não encontrei o cano verde."),
                  trailing: Icon(
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
                  title: Text("Arthur Lutter King"),
                  subtitle: Text("Tô te dizendo, eu sou o cara certo!"),
                  trailing: Icon(
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
                  title: Text("Maria Duda"),
                  subtitle: Text("Hoje eu não posso."),
                  trailing: Icon(
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
                  title: Text("Michael J.J."),
                  subtitle: Text("A Duda disse que não poderia."),
                  trailing: Icon(
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
                  title: Text("Walter D."),
                  subtitle: Text("Blz"),
                  trailing: Icon(
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

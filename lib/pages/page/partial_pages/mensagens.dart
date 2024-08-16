import 'package:flutter/material.dart';

class Mensagens extends StatelessWidget {
  const Mensagens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Image(
          image: const AssetImage("images/msgimg.png"),
          width: MediaQuery.of(context).size.width,
        ),
        Row(
          children: [
            const Text(
              "Melhor destino",
              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 16),
            ),
            Spacer(),
            TextButton(
                onPressed: () {},
                child: const Text(
                  "Ver tudo",
                  style: TextStyle(fontSize: 16, color: Colors.blue),
                )),
          ],
        ),
        const Row(
          children: [
            SizedBox(
              height: 330,
              width: 250,
              child: const Column(
                children: [
                  Image(
                    image: AssetImage("images/bote.png"),
                    fit: BoxFit.fill,
                    height: 260,
                    width: 250,
                  ),
                  Spacer(),
                  Row(
                    children: [
                      Text(
                        "Espanha",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Spacer(),
                      Icon(Icons.star),
                    ],
                  ),
                  Spacer(),
                  Row(
                    children: [
                      Icon(
                        Icons.pin_drop,
                        color: Colors.amber,
                      ),
                      Text("Madrid, Espanha"),
                      Spacer(),
                      Stack(
                        fit: StackFit.loose,
                        alignment: AlignmentDirectional.left,
                        children: [
                          ImageIcon(
                            AssetImage("images/icone.png"),
                            color: Colors.blue,
                          ),
                          ImageIcon(
                            AssetImage("images/icone.png"),
                            color: Colors.purple,
                          ),
                          ImageIcon(
                            AssetImage("images/icone.png"),
                            color: Colors.green,
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        )
      ],
    ));
  }
}

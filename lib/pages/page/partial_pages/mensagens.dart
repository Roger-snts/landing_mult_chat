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
        const SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.all(20.0),
                child: SizedBox(
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
                            alignment: AlignmentDirectional.centerStart,
                            children: [
                              ImageIcon(
                                AssetImage("images/icone.png"),
                                color: Colors.green,
                              ),
                              SizedBox(
                                width: 40,
                                child: Positioned(
                                  left: 80,
                                  child: ImageIcon(
                                    AssetImage("images/icone.png"),
                                    color: Colors.blue,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 60,
                                child: Positioned(
                                  left: 20,
                                  child: ImageIcon(
                                    AssetImage("images/icone.png"),
                                    color: Colors.purple,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20.0),
                child: SizedBox(
                  height: 330,
                  width: 250,
                  child: const Column(
                    children: [
                      Image(
                        image: AssetImage("images/barquinho.png"),
                        fit: BoxFit.fill,
                        height: 260,
                        width: 250,
                      ),
                      Spacer(),
                      Row(
                        children: [
                          Text(
                            "França",
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
                          Text("París, França"),
                          Spacer(),
                          Stack(
                            fit: StackFit.loose,
                            alignment: AlignmentDirectional.centerStart,
                            children: [
                              ImageIcon(
                                AssetImage("images/icone.png"),
                                color: Colors.green,
                              ),
                              SizedBox(
                                width: 40,
                                child: Positioned(
                                  left: 80,
                                  child: ImageIcon(
                                    AssetImage("images/icone.png"),
                                    color: Colors.blue,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 60,
                                child: Positioned(
                                  left: 20,
                                  child: ImageIcon(
                                    AssetImage("images/icone.png"),
                                    color: Colors.purple,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20.0),
                child: SizedBox(
                  height: 330,
                  width: 250,
                  child: const Column(
                    children: [
                      Image(
                        image: AssetImage("images/montanhas.png"), 
                        fit: BoxFit.fill,
                        height: 260,
                        width: 250,
                      ),
                      Spacer(),
                      Row(
                        children: [
                          Text(
                            "Barcelona",
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
                          Text("Madrid, Barcelona"),
                          Spacer(),
                          Stack(
                            fit: StackFit.loose,
                            alignment: AlignmentDirectional.centerStart,
                            children: [
                              ImageIcon(
                                AssetImage("images/icone.png"),
                                color: Colors.green,
                              ),
                              SizedBox(
                                width: 40,
                                child: Positioned(
                                  left: 80,
                                  child: ImageIcon(
                                    AssetImage("images/icone.png"),
                                    color: Colors.blue,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 60,
                                child: Positioned(
                                  left: 20,
                                  child: ImageIcon(
                                    AssetImage("images/icone.png"),
                                    color: Colors.purple,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    ));
  }
}

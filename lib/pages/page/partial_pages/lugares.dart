

import 'package:flutter/material.dart';

class Lugares extends StatelessWidget {
  const Lugares({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(children: [
        Text("Todos os lugares populares"),
        Column(
          children: [
            Padding(
                padding: EdgeInsets.all(20.0),
                child: SizedBox(
                  height: 330,
                  width: 250,
                  child: Column(
                    children: [
                      Image(
                        image: AssetImage("images/montanhas.png"), 
                        fit: BoxFit.cover,
                        height: 160,
                        width: 150,
                      ),
                      Spacer(),
                      Row(
                        children: [
                          Text(
                            "Espanha",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
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
                          Icon(Icons.star),
                          Text("RS7.000", style: TextStyle(color: Colors.blueAccent),),
                        ],
                      )
                    ],
                  ),
                ),
              ),
          ],
        )
      ],),
    );
  }
}
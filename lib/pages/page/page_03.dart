import 'package:flutter/material.dart';

class Page03 extends StatefulWidget {
  const Page03({super.key});

  @override
  State<Page03> createState() => Page03State();
}

class Page03State extends State<Page03> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: ListView(children: [
        Column(children: [
          Stack(
            alignment: Alignment.topRight,
            children: [
              Container(
                  height: MediaQuery.of(context).size.height / 1.8,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(40),
                          bottomRight: Radius.circular(40)),
                      image: DecorationImage(
                          image: AssetImage("images/montanhas.png"),
                          fit: BoxFit.cover))),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                "images/landing_03.png",
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 3,
              ),
              Container(
                width: MediaQuery.of(context).size.width / 1.1,
                height: 40,
                decoration: const BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Finalizar",
                      style: TextStyle(color: Colors.white),
                    )),
              )
            ],
          ),
        ]),
      ]),
    );
  }
}

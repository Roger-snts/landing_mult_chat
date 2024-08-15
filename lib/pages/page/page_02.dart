import 'package:flutter/material.dart';

class Page02 extends StatefulWidget {
  const Page02({super.key, required this.controller});
    final PageController controller;  


  @override
  State<Page02> createState() => Page02State();
}

class Page02State extends State<Page02> {
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
                          image: AssetImage("images/bote.png"),
                          fit: BoxFit.cover))),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                "images/landing_02.png",
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
                    onPressed: () {
                      widget.controller.animateToPage(2, duration: const Duration(seconds: 1), curve: Curves.easeInOut,);
                    },
                    child: const Text(
                      "Próximo",
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

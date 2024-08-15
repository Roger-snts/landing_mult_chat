
import 'package:flutter/material.dart';
import 'package:landing_mult_chat/pages/page/page_01.dart';
import 'package:landing_mult_chat/pages/page/page_02.dart';
import 'package:landing_mult_chat/pages/page/page_03.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => LandingPageState();
}

class LandingPageState extends State<LandingPage> {
  final controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: PageView(
        controller: controller,
        children: [
          Page01(controller: controller,),
          Page02(controller: controller,),
          Page03(controller: controller,)
        ],
      ),
    );
  }
}
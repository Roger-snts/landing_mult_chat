import 'package:flutter/material.dart';
import 'package:landing_mult_chat/pages/page/home_land.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:landing_mult_chat/pages/page/inicio.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Landing_Mult_Chat',
      theme: ThemeData(
        textTheme: GoogleFonts.aBeeZeeTextTheme(),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      home: const Inicio(),
    );
  }
}

import 'package:flutter/material.dart';

Future<dynamic> navegarPara(BuildContext context, Widget pagina, {bool? fechar}) {

  if (fechar == true){
      Navigator.pop(context);
  }
  return Navigator.push(
      context, MaterialPageRoute(builder: (context) => pagina));
}
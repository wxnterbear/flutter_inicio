import 'package:flutter/material.dart';
import 'package:movilesapp/screens/inicio.dart';

void main() {
  runApp(Ventanainicio());
}

class Ventanainicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi Aplicación',
      theme: ThemeData(
      ),
      home: IniciarSesion(), 
    );
  }
}

import 'package:flutter/material.dart';
import './pages/login.dart';
import './pages/lista.dart';
import './pages/cadastro.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     
      title: 'Contatinhos',

      routes: {
        '/': (context) => Login(),
        '/lista': (context) => Lista(),
        '/cadastro': (context) => Cadastro(),
      },
    );
  }
}
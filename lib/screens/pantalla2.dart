import 'package:app_04/navegadores/drawer.dart';
import 'package:flutter/material.dart';

class Pantalla2 extends StatelessWidget {
  const Pantalla2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pantalla 02"),
      ),
      body: Text("PANTALLA 02"),
      drawer: MiDrawer(),
    );
  }
}
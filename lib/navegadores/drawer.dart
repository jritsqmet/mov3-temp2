import 'package:app_04/main.dart';
import 'package:app_04/screens/pantalla2.dart';
import 'package:flutter/material.dart';

class MiDrawer extends StatelessWidget {
  const MiDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            title: Text("Pantalla 01"),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=> Pantalla1()  )),
          ),
          ListTile(
            title: Text("Pantalla 02"),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=> Pantalla2() )),
          )
        ],
      )
    );
  }
}
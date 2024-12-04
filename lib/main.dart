import 'package:app_04/navegadores/drawer.dart';
import 'package:app_04/screens/pantalla2.dart';
import 'package:flutter/material.dart';

void  main (){
  runApp( Pantalla1() );
}

class Pantalla1 extends StatelessWidget {
  const Pantalla1({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Cuerpo()
    );
  }
}

class Cuerpo extends StatelessWidget {
  const Cuerpo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pantalla 1", 
        style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1)),),
        backgroundColor: Color.fromRGBO(224, 51, 51, 1),
      ),
      drawer: MiDrawer(),
      body: Column(
        children: [
          Text("Pantalla 1"),
          pagina_btn(context)
        ],
      )
    );
  }
}

Widget pagina_btn (context){
  return ElevatedButton.icon(onPressed: ()=> navegar02(context), 
  label: Text("Ir a página 2"), icon: Icon(Icons.navigate_next_outlined),
  );
}

void navegar02 (context){
  Navigator.push(context, 
  MaterialPageRoute(builder: (context)=> Pantalla2() ));
}
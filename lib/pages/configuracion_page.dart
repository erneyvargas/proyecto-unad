import 'package:flutter/material.dart';

class ConfiguracionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Center(child: Image.asset("assets/configuraciones.png", height: 250)),
          Center(child: const Text("Cambiar nombre")),
          Container(
            width: 200,
            child: const TextField(
              maxLength: 20,
              decoration: InputDecoration(
                labelText: 'Ingresar el nombre',
                hintText: 'Ingrese el nombre de usuario',
                icon: Icon(Icons.supervised_user_circle_rounded),
              ),
            ),
          ),
          Center(child: const Text("Cambiar contraseña")),
          Container(
            width: 200,
            child: const TextField(
              maxLength: 20,
              decoration: InputDecoration(
                labelText: 'Ingresar la Contraseña',
                hintText: 'Ingrese la contraseña',
                icon: Icon(Icons.supervised_user_circle_rounded),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

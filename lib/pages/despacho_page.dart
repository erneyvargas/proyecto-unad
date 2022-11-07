import 'package:flutter/material.dart';

import '../data/lista_data.dart';
import '../widgets/button_primary.dart';
import '../widgets/lista_desplegable.dart';

class DespachosPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ListaData listaData = ListaData();

    return Scaffold(
      appBar: AppBar(title: const Text('Despachos'), centerTitle: true),
      body: Column(
        children: [
          Center(child: Image.asset("assets/despacho.png", height: 250)),
          ListaDesplegable(listaOpciones: listaData.opcionesRemisiones, titulo: "Seleccione numero de despacho"),
          ListaDesplegable(listaOpciones: listaData.opcionesPlacas, titulo: "Seleccione placa del vehiculo:"),
          const ButtonPrimary(title: "Iniciar Despacho"),
        ],
      ),
    );
  }
}

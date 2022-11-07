import 'package:flutter/material.dart';

import '../data/lista_data.dart';
import '../widgets/button_primary.dart';
import '../widgets/lista_desplegable.dart';

class ConteosCiclicosPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ListaData listaData = ListaData();
    return Scaffold(
      appBar: AppBar(title: const Text('Conteos Ciclicos'), centerTitle: true),
      body: Column(
        children: [
          Center(child: Image.asset("assets/conteos.png", height: 200)),
          ListaDesplegable(listaOpciones: listaData.opcionesBodega, titulo: "Seleccione La bodega"),
          ListaDesplegable(listaOpciones: listaData.opcionesZonas, titulo: "Seleccione la zona:"),
          ListaDesplegable(listaOpciones: listaData.opcionesUbicacion, titulo: "Seleccione la la ubicacion:"),
          const ButtonPrimary(title: "Iniciar Conteo ciclico"),
        ],
      ),
    );
  }
}

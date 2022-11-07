import 'package:flutter/material.dart';
import 'package:project_unad/data/lista_data.dart';

import '../widgets/button_primary.dart';
import '../widgets/lista_desplegable.dart';

class AlistamientoPage extends StatelessWidget {
  const AlistamientoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ListaData listaData = ListaData();
    return Scaffold(
      appBar: AppBar(title: const Text('Widget Alistamiento'), centerTitle: true),
      body: Column(
        children: [
          Center(child: Image.asset("assets/alistamiento.png", width: 300)),
          ListaDesplegable(listaOpciones: listaData.opcionesBodega, titulo: "Seleccione la bodega"),
          ListaDesplegable(listaOpciones: listaData.opcionesZonas, titulo: "Seleccione la Zona"),
          const ButtonPrimary(title: "Iniciar alistamiento"),
        ],
      ),
    );
  }
}

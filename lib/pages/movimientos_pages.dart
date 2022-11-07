import 'package:flutter/material.dart';
import 'package:project_unad/widgets/button_primary.dart';

import '../data/lista_data.dart';
import '../widgets/lista_desplegable.dart';

class MovimientosPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ListaData listaData = ListaData();
    return Scaffold(
      appBar: AppBar(title: const Text('Movimientos'), centerTitle: true),
      body: Column(
        children: [
          Center(child: Image.asset("assets/movimientos.png", height: 250)),
          ListaDesplegable(listaOpciones: listaData.opcionesUbicacion, titulo: "Seleccione la ubicacion de origen"),
          ListaDesplegable(listaOpciones: listaData.opcionesProducto, titulo: "Seleccione el producto:"),
          ListaDesplegable(listaOpciones: listaData.opcionesUbicacion, titulo: "Seleccione la ubicacion de destino"),
          const ButtonPrimary(title: "Iniciar Despacho"),
        ],
      ),
    );
  }
}

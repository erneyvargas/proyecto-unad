import 'package:flutter/material.dart';

import '../data/lista_data.dart';
import '../widgets/button_primary.dart';
import '../widgets/lista_desplegable.dart';

class ConsultasPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ListaData listaData = ListaData();
    return Scaffold(
      appBar: AppBar(title: const Text('Consultas'), centerTitle: true),
      body: ListView(
        children: [
          Center(child: Image.asset("assets/consultas.png", height: 250)),
          ListaDesplegable(listaOpciones: listaData.opcionesBodega, titulo: "Seleccione la Bodega"),
          ListaDesplegable(listaOpciones: listaData.opcionesZonas, titulo: "Seleccione la Zona:"),
          ListaDesplegable(listaOpciones: listaData.opcionesUbicacion, titulo: "Seleccione la Ubicacion"),
          ListaDesplegable(listaOpciones: listaData.opcionesProducto, titulo: "Seleccione el producto"),
          ListaDesplegable(listaOpciones: listaData.opcionesPlacas, titulo: "Seleccione el la placa del vehiculo"),
          ListaDesplegable(listaOpciones: listaData.opcionesRemisiones, titulo: "Seleccione el numero de remision"),
          ListaDesplegable(listaOpciones: listaData.opcionesRemisiones, titulo: "Seleccione el numero de despacho"),
          ListaDesplegable(listaOpciones: listaData.opcionesProvedores, titulo: "Seleccione el nombre del provedor"),
          const ButtonPrimary(title: "Realizar Busqueda"),
        ],
      ),
    );
  }
}

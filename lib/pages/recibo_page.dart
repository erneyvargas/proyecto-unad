import 'package:flutter/material.dart';
import 'package:project_unad/widgets/button_primary.dart';
import 'package:project_unad/data/lista_data.dart';
import 'package:project_unad/widgets/lista_desplegable.dart';

class ReciboPage extends StatelessWidget {
  const ReciboPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ListaData listaData = ListaData();
    return Scaffold(
      appBar: AppBar(title: const Text('Recibo'), centerTitle: true),
      body: ListView(
        children: [
          Center(child: Image.asset("assets/recibo.png", height: 300)),
          ListaDesplegable(listaOpciones: listaData.opcionesProvedores, titulo: "Seleccione proveedor"),
          ListaDesplegable(listaOpciones: listaData.opcionesRemisiones, titulo: "Seleccione el numero de remision"),
          const ButtonPrimary(title: "Iniciar Recibo"),
        ],
      ),
    );
  }
}

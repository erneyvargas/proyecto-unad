import 'package:flutter/material.dart';

class ListaDesplegable extends StatelessWidget {
  final List<String> listaOpciones;
  final String titulo;
  const ListaDesplegable({
    Key? key,
    required this.listaOpciones,
    required this.titulo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(titulo),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: DropdownButtonFormField(
            items: listaOpciones.map((e) {
              /// Ahora creamos "e" y contiene cada uno de los items de la lista.
              return DropdownMenuItem<String>(
                value: e,
                child: Text(e),
              );
            }).toList(),
            onChanged: (value) {},
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:project_unad/pages/alistamiento_page.dart';
import 'package:project_unad/pages/configuracion_page.dart';
import 'package:project_unad/pages/consultas_page.dart';
import 'package:project_unad/pages/conteos_ciclicos_page.dart';
import 'package:project_unad/pages/despacho_page.dart';
import 'package:project_unad/pages/menu_page.dart';
import 'package:project_unad/pages/movimientos_pages.dart';
import 'package:project_unad/pages/recibo_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'menu',
      routes: {
        "menu": ((context) => const MenuPage()),
        "recibo": ((context) => const ReciboPage()),
        "alistamiento": ((context) => const AlistamientoPage()),
        "despacho": ((context) => DespachosPage()),
        "conteos": ((context) => ConteosCiclicosPage()),
        "movimientos": ((context) => MovimientosPage()),
        "consultas": ((context) => ConsultasPage()),
        "configuracion": ((context) => ConfiguracionPage()),
      },
    );
  }
}

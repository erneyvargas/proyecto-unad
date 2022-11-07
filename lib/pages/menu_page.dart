import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Center(
        child: ListView(
          children: [
            const SizedBox(height: 30),
            Column(
              children: [
                Center(
                  child: Container(
                    margin: const EdgeInsets.all(20),
                    child: const Text(
                      "Bienvenidos al nuevo sistema WMS",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                Center(
                  child: SizedBox(
                    height: 80,
                    width: 200,
                    child: Image.network(
                        "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e1/Logo_unad_color.png/994px-Logo_unad_color.png"),
                  ),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.all(5),
              margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              decoration: BoxDecoration(color: Colors.grey.shade200, borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  const SizedBox(height: 10),
                  customButton(context, "Recibo de mercancia", Icons.category_outlined, "recibo"),
                  customButton(context, "Alistamiento de mercancia", Icons.add_shopping_cart_outlined, "alistamiento"),
                  customButton(context, "Despacho de mercancia", Icons.read_more, "despacho"),
                  customButton(context, "Conteos ciclicos", Icons.content_paste, "conteos"),
                  customButton(context, "Movimientos", Icons.extension, "movimientos"),
                  customButton(context, "Consultas", Icons.search_outlined, "consultas"),
                  customButton(context, "Configuracion", Icons.settings_applications_sharp, "configuracion"),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }

  Container customButton(BuildContext context, String text, IconData iconData, String routeName) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blueAccent,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(1.0, 2.0),
            blurRadius: 5.0,
            spreadRadius: 0.4,
          ),
        ],
      ),
      margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
      child: ListTile(
        title: Text(text, style: const TextStyle(color: Colors.white, fontSize: 18)),
        leading: Icon(iconData),
        onTap: () {
          Navigator.pushNamed(context, routeName);
          print("Hola...");
        },
      ),
    );
  }
}

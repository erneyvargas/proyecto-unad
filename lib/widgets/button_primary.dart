import 'package:flutter/material.dart';

class ButtonPrimary extends StatelessWidget {
  final String title;
  const ButtonPrimary({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 48),
      child: TextButton(
        style: TextButton.styleFrom(
          primary: Colors.black,
          backgroundColor: Colors.amberAccent,
          elevation: 3,
          shape: const StadiumBorder(),
        ),
        onPressed: () {},
        child: Text(
          title,
          style: const TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}

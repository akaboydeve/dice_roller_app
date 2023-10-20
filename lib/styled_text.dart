import 'package:flutter/material.dart';

class StylesText extends StatelessWidget {
  const StylesText(this.displayText, {super.key});
  final String displayText;

  @override
  Widget build(context) {
    return Text(
      displayText,
      style: const TextStyle(
        color: Colors.orange,
        fontSize: 32,
        decoration: TextDecoration.underline,
        decorationColor: Color.fromARGB(255, 255, 7, 143),
        decorationThickness: 2,
      ),
    );
  }
}

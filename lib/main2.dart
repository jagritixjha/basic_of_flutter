import 'package:flutter/material.dart';

void main() {
  runApp(
    Center(
        child: Text(
      'Hello\nDart\nFlutter',
      textDirection: TextDirection.ltr,
      style: TextStyle(
          color: Colors.red.shade900,
          height: 8,

          fontWeight: FontWeight.bold,
          fontSize: 28,
          decoration: TextDecoration.underline,
          decorationColor: Colors.amber,
          decorationThickness: 2),
    )),
  );
}

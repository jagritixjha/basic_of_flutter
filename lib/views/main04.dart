import 'package:flutter/material.dart';

void main() {
  runApp(
    Center(
        child: Text(
      'Red & White',
      textDirection: TextDirection.ltr,
      style: TextStyle(
        color: Colors.red.shade900,
        fontWeight: FontWeight.bold,
        fontSize: 28,
        decoration: TextDecoration.underline,
        decorationStyle: TextDecorationStyle.double,
        decorationColor: Colors.amber,
      ),
    )),
  );
}

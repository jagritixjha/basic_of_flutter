import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.menu),
          centerTitle: true,
          backgroundColor: Colors.redAccent,
          title: const Text("Flutter App", style: TextStyle(fontWeight: FontWeight.bold)),
          foregroundColor: Colors.white,
        ),
        body: Center(
          child: Text('Red & White Group of Institutes\nOne Step in Changing Education Chain...',
              style: TextStyle(color: Colors.redAccent, fontSize: 20), textAlign: TextAlign.center),
        ),
      ),
    ),
  );
}

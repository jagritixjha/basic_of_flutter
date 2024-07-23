import 'package:flutter/material.dart';

class Main03 extends StatelessWidget {
  const Main03({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
        title: const Text("Flutter App",
            style: TextStyle(fontWeight: FontWeight.bold)),
        foregroundColor: Colors.white,
      ),
      body: const Center(
        child: Text(
            'Red & White Group of Institutes\nOne Step in Changing Education Chain...',
            style: TextStyle(color: Colors.redAccent, fontSize: 20),
            textAlign: TextAlign.center),
      ),
    );
  }
}

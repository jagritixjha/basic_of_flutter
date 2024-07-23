import 'package:flutter/material.dart';

class Screen06 extends StatelessWidget {
  const Screen06({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        elevation: 6,
        shadowColor: Colors.green,
        title: const Text(
          textDirection: TextDirection.ltr,
          'My App',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            color: Colors.lightGreenAccent,
            border: Border.all(color: Colors.green, width: 20),
          ),
          child: const Center(
            child: Text(
              'OOOO',
              style: TextStyle(
                color: Colors.black45,
                letterSpacing: -28,
                fontSize: 85,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

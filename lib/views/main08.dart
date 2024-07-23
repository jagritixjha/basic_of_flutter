import 'package:flutter/material.dart';

class Screen08 extends StatelessWidget {
  const Screen08({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow.shade700,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text(
          'BOLT',
          style: TextStyle(
            letterSpacing: 20,
            color: Colors.white,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Center(
        child: Container(
          width: 100,
          height: MediaQuery.of(context).size.height,
          color: Colors.black,
          child: const Center(
            child: Text(
              '⚡',
              style: TextStyle(
                fontSize: 50,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

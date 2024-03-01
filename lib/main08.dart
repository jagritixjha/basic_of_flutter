import 'package:flutter/material.dart';

void main() {
  return runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomeScreen(),
  ));
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow.shade700,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'BOLT',
          style: TextStyle(
              letterSpacing: 20,
              color: Colors.white,
              fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
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

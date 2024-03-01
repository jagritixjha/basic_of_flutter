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
      backgroundColor: Colors.black45,
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        elevation: 6,
        shadowColor: Colors.green,
        title: const Text(
          'Launch Button',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            boxShadow: const [
              BoxShadow(
                blurRadius: 40,
                color: Colors.lightGreen,
                blurStyle: BlurStyle.outer,
              ),
            ],
            border: Border.all(
                color: Colors.lightGreen.shade200,
                width: 2,
                strokeAlign: BorderSide.strokeAlignOutside),
          ),
          child: const Center(
            child: Text(
              'GO',
              style: TextStyle(
                color: Colors.white,
                fontSize: 40,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

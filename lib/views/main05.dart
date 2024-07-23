import 'package:flutter/material.dart';

class Main05 extends StatelessWidget {
  const Main05({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            const Text('My RNW', style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
        foregroundColor: Colors.white,
      ),
      body: const Center(
        child: Text.rich(
          textAlign: TextAlign.center,
          TextSpan(style: TextStyle(color: Colors.redAccent), children: [
            TextSpan(
                text: 'Red & White\n',
                style: TextStyle(
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.red,
                    fontSize: 60,
                    fontWeight: FontWeight.bold)),
            TextSpan(
                text: 'Multimedia Education\n',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
            TextSpan(
                text: 'Shaping "skills" for "scaling" higher...!!!',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
          ]),
        ),
      ),
    );
  }
}

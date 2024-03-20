import 'package:flutter/material.dart';

void main() {
  return runApp(const BasicWidgets());
}

class BasicWidgets extends StatefulWidget {
  const BasicWidgets({super.key});

  @override
  State<BasicWidgets> createState() => _BasicWidgetsState();
}

class _BasicWidgetsState extends State<BasicWidgets> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Basic Widgets',
            style: TextStyle(
              color: Colors.black54,
              fontWeight: FontWeight.w700,
              fontSize: 22,
            ),
          ),
          centerTitle: true,
          elevation: 8,
          shadowColor: Colors.grey.shade300,
        ),
        body: Column(
          children: [
            Transform.scale(
              alignment: Alignment.center,
              // scale: 0.80,
              origin: const Offset(50, 100),
              scaleX: 2,
              // scaleY: 1,
              child: Divider(
                height: 100,
                color: Colors.indigo.shade200,
                endIndent: 100,
                indent: 20,
                thickness: 4,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

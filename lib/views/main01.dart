import 'package:flutter/material.dart';

class Main01 extends StatelessWidget {
  const Main01({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 140, 165, 106),
        centerTitle: true,
        title: RichText(
          text: TextSpan(
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            children: [
              WidgetSpan(
                  child: Image.asset(
                    "assets/images/bag.png",
                    height: 40,
                  )),
              const WidgetSpan(child: SizedBox(width: 6, height: 30)),
              const TextSpan(
                text: 'List of Fruits',
                style: TextStyle(color: Colors.white, letterSpacing: 1),
              ),
            ],
          ),
        ),
      ),
      body: Center(
        child: RichText(
          text: TextSpan(children: [
            WidgetSpan(
              child: Image.asset(
                "assets/images/apple.png",
                height: 40,
              ),
            ),
            const WidgetSpan(
              child: SizedBox(width: 6, height: 40),
            ),
            const TextSpan(
              text: 'Apple\n',
              style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            WidgetSpan(
              child: Image.asset(
                "assets/images/banana.png",
                height: 40,
              ),
            ),
            const WidgetSpan(
              child: SizedBox(width: 6, height: 40),
            ),
            TextSpan(
              text: 'Banana\n',
              style: TextStyle(
                color: Colors.yellow.shade700,
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            WidgetSpan(
              child: Image.asset(
                "assets/images/cherry.png",
                height: 40,
              ),
            ),
            const WidgetSpan(
              child: SizedBox(width: 6, height: 40),
            ),
            const TextSpan(
              text: 'Cherry\n',
              style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            WidgetSpan(
              child: Image.asset(
                "assets/images/avocado.png",
                height: 40,
              ),
            ),
            const WidgetSpan(
              child: SizedBox(width: 6, height: 40),
            ),
            const TextSpan(
              text: 'Avocado\n',
              style: TextStyle(
                color: Colors.green,
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            WidgetSpan(
              child: Image.asset(
                "assets/images/mango.png",
                height: 40,
              ),
            ),
            const WidgetSpan(
              child: SizedBox(width: 6, height: 40),
            ),
            TextSpan(
              text: 'Mango\n',
              style: TextStyle(
                color: Colors.yellow.shade800,
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            WidgetSpan(
              child: Image.asset(
                "assets/images/pineapple.png",
                height: 40,
              ),
            ),
            const WidgetSpan(
              child: SizedBox(width: 6, height: 40),
            ),
            const TextSpan(
              text: 'Pineapple\n',
              style: TextStyle(
                color: Colors.orange,
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            WidgetSpan(
              child: Image.asset(
                "assets/images/strawberry.png",
                height: 40,
              ),
            ),
            const WidgetSpan(
              child: SizedBox(width: 6, height: 40),
            ),
            TextSpan(
              text: 'Strawberry\n',
              style: TextStyle(
                color: Colors.red.shade400,
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            WidgetSpan(
              child: Image.asset(
                "assets/images/lime.png",
                height: 40,
              ),
            ),
            const WidgetSpan(
              child: SizedBox(width: 6, height: 40),
            ),
            const TextSpan(
              text: 'Lime',
              style: TextStyle(
                color: Colors.lightGreen,
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

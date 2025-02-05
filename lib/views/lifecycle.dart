import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool showLifecycleDemo = true;
  int counter = 0; // Property to trigger didUpdateWidget

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text("Flutter Lifecycle Demo")),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  showLifecycleDemo = !showLifecycleDemo;
                });
              },
              child: Text(showLifecycleDemo ? "Remove Widget" : "Show Widget"),
            ),
            const SizedBox(
              height: 24,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  counter++; // Updating counter to trigger didUpdateWidget
                });
              },
              child: Text("Update Property ($counter)"),
            ),
            if (showLifecycleDemo) LifecycleDemo(counter: counter),
          ],
        ),
      ),
    );
  }
}

class LifecycleDemo extends StatefulWidget {
  final int counter;

  const LifecycleDemo({super.key, required this.counter});

  @override
  State<LifecycleDemo> createState() => _LifecycleDemoState();
}

class _LifecycleDemoState extends State<LifecycleDemo> {
  String text = "Hello, Flutter!";

  @override
  void initState() {
    super.initState();
    debugPrint("🔵 1️⃣ initState() - Widget Created");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    debugPrint("🟡 2️⃣ didChangeDependencies() - Dependencies Changed");
  }

  @override
  void didUpdateWidget(covariant LifecycleDemo oldWidget) {
    super.didUpdateWidget(oldWidget);
    debugPrint(
        "🟠 3️⃣ didUpdateWidget() - Parent Updated Property: ${oldWidget.counter} → ${widget.counter}");
  }

  @override
  void deactivate() {
    super.deactivate();
    debugPrint("🟣 4️⃣ deactivate() - Widget Removed from Tree");
  }

  @override
  void dispose() {
    debugPrint("🔴 5️⃣ dispose() - Widget Destroyed");
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    debugPrint("🔥 build() - UI Built/Updated");

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 16,
          ),
          Text("Counter: ${widget.counter}",
              style: const TextStyle(fontSize: 20)),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              setState(() {
                text = "State Updated!";
              });
            },
            child: const Text("Update State"),
          ),
        ],
      ),
    );
  }
}

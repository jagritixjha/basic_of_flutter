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
            if (showLifecycleDemo) const LifecycleDemo(key: ValueKey(1)),
          ],
        ),
      ),
    );
  }
}

class LifecycleDemo extends StatefulWidget {
  const LifecycleDemo({super.key});

  @override
  State<LifecycleDemo> createState() => _LifecycleDemoState();
}

class _LifecycleDemoState extends State<LifecycleDemo> {
  String text = "Hello, Flutter!";

  // Called when the widget is first created
  @override
  void initState() {
    super.initState();
    debugPrint("1️⃣ initState() called");
  }

  // Called when dependencies change (e.g., InheritedWidget updates)
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    debugPrint("2️⃣ didChangeDependencies() called");
  }

  // Called when the parent widget updates properties
  @override
  void didUpdateWidget(covariant LifecycleDemo oldWidget) {
    super.didUpdateWidget(oldWidget);
    debugPrint("3️⃣ didUpdateWidget() called");
  }

  // Called when the widget is removed but may reappear
  @override
  void deactivate() {
    super.deactivate();
    debugPrint("4️⃣ deactivate() called");
  }

  // Called before the widget is permanently destroyed
  @override
  void dispose() {
    debugPrint("5️⃣ dispose() called");
    super.dispose();
  }

  // Builds the UI (called every time `setState()` is triggered)
  @override
  Widget build(BuildContext context) {
    debugPrint("🔥 build() called");

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(text, style: const TextStyle(fontSize: 20)),
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

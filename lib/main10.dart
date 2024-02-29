import 'package:flutter/material.dart';

void main() {
  return runApp(const MaterialApp(
    home: HomeScreen(),
  ));
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.brown.shade800,
          title: const Text(
            'SPLITTER',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                color: Colors.orangeAccent.shade400,
                child: Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: 80,
                        width: MediaQuery.of(context).size.width - 20,
                        color: Colors.yellow.shade700,
                        child: const Text(
                          '1',
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      Container(
                        alignment: Alignment.center,
                        height: 80,
                        width: MediaQuery.of(context).size.width - 20,
                        color: Colors.yellow.shade700,
                        child: const Text(
                          '2',
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      Container(
                        alignment: Alignment.center,
                        height: 80,
                        width: MediaQuery.of(context).size.width - 20,
                        color: Colors.yellow.shade700,
                        child: const Text(
                          '3',
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      Container(
                        alignment: Alignment.center,
                        height: 80,
                        width: MediaQuery.of(context).size.width - 20,
                        color: Colors.yellow.shade700,
                        child: const Text(
                          '4',
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                    ],
                  ),
                )),
              ),
            ),
            Container(
              color: Colors.orange.shade800,
              width: MediaQuery.of(context).size.width,
              child: Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(16),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: 80,
                        height: 295,
                        color: Colors.blueGrey.shade100,
                        child: const Text(
                          '5',
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        ),
                      ),
                      const SizedBox(width: 16),
                      Container(
                        alignment: Alignment.center,
                        width: 80,
                        height: 295,
                        color: Colors.blueGrey.shade100,
                        child: const Text(
                          '6',
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        ),
                      ),
                      const SizedBox(width: 16),
                      Container(
                        alignment: Alignment.center,
                        width: 80,
                        height: 295,
                        color: Colors.blueGrey.shade100,
                        child: const Text(
                          '7',
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        ),
                      ),
                      const SizedBox(width: 16),
                      Container(
                        alignment: Alignment.center,
                        width: 80,
                        height: 295,
                        color: Colors.blueGrey.shade100,
                        child: const Text(
                          '8',
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        ),
                      ),
                      const SizedBox(width: 16),
                    ],
                  ),
                ),
              )),
            ),
          ],
        ));
  }
}

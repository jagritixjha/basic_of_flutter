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
        appBar: AppBar(
          backgroundColor: Colors.brown.shade900,
          title: const Text(
            'SPLITTER',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Expanded(
                child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                color: Colors.yellow.shade800,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: 80,
                        width: MediaQuery.of(context).size.width - 20,
                        color: Colors.yellow.shade600,
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
                        color: Colors.yellow.shade600,
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
                        color: Colors.yellow.shade600,
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
                        color: Colors.yellow.shade600,
                        child: const Text(
                          '4',
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
                        color: Colors.yellow.shade600,
                        child: const Text(
                          '5',
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )),
            Expanded(
                child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                color: Colors.orange.shade800,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: 80,
                        height: MediaQuery.of(context).size.height - 20,
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
                        height: MediaQuery.of(context).size.height - 20,
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
                        height: MediaQuery.of(context).size.height - 20,
                        color: Colors.blueGrey.shade100,
                        child: const Text(
                          '8',
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        ),
                      ),
                      const SizedBox(width: 16),
                      Container(
                        alignment: Alignment.center,
                        width: 80,
                        height: MediaQuery.of(context).size.height - 20,
                        color: Colors.blueGrey.shade100,
                        child: const Text(
                          '9',
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        ),
                      ),
                      const SizedBox(width: 16),
                      Container(
                        alignment: Alignment.center,
                        width: 80,
                        height: MediaQuery.of(context).size.height - 20,
                        color: Colors.blueGrey.shade100,
                        child: const Text(
                          '10',
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )),
          ],
        ));
  }
}

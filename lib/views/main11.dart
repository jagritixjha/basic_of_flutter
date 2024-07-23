import 'package:flutter/material.dart';

class BasicWidgets extends StatefulWidget {
  const BasicWidgets({super.key});

  @override
  State<BasicWidgets> createState() => _BasicWidgetsState();
}

class _BasicWidgetsState extends State<BasicWidgets> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
        drawer: Drawer(
          width: 250,
          elevation: 30,
          // surfaceTintColor: Colors.orange,
          shadowColor: Colors.red.shade900,
          backgroundColor: Colors.grey.shade50,
          child: const Padding(
            padding: EdgeInsets.only(top: 50, left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 24,
                      backgroundImage: NetworkImage(
                        'https://i.pinimg.com/474x/2b/62/6f/2b626f3f0dc0fdd67d97db604a8af895.jpg',
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Jagriti Jha',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          'jagritixjha@gmail.com',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
        body: Column(
          children: [
            Transform.scale(
              alignment: Alignment.center,
              // scale: 1,
              // origin: const Offset(-100, 100),
              scaleX: 1,
              scaleY: 1,
              child: Divider(
                height: 100,
                color: Colors.indigo.shade200,
                endIndent: 100,
                indent: 20,
                thickness: 4,
              ),
            ),
            Transform.rotate(
              alignment: Alignment.center,
              angle: 1,
              origin: const Offset(-200, -20),
              child: Divider(
                height: 100,
                color: Colors.indigo.shade200,
                endIndent: 100,
                indent: 100,
                thickness: 4,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

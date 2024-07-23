import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  final VoidCallback onNextScreen;

  const HomeScreen({required this.onNextScreen, super.key});

  @override
  State<StatefulWidget> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  bool unMute = false;

  @override
  Widget build(BuildContext context) {
    // log('HomeScreen build called');

    return CupertinoPageScaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: CupertinoColors.white,
      navigationBar: CupertinoNavigationBar(
        backgroundColor: CupertinoColors.white,
        leading: Text(
          'Home Screen',
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
              fontSize: 18,
              color: CupertinoColors.black,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        trailing: IconButton(
          onPressed: () {
            setState(() {
              unMute = !unMute;
            });
            log(unMute.toString());
          },
          icon: Icon(
            unMute ? CupertinoIcons.bell_fill : CupertinoIcons.bell_slash_fill,
            size: 24,
            color: CupertinoColors.systemBlue.darkHighContrastColor,
          ),
        ),
      ),
      child: CustomScrollView(
        slivers: [
          CupertinoSliverNavigationBar(
            backgroundColor:
                CupertinoColors.systemBlue.darkHighContrastElevatedColor,
            leading: const Icon(
              CupertinoIcons.layers,
              size: 24,
              color: CupertinoColors.white,
            ),
            largeTitle: const Text(
              " This is Custom Scroll View",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            trailing: const Icon(
              Icons.add,
              size: 24,
              color: CupertinoColors.white,
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: 30,
              (context, index) => Text(
                '     hello there',
                textDirection: TextDirection.ltr,
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    color: CupertinoColors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                CupertinoButton.filled(
                  child: Text(
                    'next screen',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        color: CupertinoColors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  onPressed: widget.onNextScreen,
                ),
                CupertinoListSection(
                  backgroundColor: Colors.indigo.shade100,
                  header: Text(
                    "This Is Header of ListSelection",
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        fontSize: 18,
                        color: CupertinoColors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  footer: Text(
                    "This Is Footer of ListSelection",
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        fontSize: 18,
                        color: CupertinoColors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  separatorColor: Colors.deepOrange,
                  children: [
                    Container(
                      height: 100,
                      width: 150,
                      color: Colors.purple,
                    ),
                    Container(
                      height: 100,
                      width: 300,
                      color: Colors.pink,
                    ),
                    Column(
                      children: List.generate(
                        5,
                        (index) => CupertinoListTile(
                          leadingSize: 50,
                          subtitle: const Text(
                            "hello",
                            style: TextStyle(color: CupertinoColors.black),
                          ),
                          backgroundColor: Colors.white,
                          trailing: const Icon(CupertinoIcons.delete),
                          title: Text(
                            "Hello $index",
                            style:
                                const TextStyle(color: CupertinoColors.black),
                          ),
                          leading: Text(
                            "$index",
                            style:
                                const TextStyle(color: CupertinoColors.black),
                          ),
                          leadingToTitle: 40,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class NextScreen extends StatefulWidget {
  final VoidCallback onHomeScreen;

  const NextScreen({required this.onHomeScreen, super.key});

  @override
  State<NextScreen> createState() => _NextScreenState();
}

class _NextScreenState extends State<NextScreen> {
  @override
  Widget build(BuildContext context) {
    // log('NextScreen build called');

    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.white,
      navigationBar: const CupertinoNavigationBar(
        automaticallyImplyLeading: true,
        middle: SizedBox(
          height: 20,
          width: 100,
          child: Text(
            "hello",
            style: TextStyle(color: Colors.blue),
          ),
        ),
        trailing: Icon(Icons.search_rounded),
      ),
      child: CustomScrollView(
        slivers: [
          const CupertinoSliverNavigationBar(
            leading: Text("welcome to slivers"),
            largeTitle: Text("this is large title"),
            trailing: Icon(Icons.add),
          ),
          SliverFillRemaining(
            child: Column(
              children: [
                CupertinoButton.filled(
                  child: const Text("next screen"),
                  onPressed: widget.onHomeScreen,
                ),
                Expanded(
                  child: PageView(
                    reverse: false,
                    children: List.generate(
                      10,
                      (index) {
                        return Container(
                          alignment: Alignment.center,
                          color: Colors.primaries[index].shade300,
                          child: Text(
                            '$index page of pageView',
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                fontSize: 16,
                                color: CupertinoColors.white,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: PageView.builder(
                    itemCount: 10,
                    scrollDirection: Axis.vertical,
                    reverse: false,
                    itemBuilder: (context, index) {
                      return Container(
                        alignment: Alignment.center,
                        color: Colors.primaries[index].shade100,
                        child: Text(
                          '$index page of pageView',
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                              fontSize: 16,
                              color: CupertinoColors.black,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

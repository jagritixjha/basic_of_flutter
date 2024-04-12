import 'package:app_bar/utils/quotes_list.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ListViewScreen extends StatelessWidget {
  const ListViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Quotes App",
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: ListView.separated(
                itemBuilder: (context, index) {
                  return Container(
                    height: 100,
                    width: 100,
                    color: Colors.indigo.shade50,
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    alignment: Alignment.center,
                    child: Text(
                      quotes[index],
                      style: GoogleFonts.aclonica(
                        textStyle: const TextStyle(
                            color: Colors.black87, letterSpacing: .5),
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, int) {
                  return const Divider();
                },
                itemCount: quotes.length,
              ),
            ),
            //   Expanded(
            //     child: GridView.builder(
            //       gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            //         crossAxisCount: 2,
            //         mainAxisExtent: 200,
            //         crossAxisSpacing: 0,
            //         mainAxisSpacing: 20,
            //         childAspectRatio: 0.2,
            //       ),
            //       itemCount: quotes.length,
            //       itemBuilder: (context, index) {
            //         return Container(
            //           height: 100,
            //           width: 100,
            //           color: Colors.grey.shade100,
            //           alignment: Alignment.center,
            //           margin: EdgeInsets.only(left: 10, right: 10),
            //           child: Text(
            //             quotes[index],
            //             style: TextStyle(fontFamily: 'Bungee_Spice'),
            //           ),
            //         );
            //       },
            //     ),
            //   ),
          ],
        ),
      ),
    );
  }
}

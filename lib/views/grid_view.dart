import 'package:app_bar/utils/quotes_list.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GridViewScreen extends StatefulWidget {
  const GridViewScreen({super.key});

  @override
  State<GridViewScreen> createState() => _GridViewScreenState();
}

class _GridViewScreenState extends State<GridViewScreen> {
  int _crossAxisCount = 2;
  double _aspectRatio = 1.5;
  ViewType _viewType = ViewType.grid;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Quotes App",
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24),
        ),
        actions: [
          IconButton(
            onPressed: () {
              if (_viewType == ViewType.list) {
                _crossAxisCount = 2;
                _aspectRatio = 1.5;
                _viewType = ViewType.grid;
              } else {
                _crossAxisCount = 1;
                _aspectRatio = 5;
                _viewType = ViewType.list;
              }
              setState(() {});
            },
            icon: Icon(
              _viewType == ViewType.list
                  ? Icons.grid_view_outlined
                  : Icons.menu,
            ),
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Scrollbar(
              // controller: scrollController,
              thickness: 15,
              radius: const Radius.circular(12),
              scrollbarOrientation: ScrollbarOrientation.right,
              thumbVisibility: true,
              interactive: false,
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: _crossAxisCount,
                  mainAxisExtent: 200,
                  crossAxisSpacing: _aspectRatio,
                  mainAxisSpacing: 20,
                  childAspectRatio: 0.2,
                ),
                itemCount: quotes.length,
                itemBuilder: (context, index) {
                  return Container(
                    height: 100,
                    width: 100,
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    color: Colors.grey.shade100,
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only(left: 10, right: 10),
                    child: Text(
                      quotes[index],
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
      // height: 100,
      // width: 100,
    );
  }
}

enum ViewType {
  list,
  grid,
}

/*  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Quotes App",
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 6),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisExtent: 200,
                  crossAxisSpacing: 0,
                  mainAxisSpacing: 20,
                  childAspectRatio: 0.2,
                ),
                itemCount: quotes.length,
                itemBuilder: (context, index) {
                  return Container(
                    height: 100,
                    width: 100,
                    color: Colors.grey.shade100,
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    margin: EdgeInsets.only(left: 10, right: 10),
                    child: Text(
                      quotes[index],
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                      // style: TextStyle(fontFamily: 'Bungee_Spice'),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }*/

import 'dart:developer';

import 'package:app_bar/views/cupertino_app_basics.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(
    const CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: NavigationScreen(),
    ),
  );
}

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  final CupertinoTabController _controller = CupertinoTabController();

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      controller: _controller,
      tabBar: CupertinoTabBar(
        backgroundColor: CupertinoColors.white,
        border: Border(
          top: BorderSide(
            color: CupertinoColors.systemGrey.highContrastElevatedColor,
          ),
        ),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            label: 'homeScreen',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.settings),
            label: 'settings',
          ),
        ],
      ),
      tabBuilder: (context, index) {
        log('tab builder index ---- $index');
        log('_controller.index ---- ${_controller.index}');

        switch (_controller.index) {
          case 0:
            log('case 0 ---------- Home screen tab selected');
            return HomeScreen(
              onNextScreen: () {
                _controller.index = 1;
                // log('_controller.index  ---- ${_controller.index}');
              },
            );
          case 1:
            log('case 1 ---------- Next screen tab selected');
            return NextScreen(
              onHomeScreen: () {
                _controller.index = 0;
                // log('_controller.index ---- ${_controller.index}');
              },
            );
          default:
            log('case 0 ---------- Default tab selected');
            return HomeScreen(
              onNextScreen: () {
                _controller.index = 1;
                // log('_controller.index ---- ${_controller.index}');
              },
            );
        }
      },
    );
  }
}

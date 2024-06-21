import 'package:flutter/material.dart';
import 'package:navio/Presentations/Screens/home_page.dart';
import 'package:navio/Presentations/Screens/news_page.dart';
import 'package:navio/Presentations/Screens/setting_page.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key}) : _controller = PersistentTabController(initialIndex: 0);

  final PersistentTabController _controller;

  List<Widget> _buildScreens() {
    return [const Homepage(), const Newspage(), const Settingpage()];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(icon: const Icon(Icons.home), title: "Home"),
      PersistentBottomNavBarItem(
          icon: const Icon(Icons.newspaper), title: "News"),
      PersistentBottomNavBarItem(
          icon: const Icon(Icons.settings), title: "Settings")
    ];
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/', // Define the initial route
      routes: {
        '/': (context) => Scaffold(
              appBar: AppBar(
                title: const Text("My24 Routines"),
                centerTitle: true,
              ),
              body: PersistentTabView(
                context,
                controller: _controller,
                screens: _buildScreens(),
                items: _navBarsItems(),
                confineInSafeArea: true,
                backgroundColor: Colors.white,
                onItemSelected: (index) {
                  // Renamed 'int' to 'index'
                  debugPrint("current index is $index");
                },
                handleAndroidBackButtonPress: true,
                hideNavigationBarWhenKeyboardShows: true,
                decoration: NavBarDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  colorBehindNavBar: Colors.white,
                ),
                popAllScreensOnTapOfSelectedTab: true,
                popActionScreens: PopActionScreensType.all,
                itemAnimationProperties: const ItemAnimationProperties(
                  duration: Duration(milliseconds: 200),
                  curve: Curves.ease,
                ),
                screenTransitionAnimation: const ScreenTransitionAnimation(
                  animateTabTransition: true,
                  curve: Curves.ease,
                  duration: Duration(milliseconds: 200),
                ),
                navBarHeight: MediaQuery.of(context).viewInsets.bottom > 0
                    ? 0.0
                    : kBottomNavigationBarHeight,
                navBarStyle: NavBarStyle.style12,
              ),
            ),
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:navio/Presentations/Screens/home_page.dart';
import 'package:navio/Presentations/Screens/news_page.dart';
import 'package:navio/Presentations/Screens/setting_page.dart';

import 'Presentations/Screens/about_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Navio Demo",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:Scaffold(
        appBar: AppBar(
          title: const Text("Navio Demo"),
        ),
        body: const Homepage(),
        bottomNavigationBar: GNav(
        gap: 5,
        tabs: [
        const GButton(
          icon: Icons.home,
          text: "Home",
        ),
        GButton(
          icon: Icons.search,
          text: "Search",
          onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Aboutpage()));
          },
          ),
        GButton(
          icon: Icons.newspaper_sharp,
          text: "News",
          onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context) =>const Newspage()));
          },
        ),
        GButton(
          icon: Icons.settings,
          text: "Settings",
          onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Settingpage()));
          },
        ),
      ], selectedIndex: 0),
        ),
    );
  }
}
import "package:flutter/material.dart";
import "package:google_nav_bar/google_nav_bar.dart";
import "package:navio/Presentations/Screens/about_page.dart";

class Barpage extends StatefulWidget {
  const Barpage({super.key});

  @override
  State<Barpage> createState() => _BarpageState();
}

class _BarpageState extends State<Barpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        const GButton(
          icon: Icons.add,
          text: "Add",
        ),
        const GButton(
          icon: Icons.settings,
          text: "Settings",
        ),
      ], selectedIndex: 0),
    );
  }
}
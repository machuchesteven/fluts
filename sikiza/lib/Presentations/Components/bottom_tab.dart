import 'package:flutter/material.dart';

BottomNavigationBar _sikizaBottomNavBar() {
  return BottomNavigationBar(
    items: const <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: "Home",
      ),
      BottomNavigationBarItem(
        icon: Icon(
          Icons.search,
          color: Colors.black12,
        ),
        label: "Search",
      ),
      BottomNavigationBarItem(
        icon: Icon(
          Icons.library_music,
          color: Colors.black12,
        ),
        label: "Library",
      ),
      BottomNavigationBarItem(
        icon: Icon(
          Icons.settings,
          color: Colors.black12,
        ),
        label: "Settings",
      ),
    ],
    currentIndex: 0,
    selectedItemColor: Colors.black,
    onTap: (int index) {
      debugPrint("Tapped item: $index");
      // set the current selected index to the pressed item's index
    },
  );
}

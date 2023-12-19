import "package:flutter/material.dart";
import "package:sikiza/Presentations/Screens/equalizerpage.dart";

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _sikizaAppBar(),
        drawer: _sikizaDrawer(),
        body: Column(children: [
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(
                  const Color.fromARGB(62, 71, 58, 183)),
            ),
            child: const Text("Equalizer"),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const Equalizerpage()));
            },
          )
        ]),
        bottomNavigationBar: _sikizaBottomNavBar());
  }

  AppBar _sikizaAppBar() {
    return AppBar(
      title: const Text("Sikiza"),
      centerTitle: true,
      actions: [
        IconButton(
            icon: const Icon(Icons.play_arrow),
            onPressed: () {
              debugPrint(
                  "Play action button clicked if is playing, else pause clicked");
            }),
        IconButton(
          icon: const Icon(Icons.search),
          onPressed: () {
            debugPrint("Equalizer from actions clicked");
          },
        ),
      ],
    );
  }

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
      selectedItemColor: Colors.deepPurple,
      onTap: (int index) {
        debugPrint("Tapped item: $index");
        // set the current selected index to the pressed item's index
      },
    );
  }

  Drawer _sikizaDrawer() {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: const <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              "SoftPlayer",
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Home"),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Settings"),
          ),
          ListTile(
            leading: Icon(Icons.info),
            title: Text("About"),
          ),
        ],
      ),
    );
  }
}

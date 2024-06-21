import "package:flutter/material.dart";
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
      appBar: AppBar(
        title: const Text("Navio Demo"),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.info),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Aboutpage(),
                ),
              );
            },
          ),
        ],
      ),
      body: const Center(
        child: Text("Hello World"),
      ),
    );
  }
}

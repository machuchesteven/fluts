import "package:flutter/material.dart";
import "package:sikiza/Presentations/Screens/equalizerpage.dart";

class name extends StatelessWidget {
  const name({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SoftPlayer"),
      ),
      drawer: Drawer(
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
      ),
      body: Column(children: [
        Container(
          margin: EdgeInsets.all(8),
          child: ElevatedButton(
            child: Text("Equalizer"),
            onPressed: (){
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const Equalizerpage())
              );
            },
          )
        )
      ]),
    );
  }
}
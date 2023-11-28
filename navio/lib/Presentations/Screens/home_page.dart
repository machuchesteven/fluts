import 'package:flutter/material.dart';
import 'package:navio/Presentations/Screens/bar_page.dart';
import 'package:navio/Presentations/Screens/setting_page.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Navio Home"),
      ),
      body: Column(
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () { Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const Settingpage()));},
              child: const Text("Go to About page"),
            ),
          ),
          const Text("Homepage information and intro")
        ],
      ),
      floatingActionButton: IconButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
        ),
        icon: const Icon(Icons.play_arrow),
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => Barpage()));
        },

      )
    );
  }
}
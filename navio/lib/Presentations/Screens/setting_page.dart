import 'package:flutter/material.dart';
import 'package:navio/Presentations/Screens/start_page.dart';

class Settingpage extends StatelessWidget {
  const Settingpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () { Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => const StartPage()));
            },
          child: const Text("Go to Start page"),
      ),
    ),
    );
  }
}
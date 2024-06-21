import 'package:flutter/material.dart';
import 'package:navio/Presentations/Screens/home_page.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () { Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const Homepage()));},
              child: const Text("Go Home"),
            ),
            ElevatedButton(
              onPressed: () { Navigator.of(context).pop();},
              child: const Text("Go back"),
            ),
          ],
        ),
    ),
    );
  }
}
import 'package:flutter/material.dart';
import 'home_page.dart';

class Aboutpage extends StatelessWidget {
  const Aboutpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const Homepage()));
          },
          child: const Text("Homepage"),
        ),
        const Text("About page information and intro"),
      ]),
    );
  }
}

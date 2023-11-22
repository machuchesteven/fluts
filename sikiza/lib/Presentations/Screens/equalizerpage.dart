import 'package:flutter/material.dart';

class Equalizerpage extends StatelessWidget {
  const Equalizerpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Equalizer")),
      body: const Column(
        children: [
          Text("Equalizer page",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),)
        ],
      ),
    );
  }
}
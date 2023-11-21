import 'package:flutter/material.dart';
import 'package:navio/Presentations/Screens/setting_page.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Navio Home"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (context)=> Settingpage()));},
          child: const Text("Go to About page"),
      ),
    ),
    );
  }
}
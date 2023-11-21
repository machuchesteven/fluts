import 'package:flutter/material.dart';
import 'package:navio/Presentations/Screens/home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Navio Demo",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
        title: const Text("Start Page"),
        ),
        body: const Homepage(),
      ),
    );
  }
}
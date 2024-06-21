import 'package:flutter/material.dart';


class RoutedPage extends StatelessWidget {
  const RoutedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                print("RoutedPage");
                },
              child: const Text("RoutedPage"),
            ),
            const Text("RoutedPage information"),
          ],
        ),
    ),
    );
  }
}
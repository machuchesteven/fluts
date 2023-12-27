import 'package:flutter/material.dart';

class AddTimerPage extends StatefulWidget {
  const AddTimerPage({super.key});

  @override
  State<AddTimerPage> createState() => _AddTimerPageState();
}

class _AddTimerPageState extends State<AddTimerPage> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        children: [
          Text(
            'Add Timer',
          ),
        ],
      ),
    );
  }
}

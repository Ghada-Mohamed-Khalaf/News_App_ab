import 'package:flutter/material.dart';

class ScienceScreen extends StatelessWidget {
  const ScienceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: const Text(
        "Science Screen",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class AnimScreen extends StatelessWidget {
  const AnimScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Anime Detail")),
      body: const Center(
        child: Text("Welcome to the Anime Detail Page!"),
      ),
    );
  }
}

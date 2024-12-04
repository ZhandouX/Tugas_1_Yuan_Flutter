import 'package:flutter/material.dart';

class AnimeDetailScreenAll extends StatelessWidget {
  final Map<String, dynamic> anime;

  const AnimeDetailScreenAll({super.key, required this.anime});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(anime['title']),
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset(anime['image'], fit: BoxFit.cover),
            Text(
              anime['title'],
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text('Rating: ${anime['rating']}'),
          ],
        ),
      ),
    );
  }
}

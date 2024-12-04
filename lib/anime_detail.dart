import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AnimeDetailScreen extends StatelessWidget {
  final Map<String, dynamic> anime;

  const AnimeDetailScreen({super.key, required this.anime});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(201, 34, 167, 255),
        title: Text(
          anime['title'],
          style: GoogleFonts.eduNswActFoundation(
            textStyle: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
        ),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 3, 250, 238),
                Color.fromARGB(255, 0, 132, 255),
                Color.fromARGB(255, 106, 0, 255),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                // Gambar Anime
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    anime['image'],
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                // Tombol Watch Now
                Positioned(
                  bottom: 0, // Posisi tombol berada di dalam gambar
                  child: Container(
                    width: MediaQuery.of(context).size.width - 32,
                    padding: const EdgeInsets.symmetric(vertical: 2),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      gradient: const LinearGradient(
                        colors: [
                          Color.fromARGB(255, 3, 250, 238),
                          Color.fromARGB(255, 0, 132, 255),
                          Color.fromARGB(255, 106, 0, 255),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                    child: Center(
                      child: TextButton(
                        onPressed: () {
                          // Handle watch now action here
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('Watching ${anime['title']}!')),
                          );
                        },
                        child: const Text(
                          'Watch Now',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Text(
              anime['title'],
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5),
            Text(
              'Score : ${anime['rating']}',
              style: const TextStyle(fontSize: 12),
            ),
            const SizedBox(height: 5),
            Text(
              'Genres : ${anime['genre'].join(', ')}',
              style: const TextStyle(fontSize: 12),
            ),
            const SizedBox(height: 5),
            Text(
              'Status : ${anime['status']}',
              style: const TextStyle(fontSize: 12),
            ),
            const SizedBox(height: 5),
            Text(
              'Studio : ${anime['studio']}',
              style: const TextStyle(fontSize: 12),
            ),
            const SizedBox(height: 5),
            Text(
              'Release Date : ${anime['releaseDate']}',
              style: const TextStyle(fontSize: 12),
            ),
            const SizedBox(height: 5),
            Text(
              'Update : ${anime['update']}',
              style: const TextStyle(fontSize: 12),
            ),
            const SizedBox(height: 5),
            Text(
              'Duration : ${anime['duration']}',
              style: const TextStyle(fontSize: 12),
            ),
            const SizedBox(height: 5),
            Text(
              'Episode : ${anime['episodes']}',
              style: const TextStyle(fontSize: 12),
            ),
            const SizedBox(height: 5),
            Text(
              'Jenis : ${anime['jenis']}',
              style: const TextStyle(fontSize: 12),
            ),
            const SizedBox(height: 5),
            Text(
              'Musim : ${anime['musim']}',
              style: const TextStyle(fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}

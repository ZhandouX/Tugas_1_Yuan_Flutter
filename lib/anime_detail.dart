import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'tonton_anime_screen.dart'; // Impor halaman TontonAnime

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
      backgroundColor: const Color.fromARGB(255, 18, 18, 18), // Dark background color
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    anime['image'],
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 0,
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
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  TontonAnimeScreen(anime: anime), // Navigate to TontonAnimeScreen
                            ),
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
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                gradient: const LinearGradient(
                  colors: [
                    Color.fromARGB(255, 33, 33, 33),
                    Color.fromARGB(255, 48, 48, 48),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Table(
                columnWidths: const {
                  0: FractionColumnWidth(0.3),
                  1: FractionColumnWidth(0.7),
                },
                border: TableBorder.all(color: Colors.grey, width: 0.5),
                children: [
                  _buildTableRow('Title', anime['title']),
                  _buildTableRow('Score', anime['rating'].toStringAsFixed(1)),
                  _buildTableRow('Genres', anime['genre'].join(', ')),
                  _buildTableRow('Status', anime['status']),
                  _buildTableRow('Studio', anime['studio']),
                  _buildTableRow('Release Date', anime['releaseDate']),
                  _buildTableRow('Update', anime['update']),
                  _buildTableRow('Duration', anime['duration']),
                  _buildTableRow('Episodes', anime['totaleps']),
                  _buildTableRow('Jenis', anime['jenis']),
                  _buildTableRow('Musim', anime['musim']),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  TableRow _buildTableRow(String label, dynamic value) {
    return TableRow(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            label,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            value.toString(),  // Pastikan konversi nilai ke String
            style: const TextStyle(
              fontSize: 14,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}

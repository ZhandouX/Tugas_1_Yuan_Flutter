import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TayangScreen extends StatelessWidget {
  const TayangScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(201, 34, 167, 255),
        title: Text(
          'Sedang Tayang',
          style: GoogleFonts.eduNswActFoundation(
            textStyle: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 28,
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
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/BgHome.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildAnimeList(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAnimeList() {
    final List<Map<String, String>> animeData = [
      {
        'title': 'Love Live! Superstar!!',
        'image': 'assets/love_live.jpg',
        'episode': 'Episode 9 - Airing Now',
      },
      {
        'title': 'Seirei Gensouki Season 2',
        'image': 'assets/seirei_gensouki.jpg',
        'episode': 'Episode 9 - Airing Now',
      },
      {
        'title': 'Natsume Yuujinchou Shichi',
        'image': 'assets/natsume_yuujinchou.jpg',
        'episode': 'Episode 10 - Airing Now',
      },
      {
        'title': 'Hoshifuru Ouka no Nina',
        'image': 'assets/hoshifuru_ouka1.jpg',
        'episode': 'Episode 6 - Airing Now',
      },
      {
        'title': 'Arifureta Shokugyou de',
        'image': 'assets/arifureta.jpg',
        'episode': 'Episode 9 - Airing Now',
      },
      {
        'title': 'Saikyou no Shienshoku',
        'image': 'assets/saikyou.jpg',
        'episode': 'Episode 7 - Airing Now',
      },
      {
        'title': 'Komonohashi Ron no Kindan',
        'image': 'assets/komonohashi.jpg',
        'episode': 'Episode 5 - Airing Now',
      },
      {
        'title': 'Raise wa Tanin ga Ii',
        'image': 'assets/raise.jpg',
        'episode': 'Episode 4 - Airing Now',
      },
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: animeData.map((anime) => _buildAnimeCard(anime)).toList(),
    );
  }

  Widget _buildAnimeCard(Map<String, String> anime) {
    return Card(
      color: Colors.white.withOpacity(0.9),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(12),
              bottomLeft: Radius.circular(12),
            ),
            child: Image.asset(
              anime['image']!,
              height: 100, // Lebar gambar lebih kecil
              width: 100,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  anime['title']!,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 4),
                Text(
                  anime['episode']!,
                  style: const TextStyle(fontSize: 14),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.tv,
              color: Colors.blue,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}

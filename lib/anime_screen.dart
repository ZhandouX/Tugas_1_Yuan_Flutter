import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:aplikasi_pertamaku/animd.dart'; // Import AnimeDart page
import 'package:aplikasi_pertamaku/tayang.dart'; // Import Tayang page
import 'package:aplikasi_pertamaku/anime_detail.dart';

class MangaScreen extends StatefulWidget {
  const MangaScreen({super.key});

  @override
  State<MangaScreen> createState() => _MangaScreenState();
}

class _MangaScreenState extends State<MangaScreen> {
  final List<Map<String, dynamic>> animeList1 = [
    {
      'title': 'Shingeki no Kyojin: The Final Season Part 2',
      'rating': 9.40,
      'image': 'assets/aot_part2.jpg',
      'genre': ['Action', 'Drama', 'Fantasy', 'Militer', 'Misteri', 'Shounen', 'Super Power'],
      'status': 'Selesai Tayang',
      'studio': 'add some',
      'releaseDate': '10 Januari 2022',
      'update': '-',
      'duration': '24 min./eps.',
      'episodes': [{'titleeps': 'Episode 1', 'url': 'https://wave.video/embed/6751b88b3fdf6b7be7a92410/6751b8e4ce6c60681ae95674.mp4'},
                  {'titleeps': 'Episode 2', 'url': 'https://wave.video/embed/6751b88b3fdf6b7be7a92410/6751b8e4ce6c60681ae95674.mp4'},
                  {'titleeps': 'Episode 3', 'url': 'https://wave.video/embed/6751b88b3fdf6b7be7a92410/6751b8e4ce6c60681ae95674.mp4'},
                  {'titleeps': 'Episode 4', 'url': 'https://wave.video/embed/6751b88b3fdf6b7be7a92410/6751b8e4ce6c60681ae95674.mp4'},
                  {'titleeps': 'Episode 5', 'url': 'https://wave.video/embed/6751b88b3fdf6b7be7a92410/6751b8e4ce6c60681ae95674.mp4'},
                  {'titleeps': 'Episode 6', 'url': 'https://wave.video/embed/6751b88b3fdf6b7be7a92410/6751b8e4ce6c60681ae95674.mp4'},
                  {'titleeps': 'Episode 7', 'url': 'https://wave.video/embed/6751b88b3fdf6b7be7a92410/6751b8e4ce6c60681ae95674.mp4'},
                  {'titleeps': 'Episode 8', 'url': 'https://wave.video/embed/6751b88b3fdf6b7be7a92410/6751b8e4ce6c60681ae95674.mp4'},
                  {'titleeps': 'Episode 9', 'url': 'https://wave.video/embed/6751b88b3fdf6b7be7a92410/6751b8e4ce6c60681ae95674.mp4'},
                  {'titleeps': 'Episode 10', 'url': 'https://wave.video/embed/6751b88b3fdf6b7be7a92410/6751b8e4ce6c60681ae95674.mp4'},
                  {'titleeps': 'Episode 11', 'url': 'https://wave.video/embed/6751b88b3fdf6b7be7a92410/6751b8e4ce6c60681ae95674.mp4'},
                  {'titleeps': 'Episode 12', 'url': 'https://wave.video/embed/6751b88b3fdf6b7be7a92410/6751b8e4ce6c60681ae95674.mp4'},
                  ],
                    
      'jenis': 'Serial TV',
      'musim': 'Winter 2022'
    },
    {
      'title': 'Sousou no Frieren',
      'rating': 9.38,
      'image': 'assets/sousou.jpg',
      'genre': ['Adventure',  'Drama', 'Fantasy'],
      'status': 'Selesai Tayang',
      'studio': 'Madhouse',
      'releaseDate': '29 September 2023',
      'update': '22 Maret 2024',
      'duration': '24 min./eps.',
      'episodes': '28 Episode',
      'jenis': 'Serial TV',
      'musim': 'Fall 2024'
    },
    {
      'title': 'Fullmetal Alchemist: Brotherhood',
      'rating': 9.23,
      'image': 'assets/Brotherhood.jpg',
      'genre': ['Action', 'Adventure', 'Drama', 'Fantasy'],
      'status': 'Selesai Tayang',
      'studio': 'Bones',
      'releaseDate': '5 April 2009',
      'update': 'Terakhir Update 4 Juli 2010',
      'duration': '24 min./eps.',
      'episodes': '64 Episode',
      'jenis': 'Serial TV',
      'musim': '2009'
    },
    {
      'title': 'Shingeki no Kyojin: The Final Season 3 Part 1',
      'rating': 9.17,
      'image': 'assets/aot1.jpg',
      'genre': ['Action', 'Drama', 'Suspense'],
      'status': 'Selesai Tayang',
      'studio': 'Wit Studio',
      'releaseDate': '29 September 2023',
      'update': '22 Maret 2024',
      'duration': '24 minutes per episode',
      'episodes': '16 Episode',
      'jenis': 'Serial TV',
      'musim': 'Fall 2024'
    },
    {
      'title': 'Bleach: Sennen Kessen-hen',
      'rating': 9.17,
      'image': 'assets/BleachShoukokutan.jpg',
      'genre': ['Adventure', 'Action', 'Comedi', 'Supranatural'],
      'status': 'Selesai Tayang',
      'studio': 'add some',
      'releaseDate': 'Oktober 2022',
      'update': '-',
      'duration': '24 min./eps.',
      'episodes': '13 Episode',
      'jenis': 'Serial TV',
      'musim': 'Fall 2024'
    },
    {
      'title': 'Kimi no Nawa. [Your Name]',
      'rating': 9.15,
      'image': 'assets/kimi_no_nawa.jpg',
      'genre': ['Drama', 'Fantasy', 'Romance', 'Supranatural'],
      'status': 'Selesai Tayang',
      'studio': 'CoMix Wave Films',
      'releaseDate': '7 Desember 2016',
      'update': '15 November 2023',
      'duration': '1 hours 46 min.',
      'episodes': '1 Episode',
      'jenis': 'Movie',
      'musim': '2016'
    },
  ];

  final List<Map<String, dynamic>> animeList2 = [
    {
      'title': 'Love Live! Superstar!!',
      'rating': 6.72,
      'image': 'assets/love_live.jpg',
      'genre': ['Slice of Life', '-'],
      'status': 'Sedang Tayang',
      'releaseDate': '6 Oktober 2024',
      'update': '3 Desember 2024',
      'duration': 'Unknown',
      'episodes': 'Unknown',
      'jenis': 'Serial TV',
      'musim': 'Fall 2024',

    },
    {
      'title': 'Seirei Gensouki Season 2',
      'rating': 6.95,
      'image': 'assets/seirei_gensouki.jpg',
      'genre': ['Action', 'Adventure', 'Fanstasy', 'Romance'],
      'status': 'Sedang Tayang',
      'studio': 'TMS Entertainment',
      'releaseDate': '8 Oktober 2024',
      'update': '3 Desember 2024',
      'duration': '24 minutes/eps',
      'episodes': 'Unknown',
      'jenis': 'Serial TV',
      'musim': 'Fall 2024',

    },
    {
      'title': 'Natsume Yuujinchou Shichi Season 7 ',
      'rating': 6.71,
      'image': 'assets/natsume_yuujinchou.jpg',
      'genre': ['Shoujo', 'Slice of Live', 'Supranatural'],
      'status': 'Sedang Tayang',
      'studio': 'Shuka',
      'releaseDate': '8 Oktober 2024',
      'update': '2 Desember 2024',
      'duration': '24 minutes/eps',
      'episodes': 'Unknown',
      'jenis': 'Serial TV',
      'musim': 'Fall 2024',

    },
    {
      'title': 'Hoshifuru Oukoku no Nina ',
      'rating': 7.68,
      'image': 'assets/hoshifuru_ouka1.jpg',
      'genre': ['Fantasy', 'Romansa'],
      'status': 'Sedang Tayang',
      'studio': 'Signal.MD',
      'releaseDate': '10 Oktober 2024',
      'update': '2 Desember 2024',
      'duration': '24 minutes/eps',
      'episodes': '12 Episode',
      'jenis': 'Serial TV',
      'musim': 'Fall 2024',
    },
    {
      'title': 'Hoshifuru Oukoku no Nina ',
      'rating': 7.68,
      'image': 'assets/hoshifuru_ouka1.jpg',
      'genre': ['Fantasy', 'Romansa'],
      'status': 'Sedang Tayang',
      'studio': 'Signal.MD',
      'releaseDate': '10 Oktober 2024',
      'update': '2 Desember 2024',
      'duration': '24 minutes/eps',
      'episodes': '12 Episode',
      'jenis': 'Serial TV',
      'musim': 'Fall 2024',
    },
  ];

  String searchText = '';
  Set<String> hoverAnime = Set();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(201, 34, 167, 255),
        title: Text(
          'ANIME',
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
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildSearchBar(),
                const SizedBox(height: 10),
                _buildSectionHeader(
                  context, 
                  'Top Anime Teratas',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AnimeDart(),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 5),
                _buildAnimeList(
                  animeList1
                      .where((anime) => anime['title']
                          .toLowerCase()
                          .contains(searchText.toLowerCase()))
                      .toList(),
                ),
                const SizedBox(height: 5),
                _buildSectionHeader(
                  context, 
                  'Sedang Tayang',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const TayangScreen(), // Navigate to TayangScreen
                      ),
                    );
                  },
                ),
                const SizedBox(height: 5),
                _buildAnimeList(
                  animeList2
                      .where((anime) => anime['title']
                          .toLowerCase()
                          .contains(searchText.toLowerCase()))
                      .toList(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSearchBar() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.9),
        borderRadius: BorderRadius.circular(25),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 5,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: TextField(
        style: const TextStyle(color: Colors.black),
        decoration: const InputDecoration(
          hintText: 'Search Anime...',
          hintStyle: TextStyle(color: Colors.grey),
          border: InputBorder.none,
          icon: Icon(Icons.search, color: Colors.blueAccent),
        ),
        onChanged: (value) {
          setState(() {
            searchText = value;
          });
        },
      ),
    );
  }

  Widget _buildAnimeList(List<Map<String, dynamic>> animeList) {
    return animeList.isEmpty
        ? const Center(
            child: Text(
              'No anime found!',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          )
        : SizedBox(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: animeList.length,
              itemBuilder: (context, index) {
                final anime = animeList[index];
                return Container(
                  margin: const EdgeInsets.symmetric(horizontal: 8),
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(104, 75, 75, 75).withOpacity(0.5),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: _buildAnimeCard(anime),
                );
              },
            ),
          );
  }

  Widget _buildAnimeCard(Map<String, dynamic> anime) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          hoverAnime.add(anime['title']);
        });
      },
      onExit: (_) {
        setState(() {
          hoverAnime.remove(anime['title']);
        });
      },
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AnimeDetailScreen(anime: anime),
            ),
          );
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 120,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                      image: AssetImage(anime['image']),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                if (hoverAnime.contains(anime['title']))
                  const Center(
                    child: Opacity(
                      opacity: 0.8,
                      child: Icon(
                        Icons.play_arrow,
                        size: 50,
                        color: Colors.white,
                      ),
                    ),
                  ),
              ],
            ),
            const SizedBox(height: 8),
            SizedBox(
              width: 100,
              child: Tooltip(
                message: anime['title'],
                child: Text(
                  anime['title'],
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Colors.white,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
            const SizedBox(height: 4),
            Row(
              children: [
                const Icon(Icons.star, color: Colors.amber, size: 14),
                Text(
                  anime['rating'].toString(),
                  style: const TextStyle(fontSize: 12, color: Colors.white),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionHeader(
    BuildContext context,
    String title, {
    required VoidCallback onPressed,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 16),
      decoration: BoxDecoration(
        color: const Color.fromARGB(104, 75, 75, 75).withOpacity(0.7),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
              minimumSize: const Size(10, 10),
            ),
            child: const Text(
              'VIEW ALL',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 10,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

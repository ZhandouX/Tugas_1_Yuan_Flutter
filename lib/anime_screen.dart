import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:aplikasi_pertamaku/animd.dart'; // Import AnimeDart page
import 'package:aplikasi_pertamaku/tayang.dart'; // Ongoing page
import 'package:aplikasi_pertamaku/anime_detail.dart';

class MangaScreen extends StatefulWidget {
  const MangaScreen({super.key});

  @override
  State<MangaScreen> createState() => _MangaScreenState();
}

class _MangaScreenState extends State<MangaScreen> {
  final List<Map<String, dynamic>> animeList1 = [
    {'title': 'Shingeki no Kyojin: The Final Season Part 2',
      'rating': 9.40,
      'image': 'assets/aot_part2.jpg',
      'image1':'assets/COVER/sampul.png',
      'genre': ['Action', 'Drama', 'Fantasy', 'Militer', 'Misteri', 'Shounen', 'Super Power'],
      'status': 'Completed',
      'studio': 'MAPPA',
      'releaseDate': '10 January 2022',
      'update': '4 April 2022',
      'duration': '24 min.',
      'totaleps': '12 Episodes',
      'episodes': [
                    {'titleeps': 'Episode 1', 'url': 'https://wave.video/embed/6751b88b3fdf6b7be7a92410/6751b8e4ce6c60681ae95674.mp4'},
                    {'titleeps': 'Episode 2', 'url': 'https://wave.video/embed/675281fece6c60681ae9f59f/6752823ace6c60681ae9f5c0.mp4'},
                    {'titleeps': 'Episode 3', 'url': 'https://wave.video/embed/67527a00ce6c60681ae9ef68/67527a7177e943365b608c4d.mp4'},
                    {'titleeps': 'Episode 4', 'url': 'https://wave.video/embed/675284d377e943365b609341/6752852a7232084f2ec34e64.mp4'},
                    {'titleeps': 'Episode 5', 'url': 'https://wave.video/embed/6752862ece6c60681ae9f82c/6752866f77e943365b6093d8.mp4'},
                    {'titleeps': 'Episode 6', 'url': 'https://wave.video/embed/675317d37232084f2ec3da84/675318017232084f2ec3dad9.mp4'},
                    {'titleeps': 'Episode 7', 'url': 'https://wave.video/embed/6753181677e943365b61192c/6753183ace6c60681aea81b1.mp4'},
                    {'titleeps': 'Episode 8', 'url': 'https://wave.video/embed/6753184c77e943365b6119ad/675318763fdf6b7be7aa4e37.mp4'},
                    {'titleeps': 'Episode 9', 'url': 'https://wave.video/embed/6753188e3fa297743023e264/675318b0ce6c60681aea8234.mp4'},
                    {'titleeps': 'Episode 10', 'url': 'https://wave.video/embed/675318ce77e943365b6119f0/675318fc3fdf6b7be7aa4eb1.mp4'},
                    {'titleeps': 'Episode 11', 'url': 'https://wave.video/embed/6753190b77e943365b611a65/6753193f77e943365b611af9.mp4'},
                    {'titleeps': 'Episode 12', 'url': 'https://wave.video/embed/6753194f3fdf6b7be7aa4f1e/6753197677e943365b611b49.mp4'},
                  ],
                    
      'jenis': 'Serial TV',
      'musim': 'Winter 2022'
    },
    {'title': 'Sousou no Frieren',
      'rating': 9.38,
      'image': 'assets/sousou.jpg',
      'image1': 'assets/COVER/sousou.jpg',
      'genre': ['Adventure',  'Drama', 'Fantasy'],
      'status': 'Completed',
      'studio': 'Madhouse',
      'releaseDate': '29 September 2023',
      'update': '22 March 2024',
      'duration': '24 min.',
      'totaleps': '28 Episodes',
      'episodes': [ 
        {'titleeps': 'Episode 1', 'url': 'link'},
        {'titleeps': 'Episode 2', 'url': 'link'},
        {'titleeps': 'Episode 3', 'url': 'link'},
        {'titleeps': 'Episode 4', 'url': 'link'},
        {'titleeps': 'Episode 5', 'url': 'link'},
        {'titleeps': 'Episode 6', 'url': 'link'},
        {'titleeps': 'Episode 7', 'url': 'link'},
        {'titleeps': 'Episode 8', 'url': 'link'},
        {'titleeps': 'Episode 9', 'url': 'link'},
        {'titleeps': 'Episode 10', 'url': 'link'},
        {'titleeps': 'Episode 11', 'url': 'link'},
        {'titleeps': 'Episode 12', 'url': 'link'},
        {'titleeps': 'Episode 13', 'url': 'link'},
        {'titleeps': 'Episode 14', 'url': 'link'},
        {'titleeps': 'Episode 15', 'url': 'link'},
        {'titleeps': 'Episode 16', 'url': 'link'},
        {'titleeps': 'Episode 17', 'url': 'link'},
        {'titleeps': 'Episode 18', 'url': 'link'},
        {'titleeps': 'Episode 19', 'url': 'link'},
        {'titleeps': 'Episode 20', 'url': 'link'},
        {'titleeps': 'Episode 21', 'url': 'link'},
        {'titleeps': 'Episode 22', 'url': 'link'},
        {'titleeps': 'Episode 23', 'url': 'link'},
        {'titleeps': 'Episode 24', 'url': 'link'},
        {'titleeps': 'Episode 25', 'url': 'link'},
        {'titleeps': 'Episode 26', 'url': 'link'},
        {'titleeps': 'Episode 27', 'url': 'link'},
        {'titleeps': 'Episode 28', 'url': 'link'},
      ],
      'jenis': 'Serial TV',
      'musim': 'Fall 2024'
    },
    {'title': 'Fullmetal Alchemist: Brotherhood',
      'rating': 9.23,
      'image': 'assets/Brotherhood.jpg',
      'image1': 'assets/COVER/Brotherhood_cover.jpg',
      'genre': ['Action', 'Adventure', 'Drama', 'Fantasy'],
      'status': 'Completed',
      'studio': 'Bones',
      'releaseDate': '5 April 2009',
      'update': '4 July 2010',
      'duration': '24 min.',
      'totaleps': '64 Episodes',
      'episodes': [ 
        {'titleeps': 'Episode 1', 'url': 'link'},
        {'titleeps': 'Episode 2', 'url': 'link'},
        {'titleeps': 'Episode 3', 'url': 'link'},
        {'titleeps': 'Episode 4', 'url': 'link'},
        {'titleeps': 'Episode 5', 'url': 'link'},
        {'titleeps': 'Episode 6', 'url': 'link'},
        {'titleeps': 'Episode 7', 'url': 'link'},
        {'titleeps': 'Episode 8', 'url': 'link'},
        {'titleeps': 'Episode 9', 'url': 'link'},
        {'titleeps': 'Episode 10', 'url': 'link'},
        {'titleeps': 'Episode 11', 'url': 'link'},
        {'titleeps': 'Episode 12', 'url': 'link'},
        {'titleeps': 'Episode 13', 'url': 'link'},
        {'titleeps': 'Episode 14', 'url': 'link'},
        {'titleeps': 'Episode 15', 'url': 'link'},
        {'titleeps': 'Episode 16', 'url': 'link'},
        {'titleeps': 'Episode 17', 'url': 'link'},
        {'titleeps': 'Episode 18', 'url': 'link'},
        {'titleeps': 'Episode 19', 'url': 'link'},
        {'titleeps': 'Episode 20', 'url': 'link'},
        {'titleeps': 'Episode 21', 'url': 'link'},
        {'titleeps': 'Episode 22', 'url': 'link'},
        {'titleeps': 'Episode 23', 'url': 'link'},
        {'titleeps': 'Episode 24', 'url': 'link'},
        {'titleeps': 'Episode 25', 'url': 'link'},
        {'titleeps': 'Episode 26', 'url': 'link'},
        {'titleeps': 'Episode 27', 'url': 'link'},
        {'titleeps': 'Episode 28', 'url': 'link'},
        {'titleeps': 'Episode 29', 'url': 'link'},
        {'titleeps': 'Episode 30', 'url': 'link'},
        {'titleeps': 'Episode 31', 'url': 'link'},
        {'titleeps': 'Episode 32', 'url': 'link'},
        {'titleeps': 'Episode 33', 'url': 'link'},
        {'titleeps': 'Episode 34', 'url': 'link'},
        {'titleeps': 'Episode 35', 'url': 'link'},
        {'titleeps': 'Episode 36', 'url': 'link'},
        {'titleeps': 'Episode 37', 'url': 'link'},
        {'titleeps': 'Episode 38', 'url': 'link'},
        {'titleeps': 'Episode 39', 'url': 'link'},
        {'titleeps': 'Episode 40', 'url': 'link'},
        {'titleeps': 'Episode 41', 'url': 'link'},
        {'titleeps': 'Episode 42', 'url': 'link'},
        {'titleeps': 'Episode 44', 'url': 'link'},
        {'titleeps': 'Episode 45', 'url': 'link'},
        {'titleeps': 'Episode 46', 'url': 'link'},
        {'titleeps': 'Episode 47', 'url': 'link'},
        {'titleeps': 'Episode 48', 'url': 'link'},
        {'titleeps': 'Episode 49', 'url': 'link'},
        {'titleeps': 'Episode 50', 'url': 'link'},
        {'titleeps': 'Episode 51', 'url': 'link'},
        {'titleeps': 'Episode 52', 'url': 'link'},
        {'titleeps': 'Episode 53', 'url': 'link'},
        {'titleeps': 'Episode 54', 'url': 'link'},
        {'titleeps': 'Episode 55', 'url': 'link'},
        {'titleeps': 'Episode 56', 'url': 'link'},
        {'titleeps': 'Episode 57', 'url': 'link'},
        {'titleeps': 'Episode 58', 'url': 'link'},
        {'titleeps': 'Episode 59', 'url': 'link'},
        {'titleeps': 'Episode 60', 'url': 'link'},
        {'titleeps': 'Episode 61', 'url': 'link'},
        {'titleeps': 'Episode 62', 'url': 'link'},
        {'titleeps': 'Episode 63', 'url': 'link'},
        {'titleeps': 'Episode 64', 'url': 'link'},
      ],
      'jenis': 'Serial TV',
      'musim': '2009'
    },
    {'title': 'Shingeki no Kyojin: The Final Season 3 Part 1',
      'rating': 9.17,
      'image': 'assets/aotf.jpg',
      'image1': 'assets/COVER/aot_cover.jpg',
      'genre': ['Action', 'Drama', 'Suspense'],
      'status': 'Completed',
      'studio': 'Wit Studio',
      'releaseDate': '29 September 2023',
      'update': '22 March 2024',
      'duration': '24 min.',
      'totaleps': '28 Episodes',
      'episodes': [ 
        {'titleeps': 'Episode 1', 'url': 'link'},
        {'titleeps': 'Episode 2', 'url': 'link'},
        {'titleeps': 'Episode 3', 'url': 'link'},
        {'titleeps': 'Episode 4', 'url': 'link'},
        {'titleeps': 'Episode 5', 'url': 'link'},
        {'titleeps': 'Episode 6', 'url': 'link'},
        {'titleeps': 'Episode 7', 'url': 'link'},
        {'titleeps': 'Episode 8', 'url': 'link'},
        {'titleeps': 'Episode 9', 'url': 'link'},
        {'titleeps': 'Episode 10', 'url': 'link'},
        {'titleeps': 'Episode 11', 'url': 'link'},
        {'titleeps': 'Episode 12', 'url': 'link'},
        {'titleeps': 'Episode 13', 'url': 'link'},
        {'titleeps': 'Episode 14', 'url': 'link'},
        {'titleeps': 'Episode 15', 'url': 'link'},
        {'titleeps': 'Episode 16', 'url': 'link'},
      ],
      'jenis': 'Serial TV',
      'musim': 'Fall 2024'
    },
    {'title': 'Bleach: Sennen Kessen-hen',
      'rating': 9.17,
      'image': 'assets/bleach.jpg',
      'image1': 'assets/COVER/bleach_cover.jpg',
      'genre': ['Adventure', 'Action', 'Comedi', 'Supranatural'],
      'status': 'Completed',
      'studio': 'add some',
      'releaseDate': 'October 2022',
      'update': '-',
      'duration': '24 min.',
      'totaleps': '28 Episodes',
      'episodes': [ 
        {'titleeps': 'Episode 1', 'url': 'link'},
        {'titleeps': 'Episode 2', 'url': 'link'},
        {'titleeps': 'Episode 3', 'url': 'link'},
        {'titleeps': 'Episode 4', 'url': 'link'},
        {'titleeps': 'Episode 5', 'url': 'link'},
        {'titleeps': 'Episode 6', 'url': 'link'},
        {'titleeps': 'Episode 7', 'url': 'link'},
        {'titleeps': 'Episode 8', 'url': 'link'},
        {'titleeps': 'Episode 9', 'url': 'link'},
        {'titleeps': 'Episode 10', 'url': 'link'},
        {'titleeps': 'Episode 11', 'url': 'link'},
        {'titleeps': 'Episode 12', 'url': 'link'},
        {'titleeps': 'Episode 13', 'url': 'link'},
        {'titleeps': 'Episode 14', 'url': 'link'},
        {'titleeps': 'Episode 15', 'url': 'link'},
        {'titleeps': 'Episode 16', 'url': 'link'},
        {'titleeps': 'Episode 17', 'url': 'link'},
        {'titleeps': 'Episode 18', 'url': 'link'},
        {'titleeps': 'Episode 19', 'url': 'link'},
        {'titleeps': 'Episode 20', 'url': 'link'},
        {'titleeps': 'Episode 21', 'url': 'link'},
        {'titleeps': 'Episode 22', 'url': 'link'},
        {'titleeps': 'Episode 23', 'url': 'link'},
        {'titleeps': 'Episode 24', 'url': 'link'},
      ],
      'jenis': 'Serial TV',
      'musim': 'Fall 2024'
    },
    {'title': 'Kimi no Nawa. [Your Name]',
      'rating': 9.15,
      'image': 'assets/kimi_no_nawa.jpg',
      'image1': 'assets/COVER/kimi_no_nawa_cover.jpg',
      'genre': ['Drama', 'Fantasy', 'Romance', 'Supranatural'],
      'status': 'Completed',
      'studio': 'CoMix Wave Films',
      'releaseDate': '7 December 2016',
      'update': '15 November 2023',
      'duration': '1 hours 46 min.',
      'totaleps': '1 Episodes',
      'episodes': {'titleeps': 'Movie 1', 'url': 'link'},
      'jenis': 'Movie',
      'musim': '2016'
    },
  ];

  final List<Map<String, dynamic>> animeList2 = [
    {'title': 'Love Live! Superstar!!',
      'rating': 6.72,
      'image': 'assets/love_live.jpg',
      'image1': 'assets/COVER/love_live_cover.jpg',
      'genre': ['Slice of Life', '-'],
      'status': 'Ongoing',
      'releaseDate': '6 October 2024',
      'update': '3 December 2024',
      'duration': '24 min.',
      'totaleps': 'Unknown',
      'episodes': [ 
        {'titleeps': 'Episode 1', 'url': 'link'},
        {'titleeps': 'Episode 2', 'url': 'link'},
        {'titleeps': 'Episode 3', 'url': 'link'},
        {'titleeps': 'Episode 4', 'url': 'link'},
        {'titleeps': 'Episode 5', 'url': 'link'},
        {'titleeps': 'Episode 6', 'url': 'link'},
        {'titleeps': 'Episode 7', 'url': 'link'},
        {'titleeps': 'Episode 8', 'url': 'link'},
        {'titleeps': 'Episode 9', 'url': 'link'},
      ],
      'jenis': 'Serial TV',
      'musim': 'Fall 2024',

    },
    {'title': 'Seirei Gensouki Season 2',
      'rating': 6.95,
      'image': 'assets/seirei_gensouki.png',
      'image1': 'assets/COVER/seirei_gensouki_cover.jpg',
      'genre': ['Action', 'Adventure', 'Fanstasy', 'Romance'],
      'status': 'Ongoing',
      'studio': 'TMS Entertainment',
      'releaseDate': '8 October 2024',
      'update': '3 December 2024',
      'duration': '24 min.',
      'totaleps': 'Unknown',
      'episodes': [ 
        {'titleeps': 'Episode 1', 'url': 'link'},
        {'titleeps': 'Episode 2', 'url': 'link'},
        {'titleeps': 'Episode 3', 'url': 'link'},
        {'titleeps': 'Episode 4', 'url': 'link'},
        {'titleeps': 'Episode 5', 'url': 'link'},
        {'titleeps': 'Episode 6', 'url': 'link'},
        {'titleeps': 'Episode 7', 'url': 'link'},
        {'titleeps': 'Episode 8', 'url': 'link'},
        {'titleeps': 'Episode 9', 'url': 'link'},
      ],
      'jenis': 'Serial TV',
      'musim': 'Fall 2024',

    },
    {'title': 'Natsume Yuujinchou Shichi Season 7',
      'rating': 6.71,
      'image': 'assets/natsume_yuujinchou.jpg',
      'image1': 'assets/COVER/natsume_yuujinchou_cover.jpg',
      'genre': ['Shoujo', 'Slice of Live', 'Supranatural'],
      'status': 'Ongoing',
      'studio': 'Shuka',
      'releaseDate': '8 October 2024',
      'update': '2 December 2024',
      'duration': '24 min.',
      'totaleps': 'Unknown',
      'episodes': [ 
        {'titleeps': 'Episode 1', 'url': 'link'},
        {'titleeps': 'Episode 2', 'url': 'link'},
        {'titleeps': 'Episode 3', 'url': 'link'},
        {'titleeps': 'Episode 4', 'url': 'link'},
        {'titleeps': 'Episode 5', 'url': 'link'},
        {'titleeps': 'Episode 6', 'url': 'link'},
        {'titleeps': 'Episode 7', 'url': 'link'},
        {'titleeps': 'Episode 8', 'url': 'link'},
        {'titleeps': 'Episode 9', 'url': 'link'},
      ],
      'jenis': 'Serial TV',
      'musim': 'Fall 2024',

    },
    {'title': 'Yowai 5000-nen no Soushoku Dragon Season 2',
      'rating': 7.40,
      'image': 'assets/yowai.png',
      'image1': 'assets/COVER/yowai_cover.png',
      'genre': ['Fantasy', 'Comedi', 'Adventure'],
      'status': 'Ongoing',
      'studio': 'LAN Studio',
      'releaseDate': '2 October 2024',
      'update': '4 December 2024',
      'duration': '24 min.',
      'totaleps': 'Unknown',
      'episodes': [ 
        {'titleeps': 'Episode 1', 'url': 'link'},
        {'titleeps': 'Episode 2', 'url': 'link'},
        {'titleeps': 'Episode 3', 'url': 'link'},
        {'titleeps': 'Episode 4', 'url': 'link'},
        {'titleeps': 'Episode 5', 'url': 'link'},
        {'titleeps': 'Episode 6', 'url': 'link'},
        {'titleeps': 'Episode 7', 'url': 'link'},
        {'titleeps': 'Episode 8', 'url': 'link'},
        {'titleeps': 'Episode 9', 'url': 'link'},
        {'titleeps': 'Episode 10', 'url': 'link'},
      ],
      'jenis': 'ONA',
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
                  'Ongoing',
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

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'anime_detail.dart';

class AnimeDart extends StatelessWidget {
  const AnimeDart({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> animeList1 = [
      {
        'title': 'Shingeki no Kyojin: The Final Season Part 2',
        'rating': 9.40,
        'image': 'assets/aot_part2.jpg',
        'genre': ['Action', 'Drama', 'Fantasy', 'Militer', 'Mysteri', 'Shounen', 'Super Power'],
        'status': 'Completed',
        'studio': 'MAPPA',
        'releaseDate': '10 January 2022',
        'update': '-',
        'duration': '24 min.',
        'episodes': '12 Episodes',
        'jenis': 'Serial TV',
        'musim': 'Winter 2022',
      },

      {
        'title': 'Sousou no Frieren',
        'rating': 9.38,
        'image': 'assets/sousou.jpg',
        'genre': ['Adventure', 'Drama', 'Fantasy'],
        'status': 'Completed',
        'studio': 'Madhouse',
        'releaseDate': '29 September 2023',
        'update': '22 March 2024',
        'duration': '24 min..',
        'episodes': '28 Episodes',
        'jenis': 'Serial TV',
        'musim': 'Fall 2024',
      },

      {
      'title': 'Fullmetal Alchemist: Brotherhood',
      'rating': 9.23,
      'image': 'assets/Brotherhood.jpg',
      'genre': ['Action', 'Adventure', 'Drama', 'Fantasy'],
      'status': 'Completed',
      'studio': 'Bones',
      'releaseDate': '5 April 2009',
      'update': 'Terakhir Update 4 Juli 2010',
      'duration': '24 min..',
      'episodes': '64 Episodes',
      'jenis': 'Serial TV',
      'musim': '2009'
    },

    {
      'title': 'Shingeki no Kyojin: The Final Season 3 Part 1',
      'rating': 9.17,
      'image': 'assets/aotf.jpg',
      'genre': ['Action', 'Drama', 'Suspense'],
      'status': 'Completed',
      'studio': 'Wit Studio',
      'releaseDate': '29 September 2023',
      'update': '22 March 2024',
      'duration': '24 minutes per episode',
      'episodes': '16 Episodes',
      'jenis': 'Serial TV',
      'musim': 'Fall 2024'
    },

    {
      'title': 'Bleach: Sennen Kessen-hen',
      'rating': 9.17,
      'image': 'assets/BleachShoukokutan.jpg',
      'genre': ['Adventure', 'Action', 'Comedi', 'Supranatural'],
      'status': 'Completed',
      'studio': 'add some',
      'releaseDate': 'October 2022',
      'update': '-',
      'duration': '24 min..',
      'episodes': '13 Episodes',
      'jenis': 'Serial TV',
      'musim': 'Fall 2024'
    },

    {
      'title': 'Kimi no Nawa. [Your Name]',
      'rating': 9.15,
      'image': 'assets/kimi_no_nawa.jpg',
      'genre': ['Drama', 'Fantasy', 'Romance', 'Supranatural'],
      'status': 'Completed',
      'studio': 'CoMix Wave Films',
      'releaseDate': '7 December 2016',
      'update': '15 November 2023',
      'duration': '1 hours 46 min.',
      'episodes': '1 Episodes',
      'jenis': 'Movie',
      'musim': '2016'
    },

    {
      'title': '"Oshi no Ko"',
      'rating': 9.14,
      'image': 'assets/oshi_no_ko.jpg',
      'genre': ['Drama', 'Reinkarnasi', 'Seinen', 'Supranatural'],
      'status': 'Completed',
      'studio': 'Doga Kobo',
      'releaseDate': '12 April 2023',
      'update': '15 March 2024',
      'duration': '29 min..',
      'episodes': '12 Episodes',
      'jenis': 'Serial TV',
      'musim': '2023'
    },

    {
      'title': 'Gintama Season 4',
      'rating': 9.12,
      'image': 'assets/gintama.jpg',
      'genre': ['Action', 'Comedi', 'Samurai', 'Sci-Fi', 'Shounen'],
      'status': 'Completed',
      'studio': 'Bandai Namco Pictures',
      'releaseDate': '8 April 2015',
      'update': '28 October 2023',
      'duration': '24 min.',
      'episodes': '51 Episodes',
      'jenis': 'Serial TV',
      'musim': 'Spring 2015'
    },

    {
      'title': 'Kaguya-sama wa Kokuresetai: Ultra Romantic Season 3',
      'rating': 9.12,
      'image': 'assets/kaguya.jpg',
      'genre': ['Comedi', 'Psikologis', 'Romance', 'School'],
      'status': 'Completed',
      'studio': 'A-1 Pictures',
      'releaseDate': '9 April 2022',
      'update': '8 March 2024',
      'duration': '24 min.',
      'episodes': '13 Episodes',
      'jenis': 'Serial TV',
      'musim': 'Spring 2022'
    },

    {
      'title': 'Hunter x Hunter (2011)',
      'rating': 9.11,
      'image': 'assets/HunterxHunter.jpg',
      'genre': ['Action', 'Fantasy', 'Adventure', 'Super Power'],
      'status': 'Completed',
      'studio': 'Madhouse',
      'releaseDate': '02 October 2011',
      'update': '25 Augustus 2024',
      'duration': '23 min.',
      'episodes': '148 Episodes',
      'jenis': 'Serial TV',
      'musim': 'Fall 2011'
    },

    {
      'title': 'Steins;Gate',
      'rating': 9.11,
      'image': 'assets/SteinsGate.jpg',
      'genre': ['Drama', 'Sci-Fi', 'Thriller', 'Time Travel'],
      'status': 'Completed',
      'studio': 'White Fox',
      'releaseDate': '06 April 2011',
      'update': '22 January 2024',
      'duration': '24 min.',
      'episodes': '24 Episodes',
      'jenis': 'Serial TV',
      'musim': 'Spring 2011'
    },

    {
      'title': 'Shingeki no Kyojin Season 3 Part 2',
      'rating': 9.1,
      'image': 'assets/aot1.jpg',
      'genre': ['Action', 'Drama', 'Fantasy', 'Militer', 'Mysteri', 'Shounen', 'Super Power'],
      'status': 'Completed',
      'studio': 'Wit Studio',
      'releaseDate': '29 April 2019',
      'update': '19 February 2024',
      'duration': '23 min.',
      'episodes': '10 Episodes',
      'jenis': 'Serial TV',
      'musim': 'Spring 2019'
    },

    {
      'title': '3-gatsu no Lion Season 2',
      'rating': 9.02,
      'image': 'assets/gatsu.jpg',
      'genre': ['Drama', 'Game', 'Seinen', 'Slice of Life'],
      'status': 'Completed',
      'studio': 'Shaft',
      'releaseDate': '14 October 2017',
      'update': '22 January 2024',
      'duration': '25 min.',
      'episodes': '22 Episodes',
      'jenis': 'Serial TV',
      'musim': 'Fall 2017'
    },
    ];

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(201, 34, 167, 255),
        title: Text(
          'Top Anime',
          style: GoogleFonts.eduNswActFoundation(
            textStyle: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 30,
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 8.0,
            childAspectRatio: 0.7,
          ),
          itemCount: animeList1.length,
          itemBuilder: (context, index) {
            final anime = animeList1[index];
            return _buildAnimeCard(context, anime);
          },
        ),
      ),
    );
  }

  Widget _buildAnimeCard(BuildContext context, Map<String, dynamic> anime) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => AnimeDetailScreen(anime: anime),
          ),
        );
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        elevation: 3,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.vertical(top: Radius.circular(5)),
                  child: Image.asset(
                    anime['image'],
                    height: 100,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 8,
                  left: 8,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.7),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 14,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          anime['rating'].toString(),
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: Text(
                anime['title'],
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}


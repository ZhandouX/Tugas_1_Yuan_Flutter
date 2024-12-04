import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:aplikasi_pertamaku/animd.dart'; // Import AnimeDart page
import 'package:aplikasi_pertamaku/donghua_tayang.dart';
import 'package:aplikasi_pertamaku/donghua_detail.dart';

class DonghuaScreen extends StatefulWidget {
  final Map<String, dynamic> donghua;
  const DonghuaScreen({super.key, required this.donghua});

  @override
  State<DonghuaScreen> createState() => _DonghuaScreenState();
}

class _DonghuaScreenState extends State<DonghuaScreen> {
  final List<Map<String, dynamic>> donghuaList1 = [
    {
      'title': 'Lian Qi Shi Wan Nian (100.000 Years of Refining Qi)',
      'rating': 8.0,
      'image': 'assets/Xuyang.jpg',
      'genre': ['Action', 'Fantasy', 'Over Powe', 'Reincarnation'],
      'status': 'Ongoing',
      'studio': 'Soyep',
      'releaseDate': '18 February 2023',
      'update': '3 December 2024',
      'duration': '10 min./eps.',
      'episodes': 'Unknown',
      'jenis': 'Donghua',
      'musim': '2023'
    },
    {
      'title': 'Sanshiliu Qi (36 Cavalry)',
      'rating': 7.72,
      'image': 'assets/Cavalry.jpg',
      'genre': ['Adventure', 'Drama', 'Dinasty'],
      'status': 'Completed',
      'studio': 'CG Yeah',
      'releaseDate': '09 October 2023',
      'update': '28 December 2023',
      'duration': '15 min./eps.',
      'episodes': '13 Episodes',
      'jenis': 'Donghua Film',
      'musim': '2023'
    },
    {
      'title': 'Si Ge Yongzhe (4 Cut Hero)',
      'rating': 8.00,
      'image': 'assets/4_cut_hero.jpg',
      'genre': ['Fantasy', 'Hero'],
      'status': 'Completed',
      'studio': 'Phantom',
      'releaseDate': '17 July 2023',
      'update': '27 September 2023',
      'duration': '7 min./eps.',
      'episodes': '10 Episode',
      'jenis': 'Donghua Anime',
      'musim': '2023'
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

  final List<Map<String, dynamic>> donghuaList2 = [
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
  ];

  String searchText = '';
  Set<String> hoverDonghua = Set();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(201, 255, 140, 0), // Orange color
        title: Text(
          'DONGHUA',
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
                Color.fromARGB(255, 255, 200, 0),
                Color.fromARGB(255, 255, 100, 0),
                Color.fromARGB(255, 255, 0, 0),
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
                  'Top Donghua Teratas',
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
                _buildDonghuaList(
                  donghuaList1
                      .where((donghua) => donghua['title']
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
                        builder: (context) => const DonghuaTayang(),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 5),
                _buildDonghuaList(
                  donghuaList2
                      .where((donghua) => donghua['title']
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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: TextField(
        onChanged: (value) {
          setState(() {
            searchText = value;
          });
        },
        decoration: InputDecoration(
          hintText: 'Search Donghua',
          hintStyle: GoogleFonts.roboto(color: Colors.grey[600]),
          filled: true,
          fillColor: Colors.white70,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }

  Widget _buildSectionHeader(BuildContext context, String title,
      {VoidCallback? onPressed}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: GoogleFonts.roboto(
              textStyle: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
          ),
          if (onPressed != null)
            GestureDetector(
              onTap: onPressed,
              child: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
                size: 20,
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildDonghuaList(List<Map<String, dynamic>> donghuaList) {
    return SizedBox(
      height: 230,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: donghuaList.length,
        itemBuilder: (context, index) {
          final donghua = donghuaList[index];
          return _buildDonghuaItem(donghua);
        },
      ),
    );
  }

  Widget _buildDonghuaItem(Map<String, dynamic> donghua) {
    return GestureDetector(
      onTap: () {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => DonghuaDetail(
        donghua: {
          'title': donghua['title'],
          'image': donghua['image'],
          'genre': donghua['genre'],
          'rating': donghua['rating'],
          'status': donghua['status'],
          'studio': donghua['studio'],
          'releaseDate': donghua['releaseDate'],
          'update': donghua['update'],
          'duration': donghua['duration'],
          'episodes': donghua['episodes'],
          'jenis': donghua['jenis'],
          'musim': donghua['musim'],
        },
      ),
    ),
  );
},

      child: MouseRegion(
        onEnter: (_) {
          setState(() {
            hoverDonghua.add(donghua['title']);
          });
        },
        onExit: (_) {
          setState(() {
            hoverDonghua.remove(donghua['title']);
          });
        },
        child: Container(
          width: 160,
          margin: const EdgeInsets.symmetric(horizontal: 5.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: 6.0,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Stack(
              children: [
                Image.asset(
                  donghua['image'],
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: double.infinity,
                ),
                if (hoverDonghua.contains(donghua['title']))
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Center(
                      child: Text(
                        'Tap to View',
                        style: GoogleFonts.roboto(
                          textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

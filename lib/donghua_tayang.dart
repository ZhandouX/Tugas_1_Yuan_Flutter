import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DonghuaTayang extends StatelessWidget {
  const DonghuaTayang({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(201, 255, 140, 0), // Oranye
        title: Text(
          'DONGHUA TAYANG',
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
                _buildSectionHeader(context, 'Sedang Tayang Donghua'),
                const SizedBox(height: 10),
                _buildDonghuaTayangList(),
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
        decoration: InputDecoration(
          hintText: 'Search Donghua Tayang',
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

  Widget _buildSectionHeader(BuildContext context, String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Text(
        title,
        style: GoogleFonts.roboto(
          textStyle: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
      ),
    );
  }

  Widget _buildDonghuaTayangList() {
    final List<Map<String, dynamic>> donghuaTayangList = [
      {
        'title': 'Sousou no Frieren',
        'rating': 9.38,
        'image': 'assets/sousou.jpg',
        'genre': ['Adventure', 'Drama', 'Fantasy'],
        'status': 'Sedang Tayang',
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
        'genre': ['Adventure', 'Action', 'Comedy', 'Supernatural'],
        'status': 'Selesai Tayang',
        'studio': 'Studio Pierrot',
        'releaseDate': 'Oktober 2022',
        'update': '-',
        'duration': '24 min./eps.',
        'episodes': '13 Episode',
        'jenis': 'Serial TV',
        'musim': 'Fall 2022'
      },
      {
        'title': 'Kimi no Nawa. [Your Name]',
        'rating': 9.15,
        'image': 'assets/kimi_no_nawa.jpg',
        'genre': ['Drama', 'Fantasy', 'Romance', 'Supernatural'],
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

    return SizedBox(
      height: 230,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: donghuaTayangList.length,
        itemBuilder: (context, index) {
          final donghua = donghuaTayangList[index];
          return _buildDonghuaItem(donghua);
        },
      ),
    );
  }

  Widget _buildDonghuaItem(Map<String, dynamic> donghua) {
    return GestureDetector(
      onTap: () {
        // Navigasi ke detail halaman jika diperlukan
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
              Container(
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Center(
                  child: Text(
                    donghua['title'],
                    style: GoogleFonts.roboto(
                      textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

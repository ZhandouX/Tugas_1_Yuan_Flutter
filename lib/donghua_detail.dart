import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DonghuaDetail extends StatelessWidget {
  final Map<String, dynamic> donghua;

  const DonghuaDetail({super.key, required this.donghua});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 33, 37, 41), // Warna gelap
        title: Text(
          'ANIDONG',
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
                Color.fromARGB(255, 250, 95, 95),
                Color.fromARGB(255, 250, 95, 95),
                Color.fromARGB(255, 250, 95, 95),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF1E1E30), // Biru tua kehitaman
              Color(0xFF3A2E43), // Ungu tua
              Color(0xFF000000), // Hitam
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                _buildDonghuaImage(),
                const SizedBox(height: 16),
                _buildDonghuaInfo(),
                const SizedBox(height: 16),
                _buildEpisodes(),
                const SizedBox(height: 16),
                _buildDescriptionCard(), // Menggunakan Card untuk sinopsis
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildDonghuaImage() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.asset(
        donghua['image'],
        height: 300,
        width: 200,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _buildDonghuaInfo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          donghua['title'],
          style: GoogleFonts.roboto(
            textStyle: const TextStyle(
              color: Colors.white,
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            const Icon(
              Icons.star,
              color: Colors.amber,
              size: 20,
            ),
            const SizedBox(width: 8),
            Text(
              '${donghua['rating']} / 10',
              style: GoogleFonts.roboto(
                textStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Text(
          'Genre: ${donghua['genre'].join(', ')}',
          style: GoogleFonts.roboto(
            textStyle: const TextStyle(
              color: Colors.white70,
              fontSize: 16,
            ),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          'Status: ${donghua['status']}',
          style: GoogleFonts.roboto(
            textStyle: const TextStyle(
              color: Colors.white70,
              fontSize: 16,
            ),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          'Release Date: ${donghua['releaseDate']}',
          style: GoogleFonts.roboto(
            textStyle: const TextStyle(
              color: Colors.white70,
              fontSize: 16,
            ),
          ),
        ),

        const SizedBox(height: 8),
        Text(
            'Total Episodes: ${donghua['totaleps']}',
            style: GoogleFonts.roboto(
              textStyle: const TextStyle(
                color: Colors.white70,
                fontSize: 16,
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Duration per Episode: ${donghua['duration']}',
            style: GoogleFonts.roboto(
              textStyle: const TextStyle(
                color: Colors.white70,
                fontSize: 16,
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Jenis: ${donghua['jenis']}',
            style: GoogleFonts.roboto(
              textStyle: const TextStyle(
                color: Colors.white70,
                fontSize: 16,
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Musim: ${donghua['musim']}',
            style: GoogleFonts.roboto(
              textStyle: const TextStyle(
                color: Colors.white70,
                fontSize: 16,
              ),
            ),
          ),
      ],
    );
  }

  Widget _buildEpisodes() {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.7),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            donghua['mandarin'],
            style: GoogleFonts.roboto(
              textStyle: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 8),
          
        ],
      ),
    );
  }

  Widget _buildDescriptionCard() {
    return Card(
      color: Colors.black.withOpacity(0.7),
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Text(
          donghua['description'] ?? 'Sinopsis tidak tersedia.',
          style: GoogleFonts.roboto(
            textStyle: const TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}

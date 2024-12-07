import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:aplikasi_pertamaku/anime_screen.dart'; // Assuming AnimeScreen is defined here
import 'package:aplikasi_pertamaku/splash_screen.dart';
import 'package:aplikasi_pertamaku/donghua_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_animate/flutter_animate.dart';



void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  
  // Daftar gambar yang berbeda
  final List<String> imagePaths = [
    'assets/aot_part2.jpg',
    'assets/DONGHUA/swallowed_star.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Builder(builder: (context) {
        return Scaffold(
          appBar: AppBar(
            iconTheme: const IconThemeData(color: Colors.white),
            centerTitle: true,
            title: Text(
              'Home',
              style: GoogleFonts.montserrat(
                textStyle: const TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold),
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
          endDrawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                UserAccountsDrawerHeader(
                  accountName: const Text(
                    'Youan Thesu Hidonora',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  accountEmail: const Text(
                    'youanthesuhidonora@gmail.com',
                    style: TextStyle(fontSize: 12, color: Colors.white),
                  ),
                  currentAccountPicture: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: const Color.fromARGB(255, 28, 195, 255),
                        width: 2,
                      ),
                    ),
                    child: ClipOval(
                      child: Image.asset(
                        fit: BoxFit.cover,
                        'assets/logo1.jpeg',
                        width: 90,
                      ),
                    ),
                  ),
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(201, 34, 167, 255),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              'https://wallpaperaccess.com/full/11205039.jpg'))),
                ),

                              // List menu navbar
                // HOME
                ListTile(
                  leading: const Icon(Icons.home),
                  title: const Text('Home'),
                  iconColor: Colors.black,
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                
                // WhatApp
                ListTile(
                  leading: const Icon(FontAwesomeIcons.whatsapp),
                  title: const Text('WhatsApp'),
                  iconColor: Colors.green,
                  onTap: () async {
                    final Uri url =
                        Uri.parse('https://wa.me/6282236232754?text=Hello');
                    if (await canLaunchUrl(url)) {
                      await launchUrl(url,
                          mode: LaunchMode.externalApplication);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                ),

                //Instagram
                ListTile(
                  leading: const Icon(FontAwesomeIcons.instagram),
                  title: const Text('Instagram'),
                  iconColor: Colors.purple,
                  onTap: () async {
                    final Uri url = Uri.parse(
                        'https://www.instagram.com/zhandou_0?igsh=cWRwZzJtbjk4enNn');
                    if (await canLaunchUrl(url)) {
                      await launchUrl(url,
                          mode: LaunchMode.externalApplication);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                ),

                // Youtube
                ListTile(
                  leading: const Icon(FontAwesomeIcons.youtube),
                  title: const Text('Youtube'),
                  iconColor: Colors.red,
                  onTap: () async {
                    final Uri url = Uri.parse(
                        'https://www.instagram.com/zhandou_0?igsh=cWRwZzJtbjk4enNn');
                    if (await canLaunchUrl(url)) {
                      await launchUrl(url,
                          mode: LaunchMode.externalApplication);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                ),

                //Logout
                const Divider(),
                ListTile(
                  leading: const Icon(Icons.logout),
                  title: const Text(
                    'Logout',
                    style: TextStyle(color: Colors.red), // Menambahkan warna merah pada teks
                  ),
                  iconColor: Colors.red,
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                          title: const Text('Logout'),
                          content: const Text('Apakah anda yakin ingin keluar?'),
                          actions: [
                            TextButton(
                                child: const Text('Batal'),
                                onPressed: () {
                                  Navigator.pop(context);
                                }),
                            TextButton(
                                child: const Text(
                                  'Keluar',
                                  style: TextStyle(color: Colors.red),
                                ),
                                onPressed: () {
                                  SystemNavigator.pop();
                                }),
                          ]),
                    );
                  },
                ),
              ],
            ),
          ),
          body: SingleChildScrollView(
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/BgHome.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const AnimatedLogo(),
                    const SizedBox(height: 0),
                    Text(
                      'ANIDONG',
                      style: GoogleFonts.eduNswActFoundation(
                          textStyle: const TextStyle(
                              fontSize: 36,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                    ),
                    const SizedBox(height: 0),
                    const Text(
                      'Streaming Anime & Donghua',
                      style: TextStyle(
                          fontSize: 15,
                          fontStyle: FontStyle.italic,
                          color: Colors.white),
                    ),
                    const SizedBox(height: 10),

                    // Card for Welcome message
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Card(
                        color: Colors.white.withOpacity(0.7),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        elevation: 5,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              AnimatedTextKit(
                                animatedTexts: [
                                  TyperAnimatedText(
                                    "Welcome to my application. Thank you for downloading my application. This is an application for Streaming Anime & Donghua.",
                                    speed: const Duration(milliseconds: 60),
                                    textStyle: const TextStyle(
                                        fontSize: 14, color: Colors.black),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                                totalRepeatCount: 1,
                                displayFullTextOnTap: true,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 5),

                    // Horizontal Divider before Anime | Donghua Buttons
                    Divider(
                      color: Colors.white.withOpacity(0.6), // Garis berwarna putih dengan transparansi
                      thickness: 1, // Ketebalan garis
                      indent: 20, // Jarak dari kiri
                      endIndent: 20, // Jarak dari kanan
                    ),
                    const SizedBox(height: 5), // Add spacing between divider and buttons

                    // Horizontal Button Anime | Donghua
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton.icon(
                          icon: const Icon(
                            Icons.play_arrow,
                            color: Colors.lightBlue,
                          ),
                          label: const Text(
                            'Anime',
                            style: TextStyle(color: Colors.lightBlue),
                          ),
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.lightBlue,
                            backgroundColor: Colors.white,
                            side: const BorderSide(color: Colors.lightBlue),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              PageTransition(
                                type: PageTransitionType.scale,
                                alignment: Alignment.bottomCenter,
                                childCurrent: this,
                                duration: const Duration(milliseconds: 400),
                                child: const MangaScreen(),
                              ),
                            );
                          },
                        ),
                        const SizedBox(width: 30), // Reduced space here
                        ElevatedButton.icon(
                          icon: const Icon(
                            Icons.videocam,
                            color: Colors.lightBlue,
                          ),
                          label: const Text(
                            'Donghua',
                            style: TextStyle(color: Colors.lightBlue),
                          ),
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.lightBlue,
                            backgroundColor: Colors.white,
                            side: const BorderSide(color: Colors.lightBlue),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              PageTransition(
                                type: PageTransitionType.scale,
                                alignment: Alignment.bottomCenter,
                                childCurrent: this,
                                duration: const Duration(milliseconds: 400),
                                child: const DonghuaScreen(donghua: {},),
                              ),
                            );
                          },
                        ),
                      ],
                    ),

                    // Horizontal Divider after Anime | Donghua Buttons
                    const SizedBox(height: 10), // Spacing after buttons
                    Divider(
                      color: Colors.white.withOpacity(0.6), // Garis berwarna putih dengan transparansi
                      thickness: 1, // Ketebalan garis
                      indent: 20, // Jarak dari kiri
                      endIndent: 20, // Jarak dari kanan
                    ),

                    // Card View
                    const SizedBox(height: 10),
                    GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2, // jumlah card dalam satu baris
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        childAspectRatio: 0.8, // Set the aspect ratio to 4:5
                      ),
                      itemCount: 2,  // Jumlah card (2 saja)
                      itemBuilder: (context, index) {
                        return ViewImage(index: index, imagePath: imagePaths[index]);
                      },
                    ),
                    const SizedBox(height: 30),
                  ],
                ),
              ),
            ),
          ),

        );
      }),
    );
  }
}

// Widget untuk ViewImage
class ViewImage extends StatelessWidget {
  final int index;
  final String imagePath;
  
  const ViewImage({super.key, required this.index, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Navigasi ke halaman full image saat gambar diklik
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => FullImageView(
              index: index,             // Kirim index untuk membedakan gambar
              imagePath: imagePath,     // Kirim path gambar
            ),
          ),
        );
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Image.asset(
          imagePath,  // Menggunakan path gambar yang dikirim
          fit: BoxFit.cover,
          width: double.infinity,
          height: 150,  // Sesuaikan tinggi gambar
        ),
      ),
    );
  }
}

// Halaman untuk menampilkan gambar penuh
class FullImageView extends StatefulWidget {
  final int index;
  final String imagePath;

  const FullImageView({super.key, required this.index, required this.imagePath});

  @override
  _FullImageViewState createState() => _FullImageViewState();
}

class _FullImageViewState extends State<FullImageView> {
  double _scaleFactor = 1.0; // Kontrol untuk faktor zoom

  // Fungsi untuk zoom in
  void _zoomIn() {
    setState(() {
      _scaleFactor = (_scaleFactor < 3.0) ? _scaleFactor + 0.1 : 3.0; // Batas zoom in hingga 3x
    });
  }

  // Fungsi untuk zoom out
  void _zoomOut() {
    setState(() {
      _scaleFactor = (_scaleFactor > 0.5) ? _scaleFactor - 0.1 : 0.5; // Batas zoom out hingga 0.5x
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Latar belakang hitam untuk gambar
      appBar: AppBar(
        title: const Text('Full Image View'),
        backgroundColor: Colors.transparent, // AppBar transparan
        elevation: 0, // Tanpa bayangan pada AppBar
        leading: IconButton( // Tombol Kembali
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context); // Kembali ke halaman sebelumnya
          },
        ),
      ),
      body: Stack(
        children: [
          // Gambar utama
          Center(
            child: InteractiveViewer(
              minScale: 0.5, // Batas minimal zoom
              maxScale: 3.0, // Batas maksimal zoom
              scaleEnabled: true, // Aktifkan zoom dengan pinch
              child: Hero(
                tag: 'image_${widget.index}', // Hero transisi
                child: Transform.scale(
                  scale: _scaleFactor, // Mengubah skala gambar
                  child: Image.asset(
                    widget.imagePath, // Menampilkan gambar sesuai path
                    fit: BoxFit.contain, // Gambar akan terlihat utuh
                    width: double.infinity,
                    height: double.infinity,
                  ),
                ),
              ),
            ),
          ),
          
          // Tombol Zoom In dan Zoom Out
          Positioned(
            bottom: 20,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.6),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: IconButton(
                      icon: const Icon(
                        Icons.zoom_out,
                        color: Colors.white,
                      ),
                      onPressed: _zoomOut,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.6),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: IconButton(
                      icon: const Icon(
                        Icons.zoom_in,
                        color: Colors.white,
                      ),
                      onPressed: _zoomIn,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}




class AnimatedLogo extends StatefulWidget {
  const AnimatedLogo({super.key});
  @override
  State<AnimatedLogo> createState() => _AnimatedLogoState();
}
class _AnimatedLogoState extends State<AnimatedLogo> {
  bool isZoomed = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      padding: EdgeInsets.only(bottom: isZoomed ? 50.0 : 0),
      child: GestureDetector(
        onTap: () {
          setState(() {
            isZoomed = !isZoomed;
          });
        },
        child: AnimatedScale(
          scale: isZoomed ? 1.3 : 1.0,
          duration: const Duration(milliseconds: 300),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(200),
              border: Border.all(
                color: const Color.fromARGB(255, 3, 213, 245),
                width: 2,
              ),
            ),
            child: ClipOval(
              child: Image.asset(
                'assets/AnimasiHome.gif',
                fit: BoxFit.cover,
                width: 200,
                height: 200,
              ).animate().fadeIn(duration: const Duration(seconds: 2)).then().shake(hz: 4),
            ),
          ),
        ),
      ),
    );
  }
} 
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
      // animasi splash screen
      home: SplashScreen(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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


                  // Border Avatar di Navbar
                  currentAccountPicture: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                      color: const Color.fromARGB(255, 28, 195, 255), // Warna border
                      width: 2,            // Ketebalan border
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

                  // Background Profil Navbar
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

          //Screen Home
          body: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/BgHome.jpg'),
                fit: BoxFit.cover, // Gambar menyesuaikan layar
              ),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const AnimatedLogo(),
                  const SizedBox(height: 25),
                  Text(
                    'ANIDONG',
                    style: GoogleFonts.eduNswActFoundation(
                        textStyle: const TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                  ),
                  const SizedBox(height: 6),
                  const Text(
                    'Streaming Anime & Donghua',
                    style: TextStyle(
                        fontSize: 15,
                        fontStyle: FontStyle.italic,
                        color: Colors.white),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: AnimatedTextKit(
                      animatedTexts: [
                        TyperAnimatedText(
                          "Welcome to my application. Thank you for downloading my application. This is an application for Streaming Anime & Donghua.",
                          speed: const Duration(milliseconds: 60),
                          textStyle: const TextStyle(
                              fontSize: 12, color: Colors.black),
                          textAlign: TextAlign.center,
                        ),
                      ],
                      totalRepeatCount: 1,
                      displayFullTextOnTap: true,
                    ),
                  ),
                  const SizedBox(height: 30),


                  // Horizontal Button Anime | Donghua
                  Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    // Button Anime
    ElevatedButton.icon(
      icon: const Icon(
        Icons.play_arrow,
        color: Colors.lightBlue, // Warna ikon biru muda
      ),
      label: const Text(
        'Anime',
        style: TextStyle(color: Colors.lightBlue), // Warna teks biru muda
      ),
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.lightBlue, // Warna teks
        backgroundColor: Colors.white, // Warna background tombol
        side: const BorderSide(color: Colors.lightBlue), // Border biru muda
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20), // Membuat tombol dengan sudut melengkung
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

    const SizedBox(width: 20),

    // Button Donghua
    ElevatedButton.icon(
      icon: const Icon(
        Icons.videocam,
        color: Colors.lightBlue, // Warna ikon biru muda
      ),
      label: const Text(
        'Donghua',
        style: TextStyle(color: Colors.lightBlue), // Warna teks biru muda
      ),
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.lightBlue, // Warna teks
        backgroundColor: Colors.white, // Warna background tombol
        side: const BorderSide(color: Colors.lightBlue), // Border biru muda
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20), // Membuat tombol dengan sudut melengkung
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

                ],
              ),
            ),
          ),
        );
      }),
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
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class TontonAnimeScreen extends StatefulWidget {
  final Map<String, dynamic> anime; // List episode dengan judul dan URL

  const TontonAnimeScreen({
    super.key,
    required this.anime
  });
  
  @override
  State<TontonAnimeScreen> createState() => _TontonAnimeScreenState();
}

class _TontonAnimeScreenState extends State<TontonAnimeScreen> {
  late VideoPlayerController _controller;
  double _volume = 1.0; // Volume awal
  String? selectedEpisodeTitle; // Menyimpan judul episode yang dipilih
  String? selectedEpisodeUrl; // Menyimpan URL episode yang dipilih

  @override
void initState() {
  super.initState();
  // Mengakses episode pertama dan URL-nya dari widget.anime['episodes']
  final firstEpisode = widget.anime['episodes'][0]; // Ambil episode pertama
  final firstEpisodeUrl = firstEpisode['url']; // Ambil URL dari episode pertama
  
  // Inisialisasi video dengan URL dari episode pertama
  _initializeVideo(firstEpisodeUrl);
}


  void _initializeVideo(String url) {
    _controller = VideoPlayerController.network(url)
      ..initialize().then((_) {
        setState(() {}); // Refresh untuk memastikan video terload
        _controller.play(); // Video mulai diputar otomatis
      }).catchError((error) {
        debugPrint("Error initializing video player: $error");
      });
  }

 @override
void dispose() {
  _controller.removeListener(() {}); // Hapus listener
  _controller.dispose(); // Dispose controller
  super.dispose();
}

  // Fungsi untuk skip maju 10 detik
  void _skipForward() {
    final currentPosition = _controller.value.position;
    final duration = _controller.value.duration;
    final newPosition = currentPosition + const Duration(seconds: 10);
    _controller.seekTo(newPosition < duration ? newPosition : duration);
  }

  // Fungsi untuk skip mundur 10 detik
  void _skipBackward() {
    final currentPosition = _controller.value.position;
    final newPosition = currentPosition - const Duration(seconds: 10);
    _controller.seekTo(newPosition > Duration.zero ? newPosition : Duration.zero);
  }

   // Format waktu dalam menit:detik
  String _formatDuration(Duration duration) {
    final minutes = duration.inMinutes;
    final seconds = duration.inSeconds % 60;
    return '${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Background Halaman dengan Gradasi Gelap
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF1C1C1C), // Hitam abu-abu gelap
              Color(0xFF323232), // Abu-abu gelap
              Color(0xFF424242), // Abu-abu yang lebih terang
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Video di bagian atas
            _controller.value.isInitialized
                ? AspectRatio(
                    aspectRatio: _controller.value.aspectRatio,
                    child: VideoPlayer(_controller),
                  )
                : const SizedBox(
                    height: 200,
                    child: Center(child: CircularProgressIndicator()),
                  ),
            // Judul Anime
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                widget.anime['title'],
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            // Dropdown untuk memilih episode
 Padding(
  padding: const EdgeInsets.all(10.0),
  child: DropdownButton<String>(
    isExpanded: true,
    value: selectedEpisodeTitle,
    hint: const Text('Pilih Episode', style: TextStyle(color: Colors.white)),
    dropdownColor: const Color(0xFF323232), // Gradasi dropdown
    style: const TextStyle(color: Colors.white),
    onChanged: (String? newValue) {
      setState(() {
        selectedEpisodeTitle = newValue;
        // Menemukan URL berdasarkan judul episode yang dipilih
        final episode = widget.anime['episodes']
            .firstWhere((episode) => episode['titleeps'] == newValue, orElse: () => null);
        
        // Pastikan episode ditemukan dan URL tidak null
        if (episode != null && episode['url'] != null) {
          selectedEpisodeUrl = episode['url'];
          _controller.dispose();  // Hentikan controller yang lama
          _initializeVideo(selectedEpisodeUrl!);  // Memulai video dengan URL yang dipilih
        } else {
          // Tangani jika episode atau URL tidak ditemukan
          selectedEpisodeUrl = null;
          debugPrint("URL episode tidak ditemukan.");
        }
      });
    },
    items: widget.anime['episodes'].map<DropdownMenuItem<String>>((episode) {
      return DropdownMenuItem<String>(
        value: episode['titleeps'], // Menggunakan 'title' yang berupa String
        child: Text(episode['titleeps']!, style: const TextStyle(color: Colors.white)),
      );
    }).toList(),
  ),
),




            // Card untuk Kontrol
            Card(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              elevation: 5,
              child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFF2E2E2E), // Warna lebih gelap
                      Color(0xFF4B4B4B), // Warna lebih terang
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    // Slider untuk seek video
                    _controller.value.isInitialized
                        ? Slider(
                            value: _controller.value.position.inSeconds.toDouble(),
                            max: _controller.value.duration.inSeconds.toDouble(),
                            onChanged: (value) {
                              _controller.seekTo(Duration(seconds: value.toInt()));
                            },
                            activeColor: Colors.blueAccent,
                            inactiveColor: Colors.grey,
                          )
                        : const SizedBox(height: 20),
                        
                    // Keterangan waktu
                    _controller.value.isInitialized
                        ? Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                _formatDuration(_controller.value.position),
                                style: const TextStyle(color: Colors.white),
                              ),
                              Text(
                                _formatDuration(_controller.value.duration),
                                style: const TextStyle(color: Colors.white),
                              ),
                            ],
                          )
                        : const SizedBox(height: 20),

                    // Kontrol Play, Skip, dan Volume
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                          onPressed: _skipBackward,
                          icon: const Icon(Icons.replay_10),
                          color: Colors.white,
                        ),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              _controller.value.isPlaying
                                  ? _controller.pause()
                                  : _controller.play();
                            });
                          },
                          icon: Icon(
                            _controller.value.isPlaying
                                ? Icons.pause
                                : Icons.play_arrow,
                          ),
                          color: Colors.white,
                        ),
                        IconButton(
                          onPressed: _skipForward,
                          icon: const Icon(Icons.forward_10),
                          color: Colors.white,
                        ),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              _volume = _volume > 0 ? 0 : 1; // Toggle volume
                              _controller.setVolume(_volume);
                            });
                          },
                          icon: Icon(
                            _volume > 0 ? Icons.volume_up : Icons.volume_off,
                          ),
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
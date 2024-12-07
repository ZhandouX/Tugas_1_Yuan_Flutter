import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:google_fonts/google_fonts.dart';

class TontonAnimeScreen extends StatefulWidget {
  final Map<String, dynamic> anime;

  const TontonAnimeScreen({
    super.key,
    required this.anime,
  });

  @override
  State<TontonAnimeScreen> createState() => _TontonAnimeScreenState();
}

// Halaman memilih Episode yang akan di tonton
class _TontonAnimeScreenState extends State<TontonAnimeScreen> {
  late VideoPlayerController _controller;
  String? selectedEpisodeTitle;
  String? selectedEpisodeUrl;

  @override
  void initState() {
    super.initState();
    final firstEpisode = widget.anime['episodes'][0];
    final firstEpisodeUrl = firstEpisode['url'];

    _initializeVideo(firstEpisodeUrl);
  }

  void _initializeVideo(String url) {
    _controller = VideoPlayerController.network(url)
      ..initialize().then((_) {
        setState(() {});
        _controller.play();
      }).catchError((error) {
        debugPrint("Error initializing video player: $error");
      });

    _controller.addListener(() {
      if (mounted) {
        setState(() {});
      }
    });
  }

  @override
  void dispose() {
    _controller.removeListener(() {});
    _controller.dispose();
    super.dispose();
  }

  void _skipForward() {
    final currentPosition = _controller.value.position;
    final duration = _controller.value.duration;
    final newPosition = currentPosition + const Duration(seconds: 10);
    _controller.seekTo(newPosition < duration ? newPosition : duration);
  }

  void _skipBackward() {
    final currentPosition = _controller.value.position;
    final newPosition = currentPosition - const Duration(seconds: 10);
    _controller.seekTo(newPosition > Duration.zero ? newPosition : Duration.zero);
  }

  String _formatDuration(Duration duration) {
    final minutes = duration.inMinutes;
    final seconds = duration.inSeconds % 60;
    return '${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}';
  }

  void _onEpisodeSelected(String episodeTitle, String episodeUrl) {
  setState(() {
    selectedEpisodeTitle = episodeTitle;
    selectedEpisodeUrl = episodeUrl;
  });
  // Pindah ke halaman baru dan kirim URL video, judul anime, dan episode yang dipilih
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => VideoPlayerPage(
        url: episodeUrl,
        animeTitle: widget.anime['title'],
        episodeTitle: selectedEpisodeTitle!,
      ),
    ),
  );
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.anime['title'],
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Colors.white,
          ),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        backgroundColor: Colors.transparent,
        elevation: 4,
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
          gradient: LinearGradient(
            colors: [
              Color(0xFF1C1C1C),
              Color(0xFF323232),
              Color(0xFF424242),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            // Gambar Sampul
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.width * 9 / 16, // Rasio 16:9
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(widget.anime['image1']), // Ambil path dari properti 'image1'
                  fit: BoxFit.cover,
                ),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
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
                dropdownColor: const Color(0xFF323232),
                style: const TextStyle(color: Colors.white),
                onChanged: (String? newValue) {
                  if (newValue != null) {
                    // Cari episode berdasarkan titleeps
                    final episode = widget.anime['episodes']
                        .firstWhere((episode) => episode['titleeps'] == newValue);

                    if (episode != null && episode['url'] != null) {
                      _onEpisodeSelected(newValue, episode['url']);
                    } else {
                      debugPrint("URL episode tidak ditemukan.");
                    }
                  }
                },
                items: widget.anime['episodes'].map<DropdownMenuItem<String>>((episode) {
                  return DropdownMenuItem<String>(
                    value: episode['titleeps'],
                    child: Text(episode['titleeps']!, style: const TextStyle(color: Colors.white)),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


// Halaman untuk memutar video episode yang dipilih
class VideoPlayerPage extends StatefulWidget {
  final String url;
  final String animeTitle; // Judul anime
  final String episodeTitle; // Judul episode

  const VideoPlayerPage({
    super.key,
    required this.url,
    required this.animeTitle,
    required this.episodeTitle,
  });

  @override
  _VideoPlayerPageState createState() => _VideoPlayerPageState();
}

class _VideoPlayerPageState extends State<VideoPlayerPage> {
  late VideoPlayerController _controller;
  double _volume = 1.0;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(widget.url)
      ..initialize().then((_) {
        setState(() {});
        _controller.play();
      }).catchError((error) {
        debugPrint("Error initializing video player: $error");
      });

    _controller.addListener(() {
      if (mounted) {
        setState(() {});
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _skipForward() {
    final currentPosition = _controller.value.position;
    final duration = _controller.value.duration;
    final newPosition = currentPosition + const Duration(seconds: 10);
    _controller.seekTo(newPosition < duration ? newPosition : duration);
  }

  void _skipBackward() {
    final currentPosition = _controller.value.position;
    final newPosition = currentPosition - const Duration(seconds: 10);
    _controller.seekTo(newPosition > Duration.zero ? newPosition : Duration.zero);
  }

  String _formatDuration(Duration duration) {
    final minutes = duration.inMinutes;
    final seconds = duration.inSeconds % 60;
    return '${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 33, 37, 41), // Warna gelap
        title: Text(
          'Streaming Anime',
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _controller.value.isInitialized
                ? AspectRatio(
                    aspectRatio: _controller.value.aspectRatio,
                    child: VideoPlayer(_controller),
                  )
                : const Center(child: CircularProgressIndicator()),

            const SizedBox(height: 20),

            // Card containing controls
            Card(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              elevation: 10,
              child: Container(
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xFF2E2E2E),
                      Color(0xFF4B4B4B),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                padding: const EdgeInsets.all(15),
                child: Column(
                  children: [
                    // Slider to show video progress
                    Slider(
                      value: _controller.value.position.inSeconds.toDouble(),
                      max: _controller.value.duration.inSeconds.toDouble(),
                      onChanged: (value) {
                        _controller.seekTo(Duration(seconds: value.toInt()));
                      },
                      activeColor: Colors.blueAccent,
                      inactiveColor: Colors.grey,
                    ),
                    // Current and total duration labels
                    Row(
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
                    ),
                    const SizedBox(height: 10),
                    // Row of control buttons (skip, play/pause, volume)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        // Skip backward
                        IconButton(
                          onPressed: _skipBackward,
                          icon: const Icon(Icons.replay_10),
                          color: Colors.white,
                        ),
                        // Play/Pause
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
                        // Skip forward
                        IconButton(
                          onPressed: _skipForward,
                          icon: const Icon(Icons.forward_10),
                          color: Colors.white,
                        ),
                        // Volume control
                        IconButton(
                          onPressed: () {
                            setState(() {
                              _volume = _volume > 0 ? 0 : 1;
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

            // New Card to display anime title and episode info
            Card(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              elevation: 10,
              child: Container(
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xFF2E2E2E),
                      Color(0xFF4B4B4B),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                padding: const EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Title of the anime
                    Text(
                      widget.animeTitle,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 10),
                    // Episode information
                    Text(
                      "Episode: ${widget.episodeTitle}",
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
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

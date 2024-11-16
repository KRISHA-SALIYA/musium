import 'package:flutter/material.dart';

class PlaylistPage extends StatefulWidget {
  const PlaylistPage({super.key});

  @override
  State<PlaylistPage> createState() => _PlaylistPageState();
}
final List<Map<String, dynamic>> songs = [
  {
    'title': 'grainy days',
    'artist': 'moody.',
    'image': 'assets/song1.jpg',
  },
  {
    'title': 'Coffee',
    'artist': 'Kainbeats',
    'image': 'assets/song2.jpg',
  },
  {
    'title': 'raindrops',
    'artist': 'rainyxxx',
    'image': 'assets/song3.jpg',
  },
  {
    'title': 'Tokyo',
    'artist': 'SmYang',
    'image': 'assets/song4.jpg',
  },
  {
    'title': 'Lullaby',
    'artist': 'iamfinenow',
    'image': 'assets/song5.jpg',
  },
  {
    'title': 'Hazel Eyes',
    'artist': 'moody.',
    'image': 'assets/song6.jpg',
  },
];

class _PlaylistPageState extends State<PlaylistPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            // Navigate back
          },
        ),
        title: Text('FROM "PLAYLISTS"', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert, color: Colors.white),
            onPressed: () {
              // More options
            },
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Image.asset(
                    'assets/lofi_loft.jpg',
                    width: 200,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Lofi Loft',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'soft, chill, dreamy, lo-fi beats',
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: songs.length,
              itemBuilder: (context, index) {
                final song = songs[index];
                return ListTile(
                  leading: Image.asset(
                    song['image'],
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                  title: Text(
                    song['title'],
                    style: TextStyle(color: Colors.white),
                  ),
                  subtitle: Text(
                    song['artist'],
                    style: TextStyle(color: Colors.grey),
                  ),
                  trailing: Icon(Icons.more_vert, color: Colors.white),
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.cyan,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Explore"),
          BottomNavigationBarItem(icon: Icon(Icons.library_music), label: "Library"),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:musium/appRoutes/app_routes.dart';
class FolderPage extends StatefulWidget {
  const FolderPage({super.key});

  @override
  State<FolderPage> createState() => _FolderPageState();
}
final List<Map<String, dynamic>> playlists = [
  {
    'title': 'current favorites',
    'songs': 20,
    'image': 'lib/assets/images/11.jpg', // You can add local images
  },
  {
    'title': '3:00am vibes',
    'songs': 18,
    'image': 'lib/assets/images/12.jpg',
  },
  {
    'title': 'Lofi Loft',
    'songs': 63,
    'image': 'lib/assets/images/13.jpg',
  },
  {
    'title': 'rain on my window',
    'songs': 32,
    'image': 'lib/assets/images/14.jpg',
  },
  {
    'title': 'Anime OSTs',
    'songs': 20,
    'image': 'lib/assets/images/15.jpg',
  },
  {
    'title': 'Jazz Vibes',
    'songs': 20,
    'image': 'lib/assets/images/16.jpg',
  },
];

class _FolderPageState extends State<FolderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Moods", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.black,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Sort By", style: TextStyle(color: Colors.grey)),
                Text("Recently played", style: TextStyle(color: Colors.cyan)),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: [
                Icon(Icons.add_circle_outline, color: Colors.cyan, size: 48),
                SizedBox(width: 16),
                Text("Add New Playlist", style: TextStyle(color: Colors.white)),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: playlists.length,
              itemBuilder: (context, index) {
                final playlist = playlists[index];
                return GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, AppRoutes.instance.playlist);
                  },
                  child: ListTile(
                    leading: Image.asset(
                      playlist['image'],
                      width: 50,
                      height: 50,
                      fit: BoxFit.cover,
                    ),
                    title: Text(
                      playlist['title'],
                      style: TextStyle(color: Colors.white),
                    ),
                    subtitle: Text(
                      '${playlist['songs']} songs',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
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

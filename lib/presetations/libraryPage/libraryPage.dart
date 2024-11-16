import 'package:flutter/material.dart';
import 'package:musium/appRoutes/app_routes.dart';

class Librarypage extends StatefulWidget {
  const Librarypage({super.key});

  @override
  State<Librarypage> createState() => _LibrarypageState();
}

class _LibrarypageState extends State<Librarypage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Row(
          children: [
            Icon(Icons.music_note, color: Colors.cyan),
            SizedBox(width: 8),
            Text(
              'Your Library',
              style: TextStyle(
                color: Colors.cyan,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        actions: const [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Icon(Icons.search, color: Colors.white),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Filter Buttons (Folders, Playlists, Artists, Albums, etc.)
            FilterButtons(),
            const SizedBox(height: 20),

            // Add New Playlist and Your Liked Songs Buttons
            LibraryButtons(),

            const SizedBox(height: 20),

            // Recently Played Section
            const Text(
              'Recently played',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),

            // List of Recently Played Items
            Expanded(
              child: RecentlyPlayedList(),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}

class FilterButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, AppRoutes.instance.folder);
        },
        child: const Row(
          children: [
            FilterChip(label: 'Folders'),
            FilterChip(label: 'Playlists'),
            FilterChip(label: 'Artists'),
            FilterChip(label: 'Albums'),
            FilterChip(label: 'Podcasts'),
          ],
        ),
      ),
    );
  }
}

class FilterChip extends StatelessWidget {
  final String label;

  const FilterChip({required this.label});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Chip(
        label: Text(
          label,
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.grey[850],
      ),
    );
  }
}

class LibraryButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Add New Playlist Button
        ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.cyan,
            child: Icon(Icons.add, color: Colors.white),
          ),
          title: Text(
            'Add New Playlist',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(height: 10),

        // Your Liked Songs Button
        ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.cyan[600],
            child: Icon(Icons.favorite, color: Colors.white),
          ),
          title: Text(
            'Your Liked Songs',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}

class RecentlyPlayedList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        RecentlyPlayedItem(
          imageUrl: 'https://example.com/conan_gray.jpg',
          title: 'Conan Gray',
        ),
        RecentlyPlayedItem(
          imageUrl: 'https://example.com/3am_vibes.jpg',
          title: '3:00am vibes',
          subtitle: '18 songs',
        ),
        RecentlyPlayedItem(
          imageUrl: 'https://example.com/wiped_out.jpg',
          title: 'Wiped Out!',
          subtitle: 'The Neighbourhood',
        ),
        RecentlyPlayedItem(
          imageUrl: 'https://example.com/extra_dynamic.jpg',
          title: 'Extra Dynamic',
          subtitle: 'Updated Aug 10 • ur mom ashley',
        ),
      ],
    );
  }
}

class RecentlyPlayedItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String? subtitle;

  const RecentlyPlayedItem({
    required this.imageUrl,
    required this.title,
    this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(imageUrl),
        radius: 25,
      ),
      title: Text(
        title,
        style:
            const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
      subtitle: subtitle != null
          ? Text(
              subtitle!,
              style: const TextStyle(color: Colors.grey),
            )
          : null,
    );
  }
}

class BottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.black,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home, color: Colors.white),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search, color: Colors.white),
          label: 'Explore',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.library_music, color: Colors.cyan),
          label: 'Library',
        ),
      ],
    );
  }
}

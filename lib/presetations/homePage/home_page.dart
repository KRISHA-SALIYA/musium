import 'package:flutter/material.dart';
import 'package:musium/appRoutes/app_routes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          children: [
            const CircleAvatar(
              backgroundImage: NetworkImage(
                'https://example.com/profile_image.jpg', // Replace with actual profile image
              ),
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Welcome back !',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                Text(
                  'chandrama',
                  style: TextStyle(color: Colors.grey[400], fontSize: 14),
                ),
              ],
            ),
          ],
        ),
        actions: const [
          Icon(Icons.equalizer, color: Colors.white),
          SizedBox(width: 10),
          Icon(Icons.notifications, color: Colors.white),
          SizedBox(width: 10),
          Icon(Icons.settings, color: Colors.white),
          SizedBox(width: 16),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Continue Listening Section
              const Text(
                'Continue Listening',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, AppRoutes.instance.explore
                  );
                },
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  children: const [
                    AlbumCard(
                      title: 'Coffee & Jazz',
                      imageUrl: 'lib/assets/images/1.png',
                    ),
                    AlbumCard(
                      title: 'RELEASED',
                      imageUrl: 'lib/assets/images/2.png',
                    ),
                    AlbumCard(
                      title: 'Anything Goes',
                      imageUrl: 'lib/assets/images/3.png',
                    ),
                    AlbumCard(
                      title: 'Anime OSTs',
                      imageUrl: 'lib/assets/images/4.png',
                    ),
                    AlbumCard(
                      title: 'Harry\'s House',
                      imageUrl: 'lib/assets/images/5.png',
                    ),
                    AlbumCard(
                      title: 'Lo-Fi Beats',
                      imageUrl: 'lib/assets/images/6.png',
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),

              // Your Top Mixes Section
              const Text(
                'Your Top Mixes',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    MixCard(
                      title: 'Pop Mix',
                      imageUrl: 'https://example.com/mix1.jpg',
                    ),
                    MixCard(
                      title: 'Chill Mix',
                      imageUrl: 'https://example.com/mix2.jpg',
                    ),
                    MixCard(
                      title: 'Kpop Mix',
                      imageUrl: 'https://example.com/mix3.jpg',
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),

              // Based on Your Recent Listening Section
              const Text(
                'Based on your recent listening',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: const [
                  AlbumCard(
                    title: 'Recent Album 1',
                    imageUrl: 'https://example.com/recent1.jpg',
                  ),
                  AlbumCard(
                    title: 'Recent Album 2',
                    imageUrl: 'https://example.com/recent2.jpg',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}

class AlbumCard extends StatelessWidget {
  final String title;
  final String imageUrl;

  const AlbumCard({required this.title, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[850],
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: AssetImage(imageUrl),
          fit: BoxFit.cover,
        ),
      ),
      child: Align(
        alignment: Alignment.bottomLeft,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

class MixCard extends StatelessWidget {
  final String title;
  final String imageUrl;

  const MixCard({required this.title, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        color: Colors.grey[850],
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: AssetImage(imageUrl),
          fit: BoxFit.cover,
        ),
      ),
      child: Align(
        alignment: Alignment.bottomLeft,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

class BottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.black,
      selectedItemColor: Colors.cyan,
      unselectedItemColor: Colors.white,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'Explore',

        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.library_music),
          label: 'Library',
        ),
      ],
    );
  }
}

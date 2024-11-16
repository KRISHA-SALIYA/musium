import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:musium/appRoutes/app_routes.dart';

import '../../controller/media_controller.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({super.key});

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}
final MediaListController controller = Get.put(MediaListController());
class _ExplorePageState extends State<ExplorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title:  const Row(
          children: [
            Icon(Icons.music_note, color: Colors.cyan),
            SizedBox(width: 8),
            Text(
              'Search',
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
            padding: EdgeInsets.only(right: 16.0),
            child: Icon(Icons.notifications, color: Colors.white),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Search Bar
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, AppRoutes.instance.library);

                },
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  children: [
                    Icon(Icons.search, color: Colors.white54),
                    SizedBox(width: 10),
                    Expanded(
                      child: TextField(
                        controller: controller.searchController,
                        onSubmitted: (value) {
                          controller.getSong(search: value);
                        },
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          hintText: 'Songs, Artists, Podcasts & More',
                          hintStyle: TextStyle(color: Colors.white54),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),

            // "Your Top Genres"
           const  Text(
              'Your Top Genres',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            GridView.count(
              shrinkWrap: true,
              crossAxisCount: 2,
              childAspectRatio: 2.5,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              children: [
                genreCard('Kpop', Colors.green),
                genreCard('Indie', Colors.pink),
                genreCard('R&B', Colors.purple),
                genreCard('Pop', Colors.orange),
              ],
            ),
            SizedBox(height: 20),

            // "Browse All"
            Text(
              'Browse All',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                childAspectRatio: 2.5,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                children: [
                  browseCard('Made for You', Colors.blue),
                  browseCard('RELEASED', Colors.purple),
                  browseCard('Music Charts', Colors.black),
                  browseCard('Podcasts', Colors.red),
                  browseCard('Bollywood', Colors.brown),
                  browseCard('Pop Fusion', Colors.teal),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.white),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search, color: Colors.cyan),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_music, color: Colors.white),
            label: 'Library',
          ),
        ],
      ),
    );
  }

  Widget genreCard(String title, Color color) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget browseCard(String title, Color color) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );

  }
}

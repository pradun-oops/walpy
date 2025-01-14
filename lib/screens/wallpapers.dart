import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:walpy/screens/homepage.dart';

class Wallpapers extends StatelessWidget {
  const Wallpapers({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> wallpapers = [
      {
        'image': 'assets/wallpapers/img1.jpg',
      },
      {
        'image': 'assets/others/cat6.jpg',
      },
      {
        'image': 'assets/wallpapers/img2.jpg',
      },
      {
        'image': 'assets/others/cat5.jpg',
      },
      {
        'image': 'assets/wallpapers/img3.jpg',
      },
      {
        'image': 'assets/others/cat3.jpg',
      },
      {
        'image': 'assets/wallpapers/img4.jpg',
      },
      {
        'image': 'assets/wallpapers/img5.jpg',
      },
      {
        'image': 'assets/others/cat7.jpg',
      },
      {
        'image': 'assets/wallpapers/img6.jpg',
      },
      {
        'image': 'assets/others/cat4.jpg',
      },
      {
        'image': 'assets/wallpapers/img7.jpg',
      },
      {
        'image': 'assets/others/cat2.jpg',
      },
      {
        'image': 'assets/wallpapers/img8.jpg',
      },
      {
        'image': 'assets/wallpapers/img9.jpg',
      },
      {
        'image': 'assets/others/cat8.jpg',
      },
      {
        'image': 'assets/wallpapers/img10.jpg',
      },
      {
        'image': 'assets/wallpapers/img11.jpg',
      },
      {
        'image': 'assets/wallpapers/img12.jpg',
      },
      {
        'image': 'assets/wallpapers/img13.jpg',
      },
      {
        'image': 'assets/wallpapers/img14.jpg',
      },
      {
        'image': 'assets/wallpapers/img15.jpg',
      },
      {
        'image': 'assets/others/cat1.jpg',
      },
    ];
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.blue.withOpacity(0.5),
              Colors.green.withOpacity(0.2),
              Colors.orange.withOpacity(0.2),
              Colors.purple.withOpacity(0.1),
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 50,
              ),
              const Text(
                "Nature",
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.black87,
                  letterSpacing: 1.5,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const Text(
                "32 wallpapers available",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black54,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Expanded(
                child: MasonryGridView.builder(
                  itemCount: wallpapers.length,
                  gridDelegate:
                      const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          wallpapers[index]['image'],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Homepage(),
                  ),
                );
              },
              child: const Column(
                children: [
                  Icon(
                    Icons.category,
                    size: 30,
                  ),
                ],
              ),
            ),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Wallpapers(),
                  ),
                );
              },
              child: const Column(
                children: [
                  Icon(
                    Icons.photo,
                    size: 30,
                  ),
                ],
              ),
            ),
            label: 'Wallpapers',
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {},
              child: const Column(
                children: [
                  Icon(
                    Icons.download,
                    size: 30,
                  ),
                ],
              ),
            ),
            label: 'Downloads',
          ),
        ],
        backgroundColor: Colors.white,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
      ),
    );
  }
}

// child: GridView.builder(
//                   itemCount: wallpapers.length,
//                   gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
//                     crossAxisSpacing: 5,
//                     mainAxisSpacing: 5,
//                     childAspectRatio: 0.55,
//                     maxCrossAxisExtent: 300,
//                   ),
//                   itemBuilder: (context, index) {
//                     return Card(
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(10),
//                       ),
//                       child: ClipRRect(
//                         borderRadius: BorderRadius.circular(10),
//                         child: Image.asset(
//                           wallpapers[index]['image'],
//                           fit: BoxFit.cover,
//                         ),
//                       ),
//                     );
//                   },
//                 ),
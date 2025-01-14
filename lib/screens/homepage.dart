import 'package:flutter/material.dart';
import 'package:walpy/screens/wallpapers.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<dynamic, dynamic>> categoryList = [
      {
        "img": "assets/others/cat1.jpg",
        "category": "Mountains",
      },
      {
        "img": "assets/others/cat2.jpg",
        "category": "Enemy",
      },
      {
        "img": "assets/others/cat3.jpg",
        "category": "Animals",
      },
      {
        "img": "assets/others/cat4.jpg",
        "category": "Superheros",
      },
      {
        "img": "assets/others/cat5.jpg",
        "category": "Oceans",
      },
      {
        "img": "assets/others/cat6.jpg",
        "category": "Sky",
      },
      {
        "img": "assets/others/cat7.jpg",
        "category": "Universe",
      },
      {
        "img": "assets/others/cat8.jpg",
        "category": "Planets",
      },
    ];
    List<Map<String, dynamic>> colorList = [
      {
        'color': Colors.red,
      },
      {
        'color': Colors.green,
      },
      {
        'color': Colors.purple,
      },
      {
        'color': Colors.blue,
      },
      {
        'color': Colors.grey,
      },
      {
        'color': Colors.orange,
      },
      {
        'color': Colors.yellow,
      },
      {
        'color': Colors.amber,
      },
      {
        'color': Colors.redAccent,
      },
      {
        'color': Colors.blueGrey,
      },
    ];
    List<Map<String, dynamic>> bestList = [
      {
        'img': 'assets/wallpapers/img1.jpg',
      },
      {
        'img': 'assets/wallpapers/img2.jpg',
      },
      {
        'img': 'assets/wallpapers/img3.jpg',
      },
      {
        'img': 'assets/wallpapers/img4.jpg',
      },
      {
        'img': 'assets/wallpapers/img5.jpg',
      },
    ];

    return Scaffold(
      body: Container(
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
              Container(
                width: double.infinity,
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Find Wallpapers",
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.black38,
                        ),
                      ),
                      Icon(
                        Icons.search,
                        color: Colors.black38,
                        size: 30,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Best of the Month",
                style: TextStyle(
                  fontSize: 23,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 300,
                child: ListView.builder(
                  itemCount: bestList.length,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.only(right: 10),
                      width: 180,
                      height: 250,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(
                          bestList[index]['img'],
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "The color tone",
                style: TextStyle(
                  fontSize: 23,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 60,
                child: ListView.builder(
                    itemCount: colorList.length,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return ClipRRect(
                        child: Container(
                          margin: const EdgeInsets.only(right: 10),
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: colorList[index]["color"],
                          ),
                        ),
                      );
                    }),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Categories",
                style: TextStyle(
                  fontSize: 23,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Expanded(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    childAspectRatio: 1.8,
                    maxCrossAxisExtent: 200,
                  ),
                  itemCount: categoryList.length,
                  itemBuilder: (context, index) {
                    return Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              categoryList[index]["img"],
                              fit: BoxFit.cover,
                              width: double.infinity,
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            left: 10,
                            right: 10,
                            child: Text(
                              categoryList[index]["category"],
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
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
              onTap: () {},
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

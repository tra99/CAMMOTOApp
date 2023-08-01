import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List imageList = [
    {"id": 1, "image_path": 'assets/slider1.jpg'},
    {"id": 2, "image_path": 'assets/slider2.jpg'},
    {"id": 3, "image_path": 'assets/slider3.jpg'},
    {"id": 4, "image_path": 'assets/slider4.jpg'}
  ];
  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;
  int _currentIndex = 0; // Added _currentIndex here

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 217, 217, 217),
        leading: Image.asset(
          'assets/cam_motor_logo.png',
          width: 100,
          color: Colors.blue.shade800,
        ),
        leadingWidth: 100,
        actions: [
          GestureDetector(
            onTap: () {
              // code here
            },
            child: Ink.image(
              image: AssetImage('assets/actionButton.png'),
              width: 100,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                InkWell(
                  onTap: () {
                    print(currentIndex);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: CarouselSlider(
                      items: imageList
                          .map(
                            (item) => ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                item['image_path'],
                                fit: BoxFit.cover,
                                width: double.infinity,
                              ),
                            ),
                          )
                          .toList(),
                      carouselController: carouselController,
                      options: CarouselOptions(
                        scrollPhysics: const BouncingScrollPhysics(),
                        autoPlay: true,
                        aspectRatio: 2.2,
                        viewportFraction: 1,
                        onPageChanged: (index, reason) {
                          setState(() {
                            currentIndex = index;
                          });
                        },
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: imageList.asMap().entries.map((entry) {
                      return GestureDetector(
                        onTap: () =>
                            carouselController.animateToPage(entry.key),
                        child: Container(
                          width: currentIndex == entry.key ? 7 : 7,
                          height: 7.0,
                          margin: const EdgeInsets.symmetric(
                            horizontal: 3.0,
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: currentIndex == entry.key
                                  ? Color.fromARGB(255, 35, 31, 32)
                                  : Colors.grey.shade500),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 4),
              child: GridView.count(
                childAspectRatio: 12 / 8,
                crossAxisSpacing: 4,
                crossAxisCount: 2,
                mainAxisSpacing: 4,
                children: List.generate(ch.length, (index) {
                  return SelectCard(key: ValueKey(index), ch: ch[index]);
                }),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blueAccent,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home,size: 36,), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopify_rounded,size: 36), label: "Product"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person,size: 36), label: "Profile"),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications,size: 36), label: "Messages"),
          BottomNavigationBarItem(
              icon: Icon(Icons.menu_outlined,size: 36), label: "Menu"),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}

class choices {
  const choices({required this.name, required this.image});
  final String name;
  final ImageProvider image;
}

const List<choices> ch = const <choices>[
  choices(name: 'Teaching', image: AssetImage('assets/teaching.png')),
  choices(name: 'Repair', image: AssetImage('assets/repair.png')),
  choices(name: 'Product', image: AssetImage('assets/product.png')),
  choices(name: 'Sell Motorbike', image: AssetImage('assets/sell_motor.png')),
];

class SelectCard extends StatelessWidget {
  const SelectCard({required Key? key, required this.ch}) : super(key: key);
  final choices ch;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey.shade300,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: ch.image, width: 100),
            Text(
              ch.name,
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}

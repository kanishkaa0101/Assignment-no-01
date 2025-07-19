import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PlantHomePage(),
    );
  }
}

class PlantHomePage extends StatelessWidget {
  const PlantHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: ListView(
            children: [
             
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(Icons.menu, size: 30),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('Hello Mia',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                      Text('Take care of your plants!',
                          style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                  const Icon(Icons.shopping_cart,
                      color: Colors.green, size: 30),
                ],
              ),
              const SizedBox(height: 20),

              
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Row(
                  children: const [
                    Icon(Icons.search),
                    SizedBox(width: 10),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Search", border: InputBorder.none),
                      ),
                    ),
                    Icon(Icons.mic),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              
              const Text('Recently viewed',
                  style: TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(height: 10),
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.network(
                      'https://img.freepik.com/free-photo/cactus-pot-close-up_53876-14533.jpg',
                      height: 60,
                      width: 60,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('Orchid Cactus',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      Text('Indoor plant', style: TextStyle(color: Colors.grey))
                    ],
                  )
                ],
              ),
              const SizedBox(height: 20),

              
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  CategoryTab(label: 'Popular', selected: true),
                  CategoryTab(label: 'Outdoor'),
                  CategoryTab(label: 'Indoor'),
                  CategoryTab(label: 'Top Pick'),
                ],
              ),
              const SizedBox(height: 10),

              
              SizedBox(
                height: 160,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    PlantCard(
                      name: 'Peace lily',
                      price: '\$20',
                      imageUrl:
                          'https://img.freepik.com/free-photo/peace-lily-plant-pot-home-decor_53876-150706.jpg',
                      bgColor: Color(0xFFFFE5B4),
                    ),
                    PlantCard(
                      name: 'ZonZiber Gem',
                      price: '\$25',
                      imageUrl:
                          'https://img.freepik.com/free-photo/monstera-plant-pot-white-background_53876-125947.jpg',
                      bgColor: Color(0xFFFFC0CB),
                    ),
                    PlantCard(
                      name: 'Pothos',
                      price: '\$36',
                      imageUrl:
                          'https://img.freepik.com/free-photo/green-plant-black-pot_53876-14532.jpg',
                      bgColor: Color(0xFFD9D9D9),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: const EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text.rich(TextSpan(children: [
                          TextSpan(
                              text: 'Free ',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18)),
                          TextSpan(
                              text: 'Shipping',
                              style: TextStyle(fontSize: 18)),
                        ])),
                        const SizedBox(height: 8),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 6, horizontal: 16),
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(30)),
                          child: const Text("Above \$50",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 14)),
                        )
                      ],
                    ),
                    Image.network(
                      'https://cdn-icons-png.flaticon.com/512/869/869636.png',
                      height: 80,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CategoryTab extends StatelessWidget {
  final String label;
  final bool selected;
  const CategoryTab({super.key, required this.label, this.selected = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(label,
            style: TextStyle(
                fontSize: 14,
                fontWeight: selected ? FontWeight.bold : FontWeight.normal,
                color: selected ? Colors.green : Colors.grey)),
        if (selected)
          const CircleAvatar(radius: 4, backgroundColor: Colors.green)
      ],
    );
  }
}

class PlantCard extends StatelessWidget {
  final String name, price, imageUrl;
  final Color bgColor;

  const PlantCard(
      {super.key,
      required this.name,
      required this.price,
      required this.imageUrl,
      required this.bgColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      margin: const EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          const SizedBox(height: 8),
          Image.network(imageUrl, height: 80),
          const SizedBox(height: 10),
          Text(name,
              style:
                  const TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
          Text(price,
              style: const TextStyle(fontSize: 12, color: Colors.grey)),
        ],
      ),
    );
  }
}

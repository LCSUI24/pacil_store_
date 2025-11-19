import 'package:flutter/material.dart';
import 'package:pacil_store/widgets/left_drawer.dart';
import 'package:pacil_store/widgets/product_card.dart';
class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});
  final String nama = "Cyrillo Praditya Soeharto"; //nama
  final String npm = "2406495413"; //npm
  final String kelas = "B" ;//kelas

  final List<ItemHomepage> items = [
    ItemHomepage("All Products", Icons.shopping_cart, Colors.blue),
    ItemHomepage("Create Product", Icons.add, Colors.red),
    ItemHomepage("My Products", Icons.person, Colors.green),
    ItemHomepage("Logout", Icons.exit_to_app, Colors.purple),
  ];

  @override
  Widget build(BuildContext context) {
    // Scaffold provides the basic structure with AppBar and body.
    return Scaffold(
      // AppBar with title
      appBar: AppBar(
        title: const Text(
          'Pacil Store',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      drawer: LeftDrawer(),
      // Body with padding and content
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Row for displaying 3 InfoCards
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InfoCard(title: 'NPM', content: npm),
                InfoCard(title: 'Name', content: nama),
                InfoCard(title: 'Class', content: kelas),
              ],
            ),
            const SizedBox(height: 16.0),
            Center(
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 16.0),
                    child: Text(
                      'Selamat datang di Pacil Store',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                  // Grid for displaying ItemCards
                  GridView.count(
                    primary: true,
                    padding: const EdgeInsets.all(20),
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount: 4,
                    shrinkWrap: true,
                    children: items.map((ItemHomepage item) {
                      return ItemCard(item);
                    }).toList(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class InfoCard extends StatelessWidget {
  final String title;
  final String content;

  const InfoCard({super.key, required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0,
      child: Container(
        width: MediaQuery.of(context).size.width / 3.5,
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8.0),
            Text(content),
          ],
        ),
      ),
    );
  }
}

class ItemHomepage {
  final String name;
  final IconData icon;
  final Color color;

  ItemHomepage(this.name, this.icon, this.color);
}



import 'package:flutter/material.dart';
import 'package:flutter_grocery_ui/data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final data = Product('Bayam', '2.000', '1 ikat', 'assets/img1.png',
      'Secara umum sayura dan buah-buahan merupakan sumber berbagai vitamin, mineral');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        leading: const Icon(
          Icons.menu,
          color: Colors.black,
        ),
        title: const Center(
          child: Text(
            'Toko Buah & Sayur',
            style: TextStyle(color: Colors.black),
          ),
        ),
        actions: [
          Row(
            children: [
              const Icon(
                Icons.search,
                color: Colors.black,
              ),
              Stack(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.shopping_cart,
                      color: Colors.black,
                    ),
                  ),
                  Positioned(
                    top: 0,
                    right: 3,
                    child: Container(
                      height: 20,
                      width: 20,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.red),
                      child: const Center(
                        child: Text(
                          '2',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w800),
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: GridView.count(
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          crossAxisCount: 2,
          childAspectRatio: 0.6,
          children: [
            Card(
              elevation: 2,
              shadowColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Hero(
                    tag: data.image,
                    child: SizedBox(
                      width: 150,
                      child: Image.asset(data.image),
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    'Rp ${data.price}',
                    style: const TextStyle(
                        color: Colors.green,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    data.name,
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    data.quantity,
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w300),
                  ),
                  const SizedBox(height: 4),
                  const Divider(
                    height: 2,
                    color: Colors.grey,
                  ),
                  const SizedBox(height: 10),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        children: [
                          Icon(
                            Icons.add_shopping_cart,
                            size: 20,
                            color: Colors.green,
                          ),
                          SizedBox(width: 2),
                          Text(
                            'Beli',
                            style: TextStyle(color: Colors.green, fontSize: 16),
                          )
                        ],
                      ),
                      SizedBox(width: 8),
                      Row(
                        children: [
                          Icon(Icons.remove_circle_outline,
                              size: 18, color: Colors.green),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5),
                            child: Text('0'),
                          ),
                          Icon(
                            Icons.add_circle_outline,
                            size: 18,
                            color: Colors.green,
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            const Card(),
          ],
        ),
      ),
    );
  }
}

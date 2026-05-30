import 'package:flutter/material.dart';

enum ProductsCard {
  Dart(
    title: "OOP",
    Description: "The Best Object Language",
    image: "assets/ex3/dart.png",
  ),
  Flutter(
    title: "Flutter",
    Description: "The best mobile widget library",
    image: "assets/ex3/flutter.png",
  ),
  FireBase(
    title: "FIREBASE",
    Description: "The best clound database",
    image: "assets/ex3/firebase.png",
  );

  const ProductsCard({
    required this.title,
    required this.Description,
    required this.image,
  });

  final String title;
  final String Description;
  final String image;
}

class CardProduct extends StatelessWidget {
  const CardProduct({super.key, required this.productsCard});
  final ProductsCard productsCard;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(productsCard.image, height: 100, width: 100),
          ListTile(
            title: Text(productsCard.title, style: TextStyle(fontSize: 40)),
            subtitle: Text(productsCard.Description),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Products"),
          backgroundColor: const Color.fromARGB(126, 96, 125, 139),
        ),
        body: Padding(
          padding: EdgeInsets.all(40),
          child: Column(
            children: [
              CardProduct(productsCard: ProductsCard.Flutter),
              CardProduct(productsCard: ProductsCard.FireBase),
              CardProduct(productsCard: ProductsCard.Dart),
            ],
          ),
        ),
      ),
    ),
  );
}

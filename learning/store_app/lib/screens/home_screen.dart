import 'package:flutter/material.dart';
import 'package:store_app/components/product_card.dart';

class HomeScreen extends StatelessWidget {
  static String id = 'HomeScreen';
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New Trend"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.shopping_cart,
            ),
          ),
        ],
      ),
      body: ProductCard(),
    );
  }
}

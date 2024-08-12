import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:store_app/models/product_model.dart';

class ProductCard extends StatelessWidget {
  ProductCard({super.key});
  ProductModel product = ProductModel(
    id: 7,
    title: "Hand bag",
    price: 350.5,
    description: "description",
    category: "Bags",
    image: "https://i.pravatar.cc",
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      child: Card(
        elevation: 20,
        child: Column(
          children: [
            // Image.network(product.image),
            Text(
              product.title,
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('\$${product.price}'),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      FontAwesomeIcons.solidHeart,
                      color: Colors.grey,
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:store_app/models/product_model.dart';
import 'package:store_app/screens/update_product_screen.dart';

class ProductCard extends StatelessWidget {
  ProductCard({required this.product, super.key});
  ProductModel product;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, UpdateProductScreen.id,
            arguments: product);
      },
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            child: Card(
              surfaceTintColor: Colors.white,
              shadowColor: Colors.white,
              elevation: 5,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.title!.split(' ').take(4).join(' '),
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '\$${product.price}',
                          style: TextStyle(fontSize: 17),
                        ),
                        IconButton(
                            padding: EdgeInsets.zero,
                            constraints: BoxConstraints(),
                            style: const ButtonStyle(
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            ),
                            onPressed: () {},
                            icon: Icon(
                              Icons.favorite,
                              color: Colors.grey,
                            ))
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: -55,
            right: 20,
            child: Image.network(
              product.image,
              height: 100,
              width: 100,
            ),
          ),
        ],
      ),
    );
  }
}

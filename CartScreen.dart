import 'package:flutter/material.dart';

class Product {
  final String name;
  final String image;
  final String price;

  Product({required this.name, required this.image, required this.price});
}

class CartScreen extends StatelessWidget {
  final List<Product> cartItems;

  CartScreen({required this.cartItems});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Cart'),
      ),
      body: cartItems.isEmpty
          ? Center(child: Text('Cart is empty'))
          : ListView.builder(
        itemCount: cartItems.length,
        itemBuilder: (context, index) {
          final product = cartItems[index];
          return ListTile(
            leading: Image.asset(
                product.image,
                height: 50,
                width: 50,
                fit: BoxFit.cover
            ),
            title: Text(product.name),
            subtitle: Text(product.price),
          );
        },
      ),
    );
  }
}


// product.dart
import 'package:flutter/material.dart';

class ProductScreen extends StatelessWidget {
  final List<String> products = [
    'Espresso', 'Americano', 'Latte', 'Cappuccino', 'Mocha', 'Macchiato', 'Flat White', 'Affogato', 'Irish Coffee', 'Turkish Coffee'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Our Coffee Menu')),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.all(10),
            child: ListTile(
              leading: Icon(Icons.coffee, color: Colors.brown),
              title: Text(products[index], style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              subtitle: Text('Delicious ${products[index]} just for you!'),
            ),
          );
        },
      ),
    );
  }
}
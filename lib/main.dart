import 'package:flutter/material.dart';
import 'models/products.dart';
import 'services/product_service.dart';

void main() {
  runApp(MaterialApp(home: QuickShopPage()));
}

class QuickShopPage extends StatelessWidget {
  QuickShopPage({super.key});

  final ProductService productService = ProductService();

  @override
  Widget build(BuildContext context) {
    List<Products> cheapProducts = productService.getCheapProduct();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Quick Shop - Sản phẩm giá rẻ'),
      ),
      body: ListView(
        children: cheapProducts.map((product) {
          return Card(
            margin: const EdgeInsets.all(9),
            child: ListTile(
              leading: const Icon(Icons.shopping_cart),
              title: Text(product.name),
              subtitle: Text('Giá: \$${product.price}'),
              trailing: const Icon(Icons.add_shopping_cart),
              onTap: () => productService.handAddToCart(product),
            ),
          );
        }).toList(),
      ),
    );
  }
}
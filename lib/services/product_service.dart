import '../data/data_source.dart';
import '../models/products.dart';

class ProductService {
  List<Products> getAll(){
    return rawProducts;
  }

  List<Products> getCheapProduct() {
    return rawProducts.where((p) => p.price < 100).toList();
  }

  void handAddToCart(Products product) {
    // Thêm sản phẩm vào giỏ hàng
    print('Đã thêm ${product.name} vào giỏ hàng');
    print('Giá: ${product.price}');
  }


}



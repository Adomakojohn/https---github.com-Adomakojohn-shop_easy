import 'dart:convert';

import 'package:ecommerce_project/Domain/models/models/product_model.dart';
import 'package:ecommerce_project/Domain/models/repository/products_repo.dart';

class ProductController {
  final productRepo = ProductRepo();

  Future<List<ProductModel>> getProducts() async {
    final response = await productRepo.getProducts();
    final data = jsonDecode(response.body);

    List<ProductModel> products = [];
    final productsJson = data[''];

    for (dynamic productJson in productsJson) {
      products.add(ProductModel.fromJson(productJson));
    }

    return products;
  }
}

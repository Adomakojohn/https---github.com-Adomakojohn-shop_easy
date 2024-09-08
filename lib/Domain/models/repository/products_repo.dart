import 'dart:developer';

import 'package:http/http.dart' as http;

class ProductRepo {
  getProducts() async {
    final url = Uri.parse('https://fakestoreapi.com/products/categories');
    final response = await http.get(url);
    log(response.body);
  }
}

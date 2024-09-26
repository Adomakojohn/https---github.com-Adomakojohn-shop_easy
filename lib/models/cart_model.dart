import 'package:ecommerce_project/models/home_models.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {
  List<DealsModel> items = [
    DealsModel(
        imagePath: "assets/images/sneaker.png",
        itemName: "Sneaker",
        itemInfo: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. ",
        itemPrice: "\$500",
        itemRating: "⭐⭐⭐⭐⭐"),
    DealsModel(
        imagePath: "assets/images/dress.png",
        itemName: "Women printed kurta",
        itemInfo: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. ",
        itemPrice: "\$260",
        itemRating: "⭐⭐⭐⭐"),
  ];

  List<DealsModel> userCart = [];

  List<DealsModel> getItem() {
    return items;
  }

  List<DealsModel> getUserCart() {
    return userCart;
  }

  void addItemsToCart(DealsModel items) {
    userCart.add(items);
    notifyListeners();
  }

  void removeItemsFromCart(DealsModel items) {
    userCart.remove(items);
    notifyListeners();
  }
}

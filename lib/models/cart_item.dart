// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:trying_learning_flutter/models/food.dart';

class CartItem {
  Food food;
  List<Addon> selectedAddons;
  int quantity;
  CartItem({
    required this.food,
    required this.selectedAddons,
    required this.quantity,
  });

  double get totalPrice {
    double addonPrice =
        selectedAddons.fold(0, (sum, addon) => sum + addon.price);
    return (food.price + addonPrice) * quantity;
  }
}

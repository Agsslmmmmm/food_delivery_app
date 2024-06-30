import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:trying_learning_flutter/models/cart_item.dart';
import 'package:trying_learning_flutter/models/food.dart';

class Restaurant extends ChangeNotifier {
  // list of food menu
  final List<Food> _menu = [
    // burgers
    Food(
      name: "Classic Chesseburger",
      description:
          "A juicy patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle.",
      imagePath: "lib/images/burger/aloha.jpg",
      price: 0.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(
          name: "Extra Cheese",
          price: 0.99,
        ),
        Addon(
          name: "Bacon",
          price: 1.99,
        ),
        Addon(
          name: "Avocado",
          price: 2.99,
        ),
      ],
    ),
    Food(
      name: "Classic Chesseburger",
      description:
          "A juicy patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle.",
      imagePath: "lib/images/burger/black.jpg",
      price: 0.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(
          name: "Extra Cheese",
          price: 0.99,
        ),
        Addon(
          name: "Bacon",
          price: 1.99,
        ),
        Addon(
          name: "Avocado",
          price: 2.99,
        ),
      ],
    ),
    Food(
      name: "Classic Chesseburger",
      description:
          "A juicy patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle.",
      imagePath: "lib/images/burger/burger2.jpg",
      price: 0.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(
          name: "Extra Cheese",
          price: 0.99,
        ),
        Addon(
          name: "Bacon",
          price: 1.99,
        ),
        Addon(
          name: "Avocado",
          price: 2.99,
        ),
      ],
    ),
    Food(
      name: "Classic Chesseburger",
      description:
          "A juicy patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle.",
      imagePath: "lib/images/burger/cheese_burger.jpg",
      price: 0.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(
          name: "Extra Cheese",
          price: 0.99,
        ),
        Addon(
          name: "Bacon",
          price: 1.99,
        ),
        Addon(
          name: "Avocado",
          price: 2.99,
        ),
      ],
    ),
    Food(
      name: "Classic Chesseburger",
      description:
          "A juicy patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle.",
      imagePath: "lib/images/burger/egg_burger.jpg",
      price: 0.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(
          name: "Extra Cheese",
          price: 0.99,
        ),
        Addon(
          name: "Bacon",
          price: 1.99,
        ),
        Addon(
          name: "Avocado",
          price: 2.99,
        ),
      ],
    ),
    Food(
      name: "Classic Chesseburger",
      description:
          "A juicy patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle.",
      imagePath: "lib/images/burger/cheese_burger.jpg",
      price: 0.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(
          name: "Extra Cheese",
          price: 0.99,
        ),
        Addon(
          name: "Bacon",
          price: 1.99,
        ),
        Addon(
          name: "Avocado",
          price: 2.99,
        ),
      ],
    ),
    // salads
    Food(
      name: "Salads 1",
      description: "Hello",
      imagePath: "lib/images/salads/salads1.jpg",
      price: 0.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(
          name: "Extra Cheese",
          price: 0.99,
        ),
        Addon(
          name: "Bacon",
          price: 1.99,
        ),
        Addon(
          name: "Avocado",
          price: 2.99,
        ),
      ],
    ),

    // sides
    Food(
      name: "Sides 1",
      description: "hehe",
      imagePath: "lib/images/sides/1.jpeg",
      price: 0.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(
          name: "Extra Cheese",
          price: 0.99,
        ),
        Addon(
          name: "Bacon",
          price: 1.99,
        ),
        Addon(
          name: "Avocado",
          price: 2.99,
        ),
      ],
    ),

    // desserts
    Food(
      name: "Dessert 1",
      description: "hehe",
      imagePath: "lib/images/dessert/dessert1.jpg",
      price: 0.99,
      category: FoodCategory.dessert,
      availableAddons: [
        Addon(
          name: "Extra Cheese",
          price: 0.99,
        ),
        Addon(
          name: "Bacon",
          price: 1.99,
        ),
        Addon(
          name: "Avocado",
          price: 2.99,
        ),
      ],
    ),

    // drinks
    Food(
      name: "Lemon Lime",
      description:
          "A juicy patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle.",
      imagePath: "lib/images/drinks/lemon_drinks.jpg",
      price: 0.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(
          name: "Extra Cheese",
          price: 0.99,
        ),
        Addon(
          name: "Bacon",
          price: 1.99,
        ),
        Addon(
          name: "Avocado",
          price: 2.99,
        ),
      ],
    ),
  ];

  /* 
  GETTERS
  */
  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;

  /* 
  OPERATIONS
  */
  // user cart
  final List<CartItem> _cart = [];

  // add to cart
  void addToCart(Food food, List<Addon> selectedAddons) {
    // see if there is a cart item already with the same food and selected addons
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      // check if the food items are the same
      bool isSameFood = item.food == food;

      // check if the list of selected addons are the same
      bool isSameAddons =
          ListEquality().equals(item.selectedAddons, selectedAddons);

      return isSameFood && isSameAddons;
    });
    // if item already exists, increase it's quantity
    if (cartItem != null) {
      cartItem.quantity++;
    }

    // otherwise, and new cart item to the cart
    else {
      _cart.add(
        CartItem(
          food: food,
          selectedAddons: selectedAddons,
          quantity: 0,
        ),
      );
    }
    notifyListeners();
  }

  // remove from cart
  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);

    if (cartIndex != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }
  }

  // get total price in cart
  double getTotalPrice() {
    double total = 0.0;
    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;
      for (Addon addon in cartItem.selectedAddons) {
        itemTotal += addon.price;
      }
      total += itemTotal * cartItem.quantity;
    }
    return total;
  }

  // get total number of items in cart
  int getTotalItemCount() {
    int totalItemCount = 0;

    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }
    return totalItemCount;
  }

  // clear cart
  void clearCart() {
    _cart.clear();
    notifyListeners();
  }
  /* 
  HELPER
  */

  // generate a receipt
  // format double value into money
  // format list of addonst into a string summary
}

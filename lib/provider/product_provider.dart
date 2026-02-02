import 'package:flutter/material.dart';
import '../models/productmodel.dart';

class CartItem {
  final Product prdctmodll;
  int quantity;

  CartItem({required this.prdctmodll, this.quantity = 1});
}

class CartProvider extends ChangeNotifier {
  final List<CartItem> _cartItems = [];

  List<CartItem> get cartItems => _cartItems;

  // Add item / increase quantity
  void additem(Product product) {
    final index = _cartItems.indexWhere((e) => e.prdctmodll.id == product.id);

    if (index >= 0) {
      _cartItems[index].quantity++;
    } else {
      _cartItems.add(CartItem(prdctmodll: product));
    }
    notifyListeners();
  }

  // Reduce quantity
  void removeitems(Product product) {
    final index = _cartItems.indexWhere((e) => e.prdctmodll.id == product.id);

    if (index >= 0) {
      if (_cartItems[index].quantity > 1) {
        _cartItems[index].quantity--;
      } else {
        _cartItems.removeAt(index);
      }
    }
    notifyListeners();
  }

  // Remove item completely
  void deleteindex(Product product) {
    _cartItems.removeWhere((e) => e.prdctmodll.id == product.id);
    notifyListeners();
  }

  // Clear cart
  void clear() {
    _cartItems.clear();
    notifyListeners();
  }

  // Check item in cart
  bool isincart(Product product) {
    return _cartItems.any((e) => e.prdctmodll.id == product.id);
  }

  // Total amount
  double get totalamount {
    double total = 0;
    for (var item in _cartItems) {
      total += item.prdctmodll.price * item.quantity;
    }
    return total;
  }
}

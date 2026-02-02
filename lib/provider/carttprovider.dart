import 'package:cart_app/models/productmodel.dart';
import 'package:cart_app/service/api_product.dart';
import 'package:flutter/material.dart';

class ProductProvider extends ChangeNotifier {
  final ApiService _apiService = ApiService();

  List<Product> _products = [];
  bool _isLoading = false;

  List<Product> get products => _products;
  bool get isLoading => _isLoading;

  final List<Product> _cartItems = [];

  List<Product> get cartItems => _cartItems;
  void additem(Product product) {
    if (!_cartItems.contains(product)) {
      _cartItems.add(product);
      notifyListeners();
    }
  }

  void removeitems(Product product) {
    _cartItems.remove(product);
    notifyListeners();
  }

  bool isincart(Product product) {
    return _cartItems.contains(product);
  }

  Future<void> loadProducts() async {
    _isLoading = true;
    notifyListeners();

    try {
      _products = await _apiService.fetchProducts();
    } catch (e) {
      debugPrint("Error: $e");
    }

    _isLoading = false;
    notifyListeners();
  }
}

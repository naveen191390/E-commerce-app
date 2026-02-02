import 'package:flutter/material.dart';
import '../models/productmodel.dart';

class Favouriteprovider extends ChangeNotifier {
  final List<Product> _favourites = [];

  List<Product> get favourites => _favourites;

  /// Add product to favourites
  void addfavourite(Product product) {
    if (!_favourites.any((item) => item.id == product.id)) {
      _favourites.add(product);
      notifyListeners();
    }
  }

  /// Remove product from favourites
  void removefavourite(Product product) {
    _favourites.removeWhere((item) => item.id == product.id);
    notifyListeners();
  }

  /// Check if product is favourite
  bool isfavourite(Product product) {
    return _favourites.any((item) => item.id == product.id);
  }
}

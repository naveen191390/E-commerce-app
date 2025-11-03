import 'package:cart_app/models/cartmodel.dart';
import 'package:cart_app/models/productmodel.dart';
import 'package:flutter/material.dart';

class Cartprovidr extends ChangeNotifier {
  final List<Cartmodel> _cartsitem = [];

  List<Cartmodel> get cartsitem => _cartsitem;

  double get totalamount {
    double totel = 0;
    for (var cartsitemsssss in _cartsitem) {
      totel += cartsitemsssss.prdctmodll.price * cartsitemsssss.quantity;
    }
    return totel;
  }

  void additem(Productmodelllllllllllllll produtsss) {
    final existingindex = _cartsitem.indexWhere(
      (cartsitem) => cartsitem.prdctmodll.id == produtsss.id,
    );
    if (existingindex >= 0) {
      _cartsitem[existingindex].quantity++;
    } else {
      _cartsitem.add(Cartmodel(prdctmodll: produtsss));
    }
    notifyListeners();
  }

  void removeitems(Productmodelllllllllllllll produtsss) {
    final existingindex = _cartsitem.indexWhere(
      (cartsitem) => cartsitem.prdctmodll.id == produtsss.id,
    );
    if (existingindex >= 0) {
      if (_cartsitem[existingindex].quantity > 1)
        _cartsitem[existingindex].quantity--;
    } else {
      _cartsitem.removeAt(existingindex);
    }
    notifyListeners();
  }

  void deleteindex(Productmodelllllllllllllll produtsss) {
    _cartsitem.removeWhere(
      (cartsitem) => cartsitem.prdctmodll.id == produtsss.id,
    );
    notifyListeners();
  }

  bool isincart(Productmodelllllllllllllll prodtss) {
    return _cartsitem.any((cartsitem) => cartsitem.prdctmodll.id == prodtss.id);
  }

  void clear() {
    _cartsitem.clear();
    notifyListeners();
  }
}

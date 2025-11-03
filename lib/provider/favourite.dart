import 'package:cart_app/models/productmodel.dart';
import 'package:flutter/material.dart';

class Favouriteprovider extends ChangeNotifier {
  final List<Productmodelllllllllllllll> _favourites = [];

  List<Productmodelllllllllllllll> get favourites => _favourites;

  void addfavourite(Productmodelllllllllllllll fav) {
    _favourites.add(fav);
    notifyListeners();
  }

  void removefavourite(Productmodelllllllllllllll fav) {
    _favourites.remove(fav);
    notifyListeners();
  }

  bool isfavourite(Productmodelllllllllllllll fav) {
    return _favourites.contains(fav);
  }
}

// import 'package:flutter/material.dart';
// import '../models/api_product.dart';
// import '../service/api_product.dart';

// class ProductProvider extends ChangeNotifier {
//   List<Apimodel> products = [];
//   bool isLoading = false;

//   Future<void> fetchProducts() async {
//     isLoading = true;
//     notifyListeners();

//     try {
//       products = await ProductApi().fetchProducts();
//     } catch (e) {
//       print('Error fetching products: $e');
//     }

//     isLoading = false;
//     notifyListeners();
//   }
// }

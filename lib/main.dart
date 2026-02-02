import 'package:cart_app/provider/carttprovider.dart';
import 'package:cart_app/provider/favourite.dart';
import 'package:cart_app/provider/product_provider.dart';
import 'package:cart_app/view/bottom_nav.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ProductProvider()),
        ChangeNotifierProvider(create: (_) => Favouriteprovider()),
        ChangeNotifierProvider(create: (_) => CartProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const SlidingCircleNavScreen(),
      ),
    );
  }
}

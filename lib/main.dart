import 'package:cart_app/home/bottom_nav.dart';
import 'package:cart_app/home/cart_page.dart';
import 'package:cart_app/home/favorite.dart';
import 'package:cart_app/home/home.dart';
import 'package:cart_app/provider/carttprovider.dart';
import 'package:cart_app/provider/favourite.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Favouriteprovider()),
        ChangeNotifierProvider(create: (context) => Cartprovidr()),
      ],
      child: const MaterialApp(
        home: SlidingCircleNavScreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

import 'package:cart_app/view/cart_page.dart';
import 'package:cart_app/view/favorite.dart';
import 'package:cart_app/view/home.dart';
import 'package:cart_app/view/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class SlidingCircleNavScreen extends StatefulWidget {
  const SlidingCircleNavScreen({super.key});

  @override
  _SlidingCircleNavScreenState createState() => _SlidingCircleNavScreenState();
}

class _SlidingCircleNavScreenState extends State<SlidingCircleNavScreen> {
  int _page = 1;

  final screens = [favoritepagee(), carthomee(), appcartpage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 221, 240, 236),
      // Background
      bottomNavigationBar: CurvedNavigationBar(
        index: _page,
        height: 60,
        backgroundColor: Color.fromARGB(255, 255, 244, 230),
        color: Colors.white,
        buttonBackgroundColor: Colors.white,
        animationDuration: Duration(milliseconds: 300),
        items: <Widget>[
          Icon(Icons.favorite_border_outlined, size: 30, color: Colors.black54),
          Icon(Icons.home, size: 30, color: Colors.black54),
          Icon(Icons.shopping_cart, size: 30, color: Colors.black54),
        ],
        onTap: (index) {
          setState(() {
            _page = index;
          });
        },
      ),
      body: screens[_page],
    );
  }
}

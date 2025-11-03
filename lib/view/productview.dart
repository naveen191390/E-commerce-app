import 'package:cart_app/view/cart_page.dart';
import 'package:cart_app/models/productmodel.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Viewpage extends StatelessWidget {
  Productmodelllllllllllllll moodelllviw;
  Viewpage({super.key, required this.moodelllviw});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Center(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 50, left: 20),
                      child: IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: Icon(Icons.arrow_back_ios),
                        color: Colors.black,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 50, right: 20),
                      child: IconButton(
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => appcartpage(),
                          ),
                        ),
                        icon: Icon(Icons.shopping_cart_checkout_sharp),
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 350,
                  width: double.infinity,
                  child: Image.asset(moodelllviw.image),
                ),
              ],
            ),
          ),
          Positioned(
            child: Padding(
              padding: const EdgeInsets.only(top: 450),
              child: Container(
                height: double.infinity,
                width: double.infinity,

                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 221, 240, 236),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 15, left: 25),
                  child: Stack(
                    children: [
                      Row(
                        children: [
                          Text(
                            moodelllviw.name,
                            style: GoogleFonts.farro(
                              fontSize: 27,
                              color: Colors.black,
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left: 100),
                            child: Icon(
                              Icons.currency_rupee,
                              color: Colors.black,
                            ),
                          ),
                          Expanded(
                            child: Text(
                              moodelllviw.price.toString(),
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ],
                      ),

                      Positioned(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 60),
                          child: Text(
                            moodelllviw.description,
                            style: GoogleFonts.aBeeZee(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

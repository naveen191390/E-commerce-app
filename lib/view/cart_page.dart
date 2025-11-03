import 'package:cart_app/home/bottom_nav.dart';
import 'package:cart_app/home/home.dart';
import 'package:cart_app/provider/carttprovider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class appcartpage extends StatefulWidget {
  const appcartpage({super.key});

  @override
  State<appcartpage> createState() => _appcartpageState();
}

class _appcartpageState extends State<appcartpage> {
  @override
  Widget build(BuildContext context) {
    final cartproviderrrr = Provider.of<Cartprovidr>(context);
    final cartitemmmm = cartproviderrrr.cartsitem;

    // var prodcart = cartitemmmm[index];
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Center(child: Text('My Cart', style: GoogleFonts.aBeeZee())),
        actions: [
          IconButton(
            onPressed: () {
              cartproviderrrr.clear();
            },
            icon: Icon(Icons.delete, color: Colors.white),
          ),
        ],
      ),
      body: Container(
        width: double.infinity,
        color: const Color.fromARGB(255, 255, 248, 239),
        //blueAccent.withOpacity(0.2),
        padding: const EdgeInsets.all(12),

        child: ListView.builder(
          itemCount: cartitemmmm.length,
          itemBuilder: (context, index) {
            var carrtttt = cartitemmmm[index];
            final getcartitems = carrtttt.prdctmodll;
            return Card(
              color: Colors.white,
              elevation: 2,
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Image.asset(
                          getcartitems.image,
                          width: 80,
                          height: 100,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),

                    const SizedBox(width: 10),

                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Text(
                              getcartitems.name,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 15,
                              ),
                            ),
                          ),
                          const SizedBox(height: 6),
                          Row(
                            children: [
                              Text(
                                'Quantity',
                                // "${getcartitems.price}*${carrtttt.quantity}",
                              ),
                              const SizedBox(width: 8),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 8,
                                  vertical: 4,
                                ),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.grey.shade400,
                                  ),
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                child: Text('${carrtttt.quantity}'),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 35, right: 5),
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              cartproviderrrr.removeitems(carrtttt.prdctmodll);
                            },
                            icon: Padding(
                              padding: const EdgeInsets.only(bottom: 9),
                              child: Icon(Icons.minimize, size: 20),
                            ),
                          ),
                          SizedBox(width: 15),
                          IconButton(
                            onPressed: () {
                              cartproviderrrr.additem(carrtttt.prdctmodll);
                            },
                            icon: Icon(Icons.add, size: 20),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 5),

                    Padding(
                      padding: const EdgeInsets.only(top: 14),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "${carrtttt.prdctmodll.price}",
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              cartproviderrrr.deleteindex(getcartitems);
                            },
                            icon: const Icon(Icons.close, size: 20),
                            splashRadius: 20,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },

          // crossAxisAlignment: CrossAxisAlignment.start,
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 25, right: 20),
        child: Container(
          height: 100,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: Colors.cyanAccent,
          ),
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Text(
                    "Total  :                                  ${cartproviderrrr.totalamount}",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

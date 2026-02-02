import 'package:cart_app/provider/favourite.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class favoritepagee extends StatefulWidget {
  const favoritepagee({super.key});

  @override
  State<favoritepagee> createState() => _favoritepageeState();
}

class _favoritepageeState extends State<favoritepagee> {
  @override
  Widget build(BuildContext context) {
    final favProviderrrr = Provider.of<Favouriteprovider>(context);
    final favitems = favProviderrrr.favourites;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 248, 239),
      appBar: AppBar(
        title: const Text("Favorites"),
        backgroundColor: Colors.orange,
      ),
      body: ListView.builder(
        itemCount: favitems.length,

        itemBuilder: (context, index) {
          var prodfav = favitems[index];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Container(
              height: 130,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.4),
                    blurRadius: 5,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),

              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        prodfav.image,
                        fit: BoxFit.contain,
                        width: 100,
                        height: 100,
                      ),
                    ),
                  ),

                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                        top: 15,
                        bottom: 15,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            prodfav.title,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            prodfav.price.toString(),
                            style: const TextStyle(
                              fontSize: 16,
                              color: Colors.green,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            "Category: Fasion",
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.grey[600],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: IconButton(
                      onPressed: () {
                        if (favProviderrrr.isfavourite(prodfav)) {
                          favProviderrrr.removefavourite(prodfav);
                        } else {
                          favProviderrrr.addfavourite(prodfav);
                        }
                      },
                      icon: Icon(
                        favProviderrrr.isfavourite(prodfav)
                            ? Icons.favorite
                            : Icons.favorite_border,
                        color: favProviderrrr.isfavourite(prodfav)
                            ? Colors.red
                            : Colors.yellow,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

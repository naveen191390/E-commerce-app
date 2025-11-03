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
      backgroundColor: const Color.fromARGB(255, 194, 255, 255),
      appBar: AppBar(title: const Text("Favorites")),
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
                            prodfav.name,
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
                      onPressed: () {},
                      icon: const Icon(
                        Icons.favorite,
                        color: Colors.red,
                        size: 28,
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

// // import 'package:flutter/material.dart';

// // class vertheeei extends StatefulWidget {
// //   const vertheeei({super.key});

// //   @override
// //   State<vertheeei> createState() => _vertheeeiState();
// // }

// // class _vertheeeiState extends State<vertheeei> {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         backgroundColor: Color.fromARGB(255, 221, 240, 236),
// //         title: Text("Favorite"),
// //       ),
// //       body: ListView.builder(
// //         // itemCount: favitems.length,
// //         itemCount: 5,
// //         itemBuilder: (context, index) {
// //           // var prodfav = favitems[index];
// //           ;
// //           return Padding(
// //             padding: const EdgeInsets.only(top: 18, left: 15, right: 15),
// //             child: Column(
// //               children: [
// //                 Container(
// //                   height: 120,
// //                   width: double.infinity,
// //                   decoration: BoxDecoration(
// //                     borderRadius: BorderRadius.circular(15),
// //                     color: const Color.fromARGB(255, 235, 255, 242),
// //                   ),
// //                   child: Row(
// //                     children: [
// //                       Padding(
// //                         padding: const EdgeInsets.only(top: 10),
// //                         child: ClipRRect(
// //                           borderRadius: BorderRadiusGeometry.circular(10),
// //                           child: Image.asset(
// //                             'images/itemmsss8.png',
// //                             // prodfav.image,
// //                             fit: BoxFit.contain,
// //                             width: 100,
// //                             height: 100,
// //                           ),
// //                         ),
// //                       ),
// //                       Column(
// //                         children: [
// //                           Expanded(
// //                             child: Padding(
// //                               padding: const EdgeInsets.only(top: 15),
// //                               child: Text(
// //                                 'favProviderrrr.',
// //                                 style: TextStyle(
// //                                   fontSize: 19,
// //                                   //  fontWeight: FontWeight.bold,
// //                                 ),
// //                               ),
// //                             ),
// //                           ),
// //                           Padding(
// //                             padding: const EdgeInsets.only(
// //                               bottom: 50,
// //                               left: 280,
// //                             ),
// //                             child: Text('data'),
// //                           ),
// //                         ],
// //                       ),
// //                       Padding(
// //                         padding: const EdgeInsets.only(bottom: 65),
// //                         child: IconButton(
// //                           onPressed: () {
// //                             //   if (favProviderrrr.isfavourite(prodfav)) {
// //                             //     favProviderrrr.removefavourite(prodfav);
// //                             //   } else {
// //                             //     favProviderrrr.addfavourite(prodfav);
// //                             //   }
// //                           },
// //                           icon: Icon(
// //                             Icons.favorite,
// //                             // favProviderrrr.isfavourite(prodfav)
// //                             //     ? Icons.favorite
// //                             //     : Icons.favorite_border,
// //                             // color: favProviderrrr.isfavourite(prodfav)
// //                             //     ? Colors.white
// //                             //     : Colors.yellow,
// //                           ),
// //                         ),
// //                       ),
// //                     ],
// //                   ),
// //                 ),
// //               ],
// //             ),
// //           );
// //         },
// //       ),
// //     );
// //   }
// // }

// import 'package:flutter/material.dart';

// class CartItemCard extends StatelessWidget {
//   final String title;
//   final String imageUrl;
//   final double price;
//   final int quantity;
//   // final VoidCallback onRemove;

//   const CartItemCard({
//     super.key,
//     required this.title,
//     required this.imageUrl,
//     required this.price,
//     required this.quantity,
//     // required this.onRemove,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       elevation: 2,
//       margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//       child: Padding(
//         padding: const EdgeInsets.all(10),
//         child: Row(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // 🖼 Product Image
//             ClipRRect(
//               borderRadius: BorderRadius.circular(8),
//               child: Image.network(
//                 imageUrl,
//                 width: 60,
//                 height: 60,
//                 fit: BoxFit.cover,
//               ),
//             ),

//             const SizedBox(width: 10),

//             // 🧾 Product Details
//             Expanded(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     title,
//                     maxLines: 2,
//                     overflow: TextOverflow.ellipsis,
//                     style: const TextStyle(
//                       fontWeight: FontWeight.w600,
//                       fontSize: 15,
//                     ),
//                   ),
//                   const SizedBox(height: 6),
//                   Row(
//                     children: [
//                       const Text("Quantity"),
//                       const SizedBox(width: 8),
//                       Container(
//                         padding: const EdgeInsets.symmetric(
//                           horizontal: 8,
//                           vertical: 4,
//                         ),
//                         decoration: BoxDecoration(
//                           border: Border.all(color: Colors.grey.shade400),
//                           borderRadius: BorderRadius.circular(6),
//                         ),
//                         child: Text(quantity.toString()),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),

//             // 💶 Price & Remove Button
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.end,
//               children: [
//                 Text(
//                   "${price.toStringAsFixed(2)} €",
//                   style: const TextStyle(
//                     fontWeight: FontWeight.bold,
//                     fontSize: 16,
//                   ),
//                 ),
//                 IconButton(
//                   onPressed: () {},
//                   icon: const Icon(Icons.close, size: 20),
//                   splashRadius: 20,
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class CartPage extends StatelessWidget {
//   const CartPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text("Your Cart")),
//       body: ListView(
//         children: const [
//           CartItemCard(
//             title: "Element Vertical SS tee Shirt",
//             imageUrl:
//                 "https://i.natgeofe.com/n/548467d8-c5f1-4551-9f58-6817a8d2c45e/NationalGeographic_2572187_16x9.jpg?w=1200",
//             price: 21.95,
//             quantity: 1,
//             //onRemove: null,
//           ),
//         ],
//       ),
//     );
//   }
// }

// import 'package:cart_app/provider/favourite.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// class favoritepagee extends StatefulWidget {
//   const favoritepagee({super.key});

//   @override
//   State<favoritepagee> createState() => _favoritepageeState();
// }

// class _favoritepageeState extends State<favoritepagee> {
//   @override
//   Widget build(BuildContext context) {
//     final favProviderrrr = Provider.of<Favouriteprovider>(context);
//     final favitems = favProviderrrr.favourites;
//     return Scaffold(
//       appBar: AppBar(title: Text("Favorite")),
//       body: Container(
//         child: ListView.builder(
//           itemCount: favitems.length,
//           itemBuilder: (context, index) {
//             var prodfav = favitems[index];
//             return Card(
//               child: Padding(
//                 padding: const EdgeInsets.only(top: 18, left: 15, right: 15),
//                 child: Column(
//                   children: [
//                     Container(
//                       height: 120,
//                       width: double.infinity,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(15),
//                         color: Colors.white,
//                       ),
//                       child: Row(
//                         children: [
//                           Padding(
//                             padding: const EdgeInsets.only(top: 10),
//                             child: ClipRRect(
//                               borderRadius: BorderRadiusGeometry.circular(10),
//                               child: Image.asset(
//                                 prodfav.image,
//                                 fit: BoxFit.contain,
//                                 width: 100,
//                                 height: 100,
//                               ),
//                             ),
//                           ),
//                           // Expanded(child: Text(favProviderrrr.)),
//                           Padding(
//                             padding: const EdgeInsets.only(
//                               left: 320,
//                               bottom: 65,
//                             ),
//                             child: IconButton(
//                               onPressed: () {
//                                 if (favProviderrrr.isfavourite(prodfav)) {
//                                   favProviderrrr.removefavourite(prodfav);
//                                 } else {
//                                   favProviderrrr.addfavourite(prodfav);
//                                 }
//                               },
//                               icon: Icon(
//                                 favProviderrrr.isfavourite(prodfav)
//                                     ? Icons.favorite
//                                     : Icons.favorite_border,
//                                 color: favProviderrrr.isfavourite(prodfav)
//                                     ? Colors.red
//                                     : Colors.yellow,
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }

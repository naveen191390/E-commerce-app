import 'package:cart_app/view/favorite.dart';
import 'package:cart_app/models/productmodel.dart';
import 'package:cart_app/provider/carttprovider.dart';
import 'package:cart_app/provider/favourite.dart';
import 'package:cart_app/view/productview.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:carousel_slider/carousel_slider.dart';

class carthomee extends StatefulWidget {
  const carthomee({super.key});

  @override
  State<carthomee> createState() => _CarthomeeState();
}

final List<String> imagelistt = [
  'images/cartimg1.jpg',
  'images/cartimg2.jpg',
  'images/cartimg3.jpg',
  'images/cartimg4.jpg',
  'images/cartimg5.jpg',
];
//  ,
//   'images/itemmss2.png',
//   'images/itemmss3.png',
//   'images/itemmss4.png',
//   'images/itemmss5.png',
//   'images/itemmss6.png',
//   'images/itemmss7.png',
//   'images/itemmss8.png',

final List<Productmodelllllllllllllll> itemlistt = [
  Productmodelllllllllllllll(
    id: 1,
    name: "Iphone 17 Pro",
    image: 'images/itemmsss1.png',
    price: 134900,
    description:
        "The iPhone 17 Pro combines cutting-edge technology with sleek design, delivering unmatched performance, an immersive display, and advanced camera capabilities for every moment.",
  ),
  Productmodelllllllllllllll(
    id: 2,
    name: "Asus Rog Strix G16",
    image: 'images/itemmsss2.png',
    price: 179991,
    description:
        "The ASUS ROG Strix G16 combines raw power and precision engineering, featuring cutting-edge performance, dynamic cooling, and immersive visuals — crafted for those who demand victory at every frame.",
  ),
  Productmodelllllllllllllll(
    id: 3,
    name: "Versace Eros Flame",
    image: 'images/itemmsss3.png',
    price: 6900,
    description:
        "Versace Eros Flame is a bold fragrance that ignites the senses with fiery notes of citrus, spice, and woods — a scent for the confident man who leads with heart and strength.",
  ),
  Productmodelllllllllllllll(
    id: 4,
    name: "Skirts",
    image: 'images/itemmsss4.png',
    price: 1999,
    description:
        "This chic and versatile skirt combines timeless style with modern sophistication. Designed to flatter every silhouette, it flows gracefully with every step — perfect for brunch dates, office days, or evening strolls.",
  ),
  Productmodelllllllllllllll(
    id: 5,
    name: 'Shirts',
    image: 'images/itemmsss5.png',
    price: 999,
    description:
        "This premium shirt blends comfort and class in perfect harmony. Tailored for a sleek fit and crafted from breathable fabric, it keeps you looking sharp from sunrise meetings to sunset hangouts.",
  ),
  Productmodelllllllllllllll(
    id: 6,
    name: "boAt Airdopes 170 ANC",
    image: 'images/itemmsss6.png',
    price: 2000,
    description:
        "Experience pure sound with boAt Airdopes 170 ANC. Featuring up to 35dB Active Noise Cancellation, crystal-clear calling, and long-lasting battery life, these earbuds deliver immersive audio wherever life takes you. Sleek design, powerful performance — music never felt this good.",
  ),
  Productmodelllllllllllllll(
    id: 7,
    name: " Fastrack Stunners",
    image: 'images/itemmss7.png',
    price: 1647,
    description:
        "Bold, stylish, and effortlessly cool — the Fastrack Stunners collection brings attitude to your wrist. With its sleek design and striking details, it’s made for those who live fast, stand out, and never blend in.",
  ),
  Productmodelllllllllllllll(
    id: 8,
    name: " Nike Dunk Low",
    image: 'images/itemmsss8.png',
    price: 11895,
    description:
        "The Nike Dunk Low blends timeless basketball heritage with street-ready style. With its premium leather build, bold color blocking, and unmatched comfort, this sneaker is a statement of self-expression — whether you’re hitting the court or the city streets.",
  ),
];

class _CarthomeeState extends State<carthomee> {
  int currentindex = 0;

  @override
  Widget build(BuildContext context) {
    final ffffffav = Provider.of<Favouriteprovider>(context);
    final favvvv = ffffffav.favourites;

    final caaaart = Provider.of<Cartprovidr>(context);
    final carttttt = caaaart.cartsitem;

    return Scaffold(
      backgroundColor: Colors.white,
      drawer: buildDrawer(),
      appBar: AppBar(backgroundColor: Colors.orange, toolbarHeight: 100),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: const Color.fromARGB(255, 255, 248, 239),
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search Your Items',
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 15,
                    horizontal: 20,
                  ),
                  border: InputBorder.none,
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.search),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),

            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: const Color.fromARGB(255, 255, 244, 230),
              ),

              child: Column(
                children: [
                  CarouselSlider(
                    options: CarouselOptions(
                      height: 210,
                      clipBehavior: Clip.antiAlias,
                      //  enlargeStrategy: CenterPageEnlargeStrategy.height,
                      autoPlay: true,
                      enlargeCenterPage: true,
                      viewportFraction: 0.85,

                      autoPlayInterval: const Duration(seconds: 2),
                      onPageChanged: (index, reason) {
                        setState(() => currentindex = index);
                      },
                    ),
                    items: imagelistt.map((item) {
                      return Card(
                        margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
                        elevation: 3,
                        shadowColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        clipBehavior: Clip.antiAlias,
                        child: Image.asset(item, fit: BoxFit.fitWidth),
                      );
                    }).toList(),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: imagelistt.asMap().entries.map((entry) {
                      return Container(
                        width: 10,
                        height: 10,
                        margin: const EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 2,
                        ),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: currentindex == entry.key
                              ? Colors.black
                              : Colors.grey,
                        ),
                      );
                    }).toList(),
                  ),

                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(right: 270),
                    child: Text(
                      'Trending Deals',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),

                  Padding(
                    padding: const EdgeInsets.only(
                      right: 12,
                      left: 12,
                      bottom: 12,
                    ),
                    child: GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 12,
                            crossAxisSpacing: 12,
                            childAspectRatio: 1 / 1,
                          ),
                      itemCount: itemlistt.length,
                      itemBuilder: (context, index) {
                        var productsss = itemlistt[index];
                        //  final isfav = favouriteProvider.isfavourite(productsss);
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    Viewpage(moodelllviw: productsss),
                              ),
                            );
                          },
                          child: Card(
                            color: Colors.white,

                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadiusGeometry.circular(15),
                            ),
                            clipBehavior: Clip.antiAlias,
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 117),
                                    child: Row(
                                      children: [
                                        IconButton(
                                          onPressed: () {
                                            if (caaaart.isincart(productsss)) {
                                              caaaart.removeitems(productsss);
                                            } else {
                                              caaaart.additem(productsss);
                                            }
                                            ;
                                          },
                                          icon: caaaart.isincart(productsss)
                                              ? Icon(Icons.done)
                                              : Icon(
                                                  Icons.shopping_cart_outlined,
                                                ),
                                        ),

                                        // ffffffav =caaaart
                                        // favvvv=carttttt
                                        IconButton(
                                          onPressed: () {
                                            if (ffffffav.isfavourite(
                                              productsss,
                                            )) {
                                              ffffffav.removefavourite(
                                                productsss,
                                              );
                                            } else {
                                              ffffffav.addfavourite(productsss);
                                            }
                                          },
                                          icon: Padding(
                                            padding: const EdgeInsets.only(
                                              right: 6,
                                            ),
                                            child: Icon(
                                              ffffffav.isfavourite(productsss)
                                                  ? Icons.favorite
                                                  : Icons.favorite_border,
                                              color:
                                                  ffffffav.isfavourite(
                                                    productsss,
                                                  )
                                                  ? Colors.red
                                                  : Colors.black,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Image.asset(
                                    productsss.image,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//builddrawer function
Widget buildDrawer() {
  return Drawer(
    child: ListView(
      children: [
        UserAccountsDrawerHeader(
          accountName: Text('Arya Stark'),
          accountEmail: Text('aryastark@gmail.com'),
          currentAccountPicture: CircleAvatar(
            backgroundImage: NetworkImage(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQT4OGiW6OlbbZ95zunNgP_tXvnIe3tM1KFpXdpi8CupbenfOQ15YlvJ-i_8aWoMszMagM&usqp=CAU',
            ),
          ),
        ),
      ],
    ),
  );
}

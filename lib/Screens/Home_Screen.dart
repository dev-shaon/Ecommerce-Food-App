import 'package:flutter/material.dart';
import 'package:fruits_ecommerce_app/Provider/User_provider.dart';
import 'package:fruits_ecommerce_app/Screens/basket_screen.dart';
import 'package:fruits_ecommerce_app/Screens/favorite_screen.dart';
import 'package:fruits_ecommerce_app/Wigets/NonRecommended.dart';
import 'package:fruits_ecommerce_app/Wigets/productcard.dart';
import 'package:fruits_ecommerce_app/Provider/provider.dart';
import 'package:provider/provider.dart';
import '../Model_class/product.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<Product> products = [
    Product(
      id: 1,
      title: "Cappuccino",
      imageUrl: "assets/images/f4.png",
      price: 4.99,
      catagoryId: 1,
      isRecommendet: true,
    ),
    Product(
      id: 2,
      title: "Fruit Salad",
      imageUrl: "assets/images/f5.png",
      price: 6.99,
      catagoryId: 1,
      isRecommendet: true,
    ),
    Product(
      id: 3,
      title: "Green Salad",
      imageUrl: "assets/images/f6.png",
      price: 10.99,
      catagoryId: 2,
      isRecommendet: false,
    ),
    Product(
      id: 4,
      title: "Italian Salad",
      imageUrl: "assets/images/f8.png",
      price: 6.99,
      catagoryId: 3,
      isRecommendet: false,
    ),
    Product(
      id: 5,
      title: "Caesar Salad",
      imageUrl: "assets/images/f5.png",
      price: 2.99,
      catagoryId: 1,
      isRecommendet: false,
    ),
    Product(
      id: 6,
      title: "Caesar Salad",
      imageUrl: "assets/images/f7.png",
      price: 2.99,
      catagoryId: 1,
      isRecommendet: false,
    ),
  ];

  List<Product> getRecomne() {
    return products.where((f) => f.isRecommendet == true).toList();
  }

  @override
  Widget build(BuildContext context) {
    final recomendetProduts = getRecomne();
    final nonRecomendetProducts =
        products.where((f) => f.isRecommendet == false).toList();

    final favoriteProvider = Provider.of<FavoriteProvider>(context);
    final userProvider = Provider.of<UserProvider>(context);

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(color: Colors.orange),
                child: Text(
                  "About",
                  style: TextStyle(color: Colors.white, fontSize: 40,fontWeight: FontWeight.bold),
                ),
              ),
              ListTile(
                leading: IconButton(onPressed: (){}, icon: Icon(Icons.person)),
                title: Text("Profile"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: IconButton(onPressed: (){}, icon: Icon(Icons.settings)),
                title: Text("Setting"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading:IconButton(onPressed: (){}, icon: Icon(Icons.details)),
                title: Text("Details"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),

        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Builder(
                        builder: (context) => IconButton(
                          onPressed: () {
                            Scaffold.of(context).openDrawer();
                          },
                          icon: Icon(Icons.sort, size: 40),
                        ),
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              IconButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => FavoriteScreen(),
                                    ),
                                  );
                                },
                                icon: Icon(
                                  Icons.favorite,
                                  color: Colors.orange,
                                  size: 30,
                                ),
                              ),
                              Text("Fav"),
                            ],
                          ),
                          SizedBox(width: 10),
                          Column(
                            children: [
                              IconButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => BasketScreen(),
                                    ),
                                  );
                                },
                                icon: Icon(
                                  Icons.shopping_basket,
                                  color: Colors.orange,
                                  size: 30,
                                ),
                              ),
                              Text("My basket"),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),

                  SizedBox(height: 8),

                  Text(
                    "Hello ${userProvider.username}, What fruit salad \ncombo do you want today?",
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),

                  SizedBox(height: 8),

                  Row(
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.search),
                            filled: true,
                            fillColor: Color.fromARGB(255, 230, 229, 229),
                            hintText: "Search for fruit salad combos",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 8),
                      Icon(Icons.tune, size: 40),
                    ],
                  ),

                  SizedBox(height: 12),

                  Text(
                    "Recommended Combo?",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),

                  SizedBox(height: 16),

                  GridView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: recomendetProduts.length,
                    gridDelegate:
                        SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      childAspectRatio: 3 / 4,
                    ),
                    itemBuilder: (context, index) {
                      final product = recomendetProduts[index];
                      final isFav =
                          favoriteProvider.isFavorite(product);
                      return ProductCard(
                        product: product,
                        isFavorite: isFav,
                        onFavoritePressed: () {
                          favoriteProvider.toggleFavorite(product);
                        },
                      );
                    },
                  ),

                  SizedBox(height: 10),

                  TabBar(
                    isScrollable: true,
                    labelColor: Colors.orange,
                    unselectedLabelColor: Colors.black,
                    tabs: [
                      Tab(text: "Hottest"),
                      Tab(text: "Popular"),
                      Tab(text: "New combo"),
                      Tab(text: "Top"),
                    ],
                  ),

                  SizedBox(height: 10),

                  SizedBox(
                    height: 250,
                    child: TabBarView(
                      children: [
                        NonRecommendedGrid(
                            products: nonRecomendetProducts),
                        NonRecommendedGrid(
                            products: recomendetProduts),
                        NonRecommendedGrid(
                            products: nonRecomendetProducts),
                        NonRecommendedGrid(
                            products: nonRecomendetProducts),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

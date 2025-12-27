import 'package:flutter/material.dart';
import 'package:fruits_ecommerce_app/Wigets/multiproduct.dart';
import 'package:fruits_ecommerce_app/Model_class/product.dart';
import 'package:fruits_ecommerce_app/Provider/provider.dart';
import 'package:provider/provider.dart';

class NonRecommendedGrid extends StatelessWidget {
  final List<Product> products;

  const NonRecommendedGrid({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    final favoriteProvider = Provider.of<FavoriteProvider>(context);

    return SizedBox(
      height: 190,                    
      child: GridView.builder(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        itemCount: products.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          mainAxisSpacing: 12,
          childAspectRatio: 1.30,      
        ),
        itemBuilder: (context, index) {
          final product = products[index];
          final isFav = favoriteProvider.isFavorite(product);
          return MultipleProduct(
            product: product,
            isFavorite: isFav,
            onFavoritePressed: () => favoriteProvider.toggleFavorite(product),
          );
        },
      ),
    );
  }
}

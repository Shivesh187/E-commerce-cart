import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import '../data/product_data.dart';
import '../widgets/product_card.dart';
import '../widgets/cart_badge.dart';

class ProductListScreen extends StatelessWidget {
  const ProductListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('All Products'),
        actions: const [CartBadge()],
      ),
      body: AnimationLimiter(
        child: GridView.builder(
          padding: const EdgeInsets.all(16),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.72,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
          ),
          itemCount: dummyProducts.length,
          itemBuilder: (ctx, i) {
            return AnimationConfiguration.staggeredGrid(
              position: i,
              duration: const Duration(milliseconds: 450),
              columnCount: 2,
              child: ScaleAnimation(
                child: FadeInAnimation(
                  child: ProductCard(product: dummyProducts[i], index: i),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
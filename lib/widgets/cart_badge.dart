import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:badges/badges.dart' as badges;
import '../providers/cart_provider.dart';
import '../screens/cart_screen.dart';

class CartBadge extends StatelessWidget {
  const CartBadge({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CartProvider>(
      builder: (ctx, cart, child) {
        return badges.Badge(
          position: badges.BadgePosition.topEnd(top: 0, end: 3),
          showBadge: cart.totalQuantity > 0,
          badgeContent: Text(
            cart.totalQuantity.toString(),
            style: const TextStyle(color: Colors.white, fontSize: 10),
          ),
          badgeStyle: badges.BadgeStyle(
            badgeColor: Theme.of(context).colorScheme.secondary,
          ),
          child: IconButton(
            icon: const Icon(Icons.shopping_cart_outlined),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const CartScreen()),
              );
            },
          ),
        );
      },
    );
  }
}
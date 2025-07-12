import 'package:flutter/material.dart';
import 'package:z_store_app/features/wishlist/presentation/views/widgets/wishlist_view_body.dart';

class WishlistView extends StatelessWidget {
  const WishlistView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: WishlistViewBody()));
  }
}

import 'package:flutter/material.dart';
import 'package:z_store_app/features/wishlist/presentation/views/widgets/wishlist_is_empty_widget.dart';

class WishlistViewBody extends StatelessWidget {
  const WishlistViewBody({super.key});
  final List<String> wishlistItems = const [
    // 'Item 1',
    // 'Item 2',
  ];
  @override
  Widget build(BuildContext context) {
    if (wishlistItems.isEmpty){
      return WishlistIsEmptyWidget();
    }
    return ListView();
  }
}

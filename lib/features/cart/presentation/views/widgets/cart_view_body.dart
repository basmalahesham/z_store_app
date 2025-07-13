import 'package:flutter/material.dart';
import 'package:z_store_app/features/cart/presentation/views/widgets/cart_is_empty_widget.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});
  final List<String> cartItems = const [
    // 'Item 1',
    // 'Item 2',
  ];
  @override
  Widget build(BuildContext context) {
    if (cartItems.isEmpty) {
      return CartIsEmptyWidget();
    }
    return ListView();
  }
}

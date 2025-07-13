import 'package:flutter/material.dart';
import 'package:z_store_app/core/widgets/custom_app_bar.dart';
import 'package:z_store_app/core/widgets/custom_text_button.dart';
import 'package:z_store_app/features/cart/presentation/views/widgets/cart_view_body.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        widget: CustomTextButton(onPressed: () {}, text: 'clear Cart'),
      ),
      body: SafeArea(child: CartViewBody()),
    );
  }
}

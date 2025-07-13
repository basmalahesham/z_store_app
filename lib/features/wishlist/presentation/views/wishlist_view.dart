import 'package:flutter/material.dart';
import 'package:z_store_app/core/widgets/custom_app_bar.dart';
import 'package:z_store_app/core/widgets/custom_text_button.dart';
import 'package:z_store_app/features/wishlist/presentation/views/widgets/wishlist_view_body.dart';

class WishlistView extends StatelessWidget {
  const WishlistView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        widget: CustomTextButton(onPressed: (){}, text: 'clear Wishlist'),
      ),
      body: SafeArea(child: WishlistViewBody()),
    );
  }
}

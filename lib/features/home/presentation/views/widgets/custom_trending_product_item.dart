import 'package:flutter/material.dart';
import 'package:z_store_app/core/helper/space_extension.dart';
import 'package:z_store_app/core/theming/colors.dart';
import 'package:z_store_app/core/theming/styles/text_styles.dart';
import 'package:z_store_app/features/home/data/models/trending_product_model.dart';

class CustomTrendingProductItem extends StatelessWidget {
  const CustomTrendingProductItem({super.key, required this.productModel});
  final TrendingProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        color: ColorsManager.kPrimaryColor,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.10),
            spreadRadius: 0,
            blurRadius: 2,
            offset: Offset(-2, -2), // changes position of shadow
          ),
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.10),
            spreadRadius: 0,
            blurRadius: 2,
            offset: Offset(2, 2), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Color(0xFFF2F2F2),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Image.asset(
                  productModel.imageUrl,
                  height: 100,
                  width: double.infinity,
                  fit: BoxFit.contain,
                ),
              ),
              if (productModel.isOutOfStock)
                Positioned(
                  bottom: 6,
                  right: 6,
                  child: Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: ColorsManager.kSecondaryColor,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text('Out of Stock', style: TextStyles.bold9White),
                  ),
                ),
            ],
          ),
          4.height,
          Text(
            productModel.title,
            style: TextStyles.bold14Black,
            textAlign: TextAlign.center,
          ),
          4.height,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 4,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: IconButton(
                  icon: const Icon(Icons.favorite_border),
                  iconSize: 20,
                  color: Colors.red,
                  onPressed: () {},
                  splashRadius: 24,
                ),
              ),

              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 4,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: IconButton(
                  icon: const Icon(Icons.shopping_cart_outlined),
                  iconSize: 20,
                  color: Colors.black,
                  onPressed: () {},
                  splashRadius: 24,
                ),
              ),
            ],
          ),
          8.height,
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              '${productModel.price} EGP',
              style: TextStyles.w600Black12,
            ),
          ),
        ],
      ),
    );
  }
}

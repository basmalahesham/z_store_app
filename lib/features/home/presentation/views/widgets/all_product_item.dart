import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:z_store_app/core/helper/space_extension.dart';
import 'package:z_store_app/core/theming/colors.dart';
import 'package:z_store_app/core/theming/styles/text_styles.dart';
import 'package:z_store_app/features/home/data/models/trending_product_model.dart';
import 'package:z_store_app/features/home/presentation/views/widgets/custom_icon_button.dart';

class AllProductItem extends StatelessWidget {
  const AllProductItem({super.key, required this.productModel});
  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: ColorsManager.kPrimaryColor,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.1),
            blurRadius: 4,
            spreadRadius: 1,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            // width: 80,
            // height: 80,
            decoration: BoxDecoration(
              color: Color(0xFFF2F2F2),
              borderRadius: BorderRadius.circular(12),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                productModel.imageUrl,
                fit: BoxFit.contain,
                height: 120.h,
                width: 120,
              ),
            ),
          ),
          12.width,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  productModel.title,
                  style: TextStyles.bold14Black,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                4.height,
                Text(
                  productModel.description ?? '',
                  style: TextStyles.w400Gray14,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                4.height,
                Text(
                  '${productModel.price} EGP',
                  style: TextStyles.bold14Black,
                ),
                15.height,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomIconButton(
                      onTap: () {},
                      icon: Icons.favorite_border,
                      color: ColorsManager.kSecondaryColor,
                    ),
                    CustomIconButton(
                      onTap: () {},
                      icon: Icons.shopping_cart_outlined,
                      color: Colors.black,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

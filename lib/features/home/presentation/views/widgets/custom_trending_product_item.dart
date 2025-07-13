import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:z_store_app/core/helper/space_extension.dart';
import 'package:z_store_app/core/theming/colors.dart';
import 'package:z_store_app/core/theming/styles/text_styles.dart';
import 'package:z_store_app/features/home/data/models/trending_product_model.dart';
import 'package:z_store_app/features/home/presentation/views/widgets/custom_icon_button.dart';

class CustomTrendingProductItem extends StatelessWidget {
  const CustomTrendingProductItem({
    super.key,
    required this.productModel,
    required this.isActive,
  });

  final ProductModel productModel;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.symmetric(horizontal: 8),
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
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    productModel.imageUrl,
                    height: 100.h,
                    width: double.infinity,
                    fit: BoxFit.contain,
                  ),
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
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          4.height,
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

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:z_store_app/core/helper/space_extension.dart';
import 'package:z_store_app/core/theming/styles/text_styles.dart';
import 'package:z_store_app/features/home/data/models/trending_product_model.dart';
import 'package:z_store_app/features/home/presentation/views/widgets/custom_trending_product_item.dart';
import 'package:z_store_app/generated/assets.dart';

class CustomTrendingProductsWidget extends StatefulWidget {
  const CustomTrendingProductsWidget({super.key});

  @override
  State<CustomTrendingProductsWidget> createState() =>
      _CustomTrendingProductsWidgetState();
}

class _CustomTrendingProductsWidgetState
    extends State<CustomTrendingProductsWidget> {
  final List<TrendingProductModel> trendingProducts = [
    TrendingProductModel(
      imageUrl: Assets.imagesZGuard,
      title: 'Z-Guard',
      price: '89998',
      isOutOfStock: true,
    ),
    TrendingProductModel(
      imageUrl: Assets.imagesZGuard,
      title: 'Z-Guard',
      price: '89998',
      isOutOfStock: true,
    ),
    TrendingProductModel(
      imageUrl: Assets.imagesZGuard,
      title: 'Z-Guard',
      price: '89998',
      isOutOfStock: true,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Trending Products', style: TextStyles.bold18Black),
        12.height,
        SizedBox(
          height: 240.h,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => CustomTrendingProductItem(
              productModel: trendingProducts[index],
            ),
            itemCount: trendingProducts.length,
          ),
        ),
      ],
    );
  }
}

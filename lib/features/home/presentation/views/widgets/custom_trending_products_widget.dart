import 'package:flutter/material.dart';
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
  final ScrollController _scrollController = ScrollController();
  final double _itemWidth = 180;
  double _currentScroll = 0;

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
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      setState(() {
        _currentScroll = _scrollController.offset;
      });
    });
  }

  double _calculateScale(int index) {
    final itemPosition = index * _itemWidth;
    final difference =
        (_currentScroll +
            (MediaQuery.of(context).size.width / 2) -
            (_itemWidth / 2)) -
        itemPosition;
    final percent = (1 - (difference.abs() / _itemWidth)).clamp(0.0, 1.0);
    return 0.9 + (percent * 0.1); // scale between 0.9 and 1.0
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Trending Products', style: TextStyles.bold18Black),
        12.height,
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.27,
          child: ListView.builder(
            physics: BouncingScrollPhysics(),
            controller: _scrollController,
            scrollDirection: Axis.horizontal,
            itemCount: trendingProducts.length,
            itemBuilder: (context, index) {
              final scale = _calculateScale(index);
              return Transform.scale(
                scale: scale,
                child: SizedBox(
                  width: _itemWidth,
                  child: CustomTrendingProductItem(
                    productModel: trendingProducts[index],
                    isActive: scale > 0.98, // arbitrary active threshold
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

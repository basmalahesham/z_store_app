import 'package:flutter/material.dart';
import 'package:z_store_app/core/helper/space_extension.dart';
import 'package:z_store_app/features/home/presentation/views/widgets/all_products_list.dart';
import 'package:z_store_app/features/home/presentation/views/widgets/custom_all_products_widget.dart';
import 'package:z_store_app/features/home/presentation/views/widgets/custom_categories_widget.dart';
import 'package:z_store_app/features/home/presentation/views/widgets/custom_trending_products_widget.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                CustomCategoriesWidget(),
                12.height,
                CustomTrendingProductsWidget(),
                12.height,
                CustomAllProductsWidget(),
              ],
            ),
          ),
        ),
        AllProductsList(),
      ],
    );
  }
}

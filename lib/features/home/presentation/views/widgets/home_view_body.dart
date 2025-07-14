import 'package:flutter/material.dart';
import 'package:z_store_app/core/helper/space_extension.dart';
import 'package:z_store_app/features/home/presentation/views/widgets/all_products_sliver.dart';
import 'package:z_store_app/features/home/presentation/views/widgets/custom_all_products_widget.dart';
import 'package:z_store_app/features/home/presentation/views/widgets/custom_categories_widget.dart';
import 'package:z_store_app/features/home/presentation/views/widgets/custom_trending_products_widget.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  bool isGrid = false;

  void toggleView() {
    setState(() {
      isGrid = !isGrid;
    });
  }

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
                CustomAllProductsWidget(
                  isGrid: isGrid,
                  onToggleView: toggleView,
                ),
              ],
            ),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          sliver: AllProductsSliver(isGrid: isGrid),
        ),
      ],
    );
  }
}

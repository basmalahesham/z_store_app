import 'package:flutter/material.dart';
import 'package:z_store_app/features/home/data/models/trending_product_model.dart';
import 'package:z_store_app/features/home/presentation/views/widgets/all_product_grid_item.dart';

class AllProductsSliverGrid extends StatelessWidget {
  const AllProductsSliverGrid({super.key, required this.allProducts});

  final List<ProductModel> allProducts;

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      delegate: SliverChildBuilderDelegate(
        (context, index) =>
            AllProductGridItem(productModel: allProducts[index]),
        childCount: allProducts.length,
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 12,
        crossAxisSpacing: 12,
        childAspectRatio: 0.80,
      ),
    );
  }
}

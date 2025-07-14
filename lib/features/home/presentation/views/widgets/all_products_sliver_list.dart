import 'package:flutter/material.dart';
import 'package:z_store_app/features/home/data/models/trending_product_model.dart';
import 'package:z_store_app/features/home/presentation/views/widgets/all_product_list_item.dart';

class AllProductsSliverList extends StatelessWidget {
  const AllProductsSliverList({super.key, required this.allProducts});

  final List<ProductModel> allProducts;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) => AllProductListItem(productModel: allProducts[index]),
        childCount: allProducts.length,
      ),
    );
  }
}

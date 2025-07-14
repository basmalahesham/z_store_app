import 'package:flutter/material.dart';
import 'package:z_store_app/features/home/data/models/trending_product_model.dart';
import 'package:z_store_app/features/home/presentation/views/widgets/all_products_sliver_grid.dart';
import 'package:z_store_app/features/home/presentation/views/widgets/all_products_sliver_list.dart';
import 'package:z_store_app/generated/assets.dart';

class AllProductsSliver extends StatefulWidget {
  final bool isGrid;
  const AllProductsSliver({super.key, required this.isGrid});

  @override
  State<AllProductsSliver> createState() => _AllProductsSliverState();
}

class _AllProductsSliverState extends State<AllProductsSliver> {
  final List<ProductModel> allProducts = [
    ProductModel(
      imageUrl: Assets.imagesZGuard,
      title: 'Z-Guard',
      price: '89998',
      categoryName: 'Software Solution',
      description:
          'Advanced industrial control unit with I/O and security features',
    ),
    ProductModel(
      imageUrl: Assets.imagesZGuard,
      title: 'Z-Security',
      price: '2000',
      categoryName: 'Software Solution',
      description: 'Security device with real-time data monitoring and alerts',
    ),
    ProductModel(
      imageUrl: Assets.imagesZGuard,
      title: 'Z-Sensor',
      price: '1500',
      categoryName: 'Software Solution',
      description: 'IoT sensor for smart tracking and industrial automation',
    ),
    ProductModel(
      imageUrl: Assets.imagesZGuard,
      title: 'Personal Blog Test',
      price: '2500',
      categoryName: 'Software Solution',
      description: 'Personal blog to create video posts with multiple layouts',
    ),
    ProductModel(
      imageUrl: Assets.imagesZGuard,
      title: 'Z-Mini',
      price: '1200',
      categoryName: 'Software Solution',
      description:
          'Compact embedded solution for software development and prototyping',
    ),
    ProductModel(
      imageUrl: Assets.imagesZGuard,
      title: 'Z-Embedded Pro',
      price: '3300',
      categoryName: 'Software Solution',
      description:
          'Powerful embedded system with expansion and connectivity options',
    ),
    ProductModel(
      imageUrl: Assets.imagesZGuard,
      title: 'Z-Blog CMS',
      price: '2700',
      categoryName: 'Software Solution',
      description:
          'Content management system for managing personal blogs with ease',
    ),
    ProductModel(
      imageUrl: Assets.imagesZGuard,
      title: 'Z-Cloud Gateway',
      price: '4300',
      categoryName: 'Software Solution',
      description:
          'Edge device for connecting IoT solutions to cloud platforms',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return widget.isGrid
        ? AllProductsSliverGrid(allProducts: allProducts)
        : AllProductsSliverList(allProducts: allProducts);
  }
}

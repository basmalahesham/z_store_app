import 'package:flutter/material.dart';
import 'package:z_store_app/features/home/data/models/trending_product_model.dart';
import 'package:z_store_app/features/home/presentation/views/widgets/all_product_item.dart';
import 'package:z_store_app/generated/assets.dart';

class AllProductsList extends StatefulWidget {
  const AllProductsList({super.key});

  @override
  State<AllProductsList> createState() => _AllProductsListState();
}

class _AllProductsListState extends State<AllProductsList> {
  final List<ProductModel> allProducts = [
    ProductModel(
      imageUrl: Assets.imagesZGuard,
      title: 'Z-Guard',
      price: '89998',
      description:
          'Advanced industrial control unit with I/O and security features',
    ),
    ProductModel(
      imageUrl: Assets.imagesZGuard,
      title: 'Z-Security',
      price: '2000',
      description: 'Security device with real-time data monitoring and alerts',
    ),
    ProductModel(
      imageUrl: Assets.imagesZGuard,
      title: 'Z-Sensor',
      price: '1500',
      description: 'IoT sensor for smart tracking and industrial automation',
    ),
    ProductModel(
      imageUrl: Assets.imagesZGuard,
      title: 'Personal Blog Test',
      price: '2500',
      description: 'Personal blog to create video posts with multiple layouts',
    ),
    ProductModel(
      imageUrl: Assets.imagesZGuard,
      title: 'Z-Mini',
      price: '1200',
      description:
          'Compact embedded solution for software development and prototyping',
    ),
    ProductModel(
      imageUrl: Assets.imagesZGuard,
      title: 'Z-Embedded Pro',
      price: '3300',
      description:
          'Powerful embedded system with expansion and connectivity options',
    ),
    ProductModel(
      imageUrl: Assets.imagesZGuard,
      title: 'Z-Blog CMS',
      price: '2700',
      description:
          'Content management system for managing personal blogs with ease',
    ),
    ProductModel(
      imageUrl: Assets.imagesZGuard,
      title: 'Z-Cloud Gateway',
      price: '4300',
      description:
          'Edge device for connecting IoT solutions to cloud platforms',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      sliver: SliverList(
        delegate: SliverChildBuilderDelegate(
          (context, index) => AllProductItem(productModel: allProducts[index]),
          childCount: allProducts.length,
        ),
      ),
    );
  }
}

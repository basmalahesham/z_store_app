import 'package:flutter/material.dart';
import 'package:z_store_app/features/home/presentation/views/widgets/custom_categories_widget.dart';

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
              ],
            ),
          ),
        ),
      ],
    );
  }
}

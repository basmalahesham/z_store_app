import 'package:flutter/material.dart';
import 'package:z_store_app/core/theming/styles/text_styles.dart';

class CustomAllProductsWidget extends StatefulWidget {
  const CustomAllProductsWidget({super.key});

  @override
  State<CustomAllProductsWidget> createState() =>
      _CustomAllProductsWidgetState();
}

class _CustomAllProductsWidgetState extends State<CustomAllProductsWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('All Products', style: TextStyles.bold18Black),
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.filter_list),
                  color: Colors.black,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.grid_view),
                  color: Colors.black,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:z_store_app/core/theming/styles/text_styles.dart';

class CustomAllProductsWidget extends StatefulWidget {
  final bool isGrid;
  final VoidCallback onToggleView;

  const CustomAllProductsWidget({
    super.key,
    required this.isGrid,
    required this.onToggleView,
  });

  @override
  State<CustomAllProductsWidget> createState() =>
      _CustomAllProductsWidgetState();
}

class _CustomAllProductsWidgetState extends State<CustomAllProductsWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
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
              onPressed: widget.onToggleView,
              icon: Icon(widget.isGrid ? Icons.list : Icons.grid_view),
              color: Colors.black,
            ),
          ],
        ),
      ],
    );
  }
}

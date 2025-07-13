import 'package:flutter/material.dart';
import 'package:z_store_app/core/helper/space_extension.dart';
import 'package:z_store_app/core/theming/styles/text_styles.dart';
import 'package:z_store_app/core/widgets/custom_elevated_button.dart';

class CustomCategoriesWidget extends StatelessWidget {
  const CustomCategoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Categories', style: TextStyles.bold18Black),
        12.height,
        Row(
          children: [
            Expanded(
              child: CustomElevatedButton(
                onPressed: () {},
                text: 'All',
                style: TextStyle(color: Colors.white),
                padding: EdgeInsets.zero,
              ),
            ),
            10.width,
            Expanded(
              child: CustomElevatedButton(
                onPressed: () {},
                text: 'Software Solution',
                style: TextStyle(color: Colors.white),
                padding: EdgeInsets.zero,
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: CustomElevatedButton(
                onPressed: () {},
                text: 'IoT Solution',
                style: TextStyle(color: Colors.white),
                padding: EdgeInsets.zero,
              ),
            ),
            10.width,
            Expanded(
              child: CustomElevatedButton(
                onPressed: () {},
                text: 'Embedded Solution',
                style: TextStyle(color: Colors.white),
                padding: EdgeInsets.zero,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

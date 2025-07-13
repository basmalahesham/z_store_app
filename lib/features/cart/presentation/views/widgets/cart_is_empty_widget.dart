import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:z_store_app/core/theming/styles/text_styles.dart';
import 'package:z_store_app/core/widgets/custom_elevated_button.dart';

class CartIsEmptyWidget extends StatelessWidget {
  const CartIsEmptyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Cart is Empty', style: TextStyles.w500Gray15),
          CustomElevatedButton(
            onPressed: () {},
            minimumSize: Size(40.w, 36.h),
            text: 'Reload',
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}

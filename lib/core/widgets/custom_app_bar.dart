import 'package:flutter/material.dart';
import 'package:z_store_app/core/helper/space_extension.dart';
import 'package:z_store_app/core/theming/colors.dart';
import 'package:z_store_app/core/theming/styles/text_styles.dart';
import 'package:z_store_app/generated/assets.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key, required this.widget});
  final Widget widget;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: ColorsManager.kPrimaryColor,
      surfaceTintColor: ColorsManager.kPrimaryColor,
      elevation: 0,
      title: Row(
        children: [
          Image.asset(Assets.imagesLogo, height: 32),
          4.width,
          RichText(
            text: TextSpan(
              text: 'Powered By ',
              style: TextStyles.w300Black12,
              children: [
                TextSpan(text: 'ZAG', style: TextStyles.bold14Red),
                TextSpan(text: 'SYSTEMS', style: TextStyles.w400Gray14),
              ],
            ),
          ),
        ],
      ),
      actions:  [
        widget,
        10.width,
      ],
    );
  }
}

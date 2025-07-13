import 'package:flutter/material.dart';
import 'package:z_store_app/core/theming/styles/text_styles.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.style,
  });
  final void Function() onPressed;
  final String text;
  final TextStyle? style;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        padding: EdgeInsets.zero,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minimumSize: Size.zero,
      ),
      child: Text(text, style:style ?? TextStyles.w600Black12),
    );
  }
}

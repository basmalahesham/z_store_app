import 'package:flutter/material.dart';
import 'package:z_store_app/core/theming/colors.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    required this.onPressed,
    this.text,
    this.backgroundColor,
    this.minimumSize,
    this.style,
    this.child,
    this.padding,
    this.foregroundColor,
    this.elevation,
    this.side,
  });
  final void Function() onPressed;
  final String? text;
  final Color? backgroundColor;
  final Size? minimumSize;
  final TextStyle? style;
  final Widget? child;
  final EdgeInsetsGeometry? padding;
  final Color? foregroundColor;
  final double? elevation;
  final BorderSide? side;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: padding,
        side: side,
        elevation: elevation,
        minimumSize: minimumSize,
        foregroundColor: foregroundColor,
        backgroundColor: backgroundColor ?? (ColorsManager.kSecondaryColor),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
      onPressed: onPressed,
      child: child ?? Text(text!, textAlign: TextAlign.center, style: style),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:z_store_app/core/theming/colors.dart';

abstract class TextStyles {
  static TextStyle w300Black12 = GoogleFonts.poppins(
    color: Colors.black,
    fontSize: 12.sp,
    fontWeight: FontWeight.w300,
  );
  static TextStyle w600Black12 = GoogleFonts.poppins(
    color: Colors.black,
    fontSize: 12.sp,
    fontWeight: FontWeight.w600,
  );
  static TextStyle bold14Red = GoogleFonts.poppins(
    color: ColorsManager.kSecondaryColor,
    fontSize: 14.sp,
    fontWeight: FontWeight.bold,
  );
  static TextStyle w400Gray14 = GoogleFonts.poppins(
    color: Colors.grey,
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
  );
}

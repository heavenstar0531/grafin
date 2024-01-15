import 'package:flutter/material.dart';
import 'package:lens_new/core/theme/color_data.dart';

class AppColors {
  AppColors._();
  static Color primary = ColorData.primary;
  static Color primaryDark = ColorData.primary[600]!;
  static Color shadow = ColorData.primary[100]!;
  static Color border = ColorData.gray[300]!;
  static Color icon = ColorData.gray[500]!;
  static Color lensBackground = ColorData.grayBlue[100]!;
  static Color lensBorder = ColorData.gray[400]!;
  static Color error = ColorData.orangeDark[600]!;
  static Color errorShadow = ColorData.error[100]!;
}

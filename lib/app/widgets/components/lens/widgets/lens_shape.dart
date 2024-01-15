import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lens_new/core/extensions/common_lib.dart';
import 'package:lens_new/core/theme/app_colors.dart';
import 'package:lens_new/core/theme/app_text_style.dart';
import 'package:lens_new/core/theme/color_data.dart';
import 'package:lens_new/core/values/dimensions.dart';

class LensShape extends StatelessWidget {
  const LensShape({
    Key? key,
    required this.text,
    required this.lensSize,
  }) : super(key: key);

  final String text;
  final double lensSize;

  @override
  Widget build(BuildContext context) {
    bool isMiniLens = lensSize == CommonLib.miniLensSize;
    return Container(
      height: lensSize,
      width: lensSize,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: AppColors.lensBorder),
      ),
      child: Container(
        margin: const EdgeInsets.all(2),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isMiniLens ? Colors.white : AppColors.lensBackground,
        ),
        child: Center(
          child: Text(
            isMiniLens ? "" : text.tr,
            style: robotoMedium.copyWith(
              fontSize: Dimensions.fontSizeExtraSmall,
              color: ColorData.gray[900],
            ),
          ),
        ),
      ),
    );
  }
}

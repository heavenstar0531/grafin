import 'package:flutter/material.dart';
import 'package:lens_new/core/theme/app_colors.dart';
import 'package:lens_new/core/values/dimensions.dart';

class LeftRightBox extends StatelessWidget {
  final EdgeInsetsGeometry margin;
  const LeftRightBox({
    super.key,
    this.margin = const EdgeInsets.only(right: 8),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      margin: margin,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimensions.RADIUS_DEFAULT),
              border: Border.all(color: AppColors.border, width: 1),
            ),
            width: 40,
            height: 40,
            alignment: Alignment.center,
            child: const Text('R'),
          ),
          const SizedBox(height: 8),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimensions.RADIUS_DEFAULT),
              border: Border.all(color: AppColors.border, width: 1),
            ),
            width: 40,
            height: 40,
            alignment: Alignment.center,
            child: const Text('L'),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:lens_new/app/widgets/components/lens/controller/lens_controller.dart';
import 'package:lens_new/app/widgets/components/lens/widgets/mini_lens.dart';
import 'package:lens_new/core/theme/app_colors.dart';
import 'package:lens_new/core/theme/color_data.dart';
import 'package:lens_new/core/values/dimensions.dart';

enum LensComponentSize {
  normal,
  large,
}

class LensComponent extends StatefulWidget {
  final LensController controller;
  final String label;
  final LensComponentSize size;
  final void Function()? onTap;
  final TextEditingController? textController;
  const LensComponent({
    super.key,
    required this.label,
    required this.controller,
    this.onTap,
    this.textController,
    this.size = LensComponentSize.normal,
  });

  @override
  State<LensComponent> createState() => _LensComponentState();
}

class _LensComponentState extends State<LensComponent> {
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: (widget.size == LensComponentSize.normal) ? widget.onTap : () {},
        child: Container(
          padding: const EdgeInsets.all(6.5),
          decoration: BoxDecoration(
            color: ColorData.gray[50],
            borderRadius: BorderRadius.circular(Dimensions.RADIUS_LARGE),
            border: Border.all(color: AppColors.border),
          ),
          child: MiniLens(
            controller: widget.controller,
            label: widget.label,
            size: widget.size,
            textController: widget.textController,
          ),
        ),
      ),
    );
  }
}

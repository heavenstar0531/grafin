import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lens_new/app/widgets/custom_textfield.dart';
import 'package:lens_new/core/theme/app_colors.dart';
import 'package:lens_new/core/theme/app_shadow.dart';
import 'package:lens_new/core/values/dimensions.dart';
import 'package:lens_new/core/values/strings.dart';

class VertexFormGroup extends StatefulWidget {
  final TextEditingController rightVertexController;
  final TextEditingController leftVertexController;
  const VertexFormGroup({
    super.key,
    required this.rightVertexController,
    required this.leftVertexController,
  });

  @override
  State<VertexFormGroup> createState() => _VertexFormGroupState();
}

class _VertexFormGroupState extends State<VertexFormGroup> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(Dimensions.PADDING_SIZE_DEFAULT),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: AppColors.border, width: 1),
        borderRadius: BorderRadius.circular(Dimensions.RADIUS_DEFAULT),
      ),
      child: Column(
        children: [
          // Right Vertex Controller
          Container(
            height: 40,
            decoration: BoxDecoration(
              boxShadow: AppShadow.shadowXs,
              color: Colors.white,
              borderRadius: BorderRadius.circular(Dimensions.RADIUS_DEFAULT),
            ),
            child: CustomTextfield(
              controller: widget.rightVertexController,
              label: Strings.vertex.tr,
              hint: Strings.mmPostfix.tr,
              onChanged: (value) {},
            ),
          ),
          const SizedBox(height: 8),
          // Left Vertex Controller
          Container(
            height: 40,
            decoration: BoxDecoration(
              boxShadow: AppShadow.shadowXs,
              color: Colors.white,
              borderRadius: BorderRadius.circular(Dimensions.RADIUS_DEFAULT),
            ),
            child: CustomTextfield(
              controller: widget.leftVertexController,
              label: Strings.vertex.tr,
              hint: Strings.mmPostfix.tr,
              onChanged: (value) {},
            ),
          ),
        ],
      ),
    );
  }
}

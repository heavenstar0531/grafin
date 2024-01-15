import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lens_new/app/modules/rgp_lens_calculation/controllers/rgp_lens_calculation_controller.dart';
import 'package:lens_new/app/widgets/components/lens/lens_component.dart';
import 'package:lens_new/app/widgets/custom_textfield.dart';
import 'package:lens_new/core/theme/app_colors.dart';
import 'package:lens_new/core/theme/app_shadow.dart';
import 'package:lens_new/core/values/dimensions.dart';
import 'package:lens_new/core/values/strings.dart';

class LensRotationRadiusFormGroup extends StatefulWidget {
  final TextEditingController rightLensTextEditingController;
  final RightLensController rightLensController;
  final TextEditingController leftLensTextEditingController;
  final LeftLensController leftLensController;
  final void Function()? onTapLeftLens;
  final void Function()? onTapRightens;
  const LensRotationRadiusFormGroup({
    super.key,
    required this.rightLensController,
    required this.leftLensController,
    required this.rightLensTextEditingController,
    required this.leftLensTextEditingController,
    required this.onTapLeftLens,
    required this.onTapRightens,
  });

  @override
  State<LensRotationRadiusFormGroup> createState() => _LensRotationRadiusFormGroupState();
}

class _LensRotationRadiusFormGroupState extends State<LensRotationRadiusFormGroup> {
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
          // Right
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 40,
                  decoration: BoxDecoration(
                    boxShadow: AppShadow.shadowXs,
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(Dimensions.RADIUS_DEFAULT),
                  ),
                  child: CustomTextfield(
                    controller: widget.rightLensTextEditingController,
                    label: '${Strings.rotation.tr} ',
                    hint: Strings.degreePostfix.tr,
                    onChanged: (value) {
                      widget.rightLensController.saveRotation(value);
                      widget.rightLensController.setRotation();
                    },
                  ),
                ),
              ),
              const SizedBox(width: 8),
              LensComponent(
                label: Strings.r.tr,
                controller: widget.rightLensController,
                textController: widget.rightLensTextEditingController,
                onTap: widget.onTapRightens,
              ),
            ],
          ),
          const SizedBox(height: 8),
          // Left
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 40,
                  decoration: BoxDecoration(
                    boxShadow: AppShadow.shadowXs,
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(Dimensions.RADIUS_DEFAULT),
                  ),
                  child: CustomTextfield(
                    controller: widget.leftLensTextEditingController,
                    label: '${Strings.rotation.tr} ',
                    hint: Strings.degreePostfix.tr,
                    onChanged: (value) {
                      widget.leftLensController.saveRotation(value);
                      widget.leftLensController.setRotation();
                    },
                  ),
                ),
              ),
              const SizedBox(width: 8),
              LensComponent(
                label: Strings.l.tr,
                controller: widget.leftLensController,
                textController: widget.leftLensTextEditingController,
                onTap: widget.onTapLeftLens,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

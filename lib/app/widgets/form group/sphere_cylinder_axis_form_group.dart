import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lens_new/app/widgets/custom_textfield.dart';
import 'package:lens_new/core/theme/app_colors.dart';
import 'package:lens_new/core/theme/app_shadow.dart';
import 'package:lens_new/core/values/dimensions.dart';
import 'package:lens_new/core/values/strings.dart';
import 'package:lens_new/core/values/enum.dart';

class SphereCylinderAxisFormGroup extends StatefulWidget {
  final RxBool isRightSphereError;
  final RxBool isRightCylinderError;
  final RxBool isRightAxisError;
  final TextEditingController rightSphereController;
  final TextEditingController rightCylinderController;
  final TextEditingController rightAxisController;
  final RxBool isLeftSphereError;
  final RxBool isLeftCylinderError;
  final RxBool isLeftAxisError;
  final TextEditingController leftSphereController;
  final TextEditingController leftCylinderController;
  final TextEditingController leftAxisController;
  const SphereCylinderAxisFormGroup({
    super.key,
    required this.isRightSphereError,
    required this.isRightCylinderError,
    required this.isRightAxisError,
    required this.rightSphereController,
    required this.rightCylinderController,
    required this.rightAxisController,
    required this.isLeftSphereError,
    required this.isLeftCylinderError,
    required this.isLeftAxisError,
    required this.leftSphereController,
    required this.leftCylinderController,
    required this.leftAxisController,
  });

  @override
  State<SphereCylinderAxisFormGroup> createState() => _SphereCylinderAxisFormGroupState();
}

class _SphereCylinderAxisFormGroupState extends State<SphereCylinderAxisFormGroup> {
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
          //Right Lens
          Row(
            children: [
              // Contact Lens Right Sphere Controller
              Flexible(
                child: Container(
                  height: 40,
                  decoration: BoxDecoration(
                    boxShadow: AppShadow.shadowXs,
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(Dimensions.RADIUS_DEFAULT),
                  ),
                  child: Obx(
                    () => CustomTextfield(
                      isError: widget.isRightSphereError.value,
                      controller: widget.rightSphereController,
                      hint: Strings.dptPostfix.tr,
                      label: Strings.sphere.tr,
                      autoFormat: true,
                      type: InputType.base,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 8),
              // Contact Lens Right Cylinder Controller
              Flexible(
                child: Container(
                  height: 40,
                  decoration: BoxDecoration(
                    boxShadow: AppShadow.shadowXs,
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(Dimensions.RADIUS_DEFAULT),
                  ),
                  child: Obx(
                    () => CustomTextfield(
                      isError: widget.isRightCylinderError.value,
                      controller: widget.rightCylinderController,
                      hint: Strings.dptPostfix.tr,
                      label: Strings.cylinder.tr,
                      autoFormat: true,
                      type: InputType.base,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 8),
              // Contact Lens Right Axis Controller
              Flexible(
                child: Container(
                  height: 40,
                  decoration: BoxDecoration(
                    boxShadow: AppShadow.shadowXs,
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(Dimensions.RADIUS_DEFAULT),
                  ),
                  child: Obx(
                    () => CustomTextfield(
                      isError: widget.isRightAxisError.value,
                      controller: widget.rightAxisController,
                      hint: Strings.degreePostfix.tr,
                      label: Strings.axis.tr,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          //Left Lens
          Row(
            children: [
              // Contact Lens Left Sphere Controller
              Flexible(
                child: Container(
                  height: 40,
                  decoration: BoxDecoration(
                    boxShadow: AppShadow.shadowXs,
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(Dimensions.RADIUS_DEFAULT),
                  ),
                  child: Obx(
                    () => CustomTextfield(
                      isError: widget.isLeftSphereError.value,
                      controller: widget.leftSphereController,
                      hint: Strings.dptPostfix.tr,
                      label: Strings.sphere.tr,
                      autoFormat: true,
                      type: InputType.base,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 8),
              // Contact Lens Left Cylinder Controller
              Flexible(
                child: Container(
                  height: 40,
                  decoration: BoxDecoration(
                    boxShadow: AppShadow.shadowXs,
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(Dimensions.RADIUS_DEFAULT),
                  ),
                  child: Obx(
                    () => CustomTextfield(
                      isError: widget.isLeftCylinderError.value,
                      controller: widget.leftCylinderController,
                      hint: Strings.dptPostfix.tr,
                      label: Strings.cylinder.tr,
                      autoFormat: true,
                      type: InputType.base,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 8),
              // Contact Lens Left Axis Controller
              Flexible(
                child: Container(
                  height: 40,
                  decoration: BoxDecoration(
                    boxShadow: AppShadow.shadowXs,
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(Dimensions.RADIUS_DEFAULT),
                  ),
                  child: Obx(
                    () => CustomTextfield(
                      isError: widget.isLeftAxisError.value,
                      controller: widget.leftAxisController,
                      label: Strings.axis.tr,
                      hint: Strings.degreePostfix.tr,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lens_new/app/data/databases/collections/material_collection/material_collection.dart';
import 'package:lens_new/app/widgets/custom_dropdown.dart';
import 'package:lens_new/app/widgets/custom_textfield.dart';
import 'package:lens_new/calculations/helper/materials.dart';
import 'package:lens_new/calculations/models/lens_material.dart';
import 'package:lens_new/core/theme/app_colors.dart';
import 'package:lens_new/core/theme/app_shadow.dart';
import 'package:lens_new/core/values/dimensions.dart';
import 'package:lens_new/core/values/strings.dart';
import 'package:lens_new/core/values/enum.dart';

class RadiusFormGroup extends StatefulWidget {
  // right
  final RxBool isRightRadiusOneError;
  final RxBool isRightRadiusTwoError;
  final TextEditingController rightRadiusOneController;
  final TextEditingController rightRadiusTwoController;
  final MaterialCollection rightMaterialValue;
  final Function(MaterialCollection?)? onRightMaterialChanged;
  final List<MaterialCollection> materialCollection;

  // left
  final RxBool isLeftRadiusOneError;
  final RxBool isLeftRadiusTwoError;
  final TextEditingController leftRadiusOneController;
  final TextEditingController leftRadiusTwoController;
  final MaterialCollection leftMaterialValue;
  final Function(MaterialCollection?)? onLeftMaterialChanged;

  const RadiusFormGroup({
    super.key,
    required this.materialCollection,
    required this.isRightRadiusOneError,
    required this.isRightRadiusTwoError,
    required this.rightRadiusOneController,
    required this.rightRadiusTwoController,
    required this.isLeftRadiusOneError,
    required this.isLeftRadiusTwoError,
    required this.leftRadiusOneController,
    required this.leftRadiusTwoController,
    required this.rightMaterialValue,
    required this.leftMaterialValue,
    required this.onLeftMaterialChanged,
    required this.onRightMaterialChanged,
  });

  @override
  State<RadiusFormGroup> createState() => _RadiusFormGroupState();
}

class _RadiusFormGroupState extends State<RadiusFormGroup> {
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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Contact Lens Right Radius One Controller
              Flexible(
                flex: 4,
                child: Container(
                  height: 40,
                  decoration: BoxDecoration(
                    boxShadow: AppShadow.shadowXs,
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(Dimensions.RADIUS_DEFAULT),
                  ),
                  child: Obx(
                    () => CustomTextfield(
                      isError: widget.isRightRadiusOneError.value,
                      controller: widget.rightRadiusOneController,
                      label: Strings.radius1.tr,
                      hint: Strings.mmPostfix.tr,
                      autoFormat: true,
                      type: InputType.radius,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 8),
              // Contact Lens Right Radius Two Controller
              Flexible(
                flex: 4,
                child: Container(
                  height: 40,
                  decoration: BoxDecoration(
                    boxShadow: AppShadow.shadowXs,
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(Dimensions.RADIUS_DEFAULT),
                  ),
                  child: Obx(
                    () => CustomTextfield(
                      isError: widget.isRightRadiusTwoError.value,
                      controller: widget.rightRadiusTwoController,
                      label: Strings.radius2.tr,
                      hint: Strings.mmPostfix.tr,
                      autoFormat: true,
                      type: InputType.radius,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 8),
              // Contact Lens Right Material
              Expanded(
                flex: 7,
                child: Container(
                  height: 40,
                  decoration: BoxDecoration(
                    boxShadow: AppShadow.shadowXs,
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(Dimensions.RADIUS_DEFAULT),
                  ),
                  child: CustomDropdown<MaterialCollection>(
                    onChanged: widget.onRightMaterialChanged,
                    value: widget.rightMaterialValue,
                    buttonHeight: 40,
                    items: List.generate(
                      widget.materialCollection.length,
                      (index) => DropdownMenuItem<MaterialCollection>(
                        value: widget.materialCollection[index],
                        child: Text(
                          widget.materialCollection[index].name.toString(),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          // Left
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Contact Lens Left Radius One Controller
              Flexible(
                flex: 4,
                child: Container(
                  height: 40,
                  decoration: BoxDecoration(
                    boxShadow: AppShadow.shadowXs,
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(Dimensions.RADIUS_DEFAULT),
                  ),
                  child: Obx(
                    () => CustomTextfield(
                      isError: widget.isLeftRadiusOneError.value,
                      controller: widget.leftRadiusOneController,
                      label: Strings.radius1.tr,
                      hint: Strings.mmPostfix.tr,
                      autoFormat: true,
                      type: InputType.radius,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 8),
              // Contact Lens Left Radius Two Controller
              Flexible(
                flex: 4,
                child: Container(
                  height: 40,
                  decoration: BoxDecoration(
                    boxShadow: AppShadow.shadowXs,
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(Dimensions.RADIUS_DEFAULT),
                  ),
                  child: Obx(
                    () => CustomTextfield(
                      isError: widget.isLeftRadiusTwoError.value,
                      controller: widget.leftRadiusTwoController,
                      label: Strings.radius2.tr,
                      hint: Strings.mmPostfix.tr,
                      autoFormat: true,
                      type: InputType.radius,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 8),
              // Contact Lens Left Material
              Expanded(
                flex: 7,
                child: Container(
                  height: 40,
                  decoration: BoxDecoration(
                    boxShadow: AppShadow.shadowXs,
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(Dimensions.RADIUS_DEFAULT),
                  ),
                  child: CustomDropdown<MaterialCollection>(
                    onChanged: widget.onLeftMaterialChanged,
                    value: widget.leftMaterialValue,
                    buttonHeight: 40,
                    items: List.generate(
                      widget.materialCollection.length,
                      (index) => DropdownMenuItem<MaterialCollection>(
                        value: widget.materialCollection[index],
                        child: Text(
                          widget.materialCollection[index].name.toString(),
                        ),
                      ),
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

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lens_new/app/widgets/custom_dropdown.dart';
import 'package:lens_new/app/widgets/custom_textfield.dart';
import 'package:lens_new/calculations/helper/materials.dart';
import 'package:lens_new/calculations/models/lens_material.dart';
import 'package:lens_new/calculations/models/rgp_lens_output.dart';
import 'package:lens_new/core/theme/app_colors.dart';
import 'package:lens_new/core/theme/app_shadow.dart';
import 'package:lens_new/core/values/dimensions.dart';
import 'package:lens_new/core/values/strings.dart';

class ContactLensResult extends StatefulWidget {
  final String? newLeftRadiusOne;
  final String? newLeftRadiusTwo;
  final LensMaterial? newLeftMaterial;
  final String? newRightRadiusOne;
  final String? newRightRadiusTwo;
  final LensMaterial? newRightMaterial;
  final RGPLensOutput? outputLeftEye;
  final RGPLensOutput? outputRightEye;

  const ContactLensResult({
    super.key,
    this.outputLeftEye,
    this.outputRightEye,
    this.newLeftRadiusOne,
    this.newLeftRadiusTwo,
    this.newLeftMaterial,
    this.newRightRadiusOne,
    this.newRightRadiusTwo,
    this.newRightMaterial,
  });

  @override
  State<ContactLensResult> createState() => _ContactLensResultState();
}

class _ContactLensResultState extends State<ContactLensResult> {
  bool checkLeftEyeNewParam() {
    return (widget.newLeftRadiusOne != null && widget.newLeftRadiusTwo != null && widget.newLeftMaterial != null);
  }

  bool checkRightEyeNewParam() {
    return (widget.newRightRadiusOne != null && widget.newRightRadiusTwo != null && widget.newRightMaterial != null);
  }

  @override
  Widget build(BuildContext context) {
    print(checkLeftEyeNewParam());
    return Row(
      children: [
        // LR Box Widget
        Container(
          width: 40,
          margin: const EdgeInsets.only(right: 8),
          child: Column(
            children: [
              Visibility(
                visible: (widget.outputRightEye != null),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.RADIUS_DEFAULT),
                    border: Border.all(color: AppColors.border, width: 1),
                  ),
                  width: 40,
                  height: 40,
                  alignment: Alignment.center,
                  child: const Text('R'),
                ),
              ),
              Visibility(
                visible: (widget.outputLeftEye != null && widget.outputRightEye != null),
                child: const SizedBox(height: 8),
              ),
              Visibility(
                visible: (widget.outputLeftEye != null),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.RADIUS_DEFAULT),
                    border: Border.all(color: AppColors.border, width: 1),
                  ),
                  width: 40,
                  height: 40,
                  alignment: Alignment.center,
                  child: const Text('L'),
                ),
              ),
            ],
          ),
        ),
        // Contact Lens Form
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(Dimensions.PADDING_SIZE_DEFAULT),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: AppColors.border, width: 1),
              borderRadius: BorderRadius.circular(Dimensions.RADIUS_DEFAULT),
            ),
            child: Column(
              children: [
                //Right Lens
                Visibility(
                  visible: (widget.outputRightEye != null),
                  child: Row(
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
                          child: CustomTextfield(
                            controller: TextEditingController(text: widget.outputRightEye?.eyeFormattedSphere),
                            hint: Strings.dptPostfix.tr,
                            label: Strings.sphere.tr,
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
                          child: CustomTextfield(
                            controller: TextEditingController(text: widget.outputRightEye?.eyeFormattedCylinder),
                            hint: Strings.dptPostfix.tr,
                            label: Strings.cylinder.tr,
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
                          child: CustomTextfield(
                            controller: TextEditingController(text: widget.outputRightEye?.eyeFormattedAxis),
                            hint: Strings.degreePostfix.tr,
                            label: Strings.axis.tr,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Visibility(
                  visible: (widget.outputRightEye != null && widget.outputLeftEye != null),
                  child: const SizedBox(height: 8),
                ),
                //Left Lens
                Visibility(
                  visible: (widget.outputLeftEye != null),
                  child: Row(
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
                          child: CustomTextfield(
                            controller: TextEditingController(text: widget.outputLeftEye?.eyeFormattedSphere),
                            hint: Strings.dptPostfix.tr,
                            label: Strings.sphere.tr,
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
                          child: CustomTextfield(
                            controller: TextEditingController(text: widget.outputLeftEye?.eyeFormattedCylinder),
                            hint: Strings.dptPostfix.tr,
                            label: Strings.cylinder.tr,
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
                          child: CustomTextfield(
                            controller: TextEditingController(text: widget.outputLeftEye?.eyeFormattedAxis),
                            label: Strings.axis.tr,
                            hint: Strings.degreePostfix.tr,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(width: 16),
        // Radius Param
        Visibility(
          visible: (checkRightEyeNewParam() || checkLeftEyeNewParam()),
          child: Expanded(
            child: Container(
              padding: const EdgeInsets.all(Dimensions.PADDING_SIZE_DEFAULT),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: AppColors.border, width: 1),
                borderRadius: BorderRadius.circular(Dimensions.RADIUS_DEFAULT),
              ),
              child: Column(
                children: [
                  // Right
                  Visibility(
                    visible: checkRightEyeNewParam(),
                    child: Row(
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
                            child: CustomTextfield(
                              controller: TextEditingController(),
                              label: Strings.radius1.tr,
                              hint: Strings.mmPostfix.tr,
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
                            child: CustomTextfield(
                              controller: TextEditingController(),
                              label: Strings.radius2.tr,
                              hint: Strings.mmPostfix.tr,
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),
                        // Contact Lens Right Material
                        Flexible(
                          flex: 6,
                          child: Container(
                            height: 40,
                            decoration: BoxDecoration(
                              boxShadow: AppShadow.shadowXs,
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(Dimensions.RADIUS_DEFAULT),
                            ),
                            child: CustomDropdown<LensMaterial>(
                              onChanged: (value) {},
                              value: Materials.materialsGPCL.first,
                              buttonHeight: 40,
                              items: List.generate(
                                Materials.materialsGPCL.length,
                                (index) => DropdownMenuItem<LensMaterial>(
                                  value: Materials.materialsGPCL[index],
                                  child: Text(
                                    Materials.materialsGPCL[index].name.toString(),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Visibility(
                    visible: (checkRightEyeNewParam() && checkLeftEyeNewParam()),
                    child: const SizedBox(height: 8),
                  ),
                  // Left
                  Visibility(
                    visible: checkLeftEyeNewParam(),
                    child: Row(
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
                            child: CustomTextfield(
                              controller: TextEditingController(),
                              label: Strings.radius1.tr,
                              hint: Strings.mmPostfix.tr,
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
                            child: CustomTextfield(
                              controller: TextEditingController(),
                              label: Strings.radius2.tr,
                              hint: Strings.mmPostfix.tr,
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),
                        // Contact Lens Left Material
                        Flexible(
                          flex: 6,
                          child: Container(
                            height: 40,
                            decoration: BoxDecoration(
                              boxShadow: AppShadow.shadowXs,
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(Dimensions.RADIUS_DEFAULT),
                            ),
                            child: CustomDropdown<LensMaterial>(
                              onChanged: (value) {},
                              value: Materials.materialsGPCL.first,
                              buttonHeight: 40,
                              items: List.generate(
                                Materials.materialsGPCL.length,
                                (index) => DropdownMenuItem<LensMaterial>(
                                  value: Materials.materialsGPCL[index],
                                  child: Text(
                                    Materials.materialsGPCL[index].name.toString(),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

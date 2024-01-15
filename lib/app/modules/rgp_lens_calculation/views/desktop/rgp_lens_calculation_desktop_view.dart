import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lens_new/app/widgets/components/appbar/appbar_component.dart';
import 'package:lens_new/app/widgets/components/lens/lens_component.dart';
import 'package:lens_new/app/widgets/components/sidebar/sidebar.dart';
import 'package:lens_new/app/widgets/contact_lens_result.dart';
import 'package:lens_new/app/widgets/custom_button.dart';
import 'package:lens_new/app/widgets/custom_textfield.dart';
import 'package:lens_new/app/widgets/error_alert.dart';
import 'package:lens_new/app/widgets/form%20group/lens_rotation_radius_form_group.dart';
import 'package:lens_new/app/widgets/form%20group/radius_form_group.dart';
import 'package:lens_new/app/widgets/form%20group/sphere_cylinder_axis_form_group.dart';
import 'package:lens_new/app/widgets/form%20group/vertex_form_group.dart';
import 'package:lens_new/app/widgets/left_right_box.dart';
import 'package:lens_new/core/theme/app_colors.dart';
import 'package:lens_new/core/theme/app_shadow.dart';
import 'package:lens_new/core/theme/app_text_style.dart';
import 'package:lens_new/core/theme/color_data.dart';
import 'package:lens_new/core/values/dimensions.dart';
import 'package:lens_new/core/values/enum.dart';
import 'package:lens_new/core/values/strings.dart';

import '../../controllers/rgp_lens_calculation_controller.dart';

class RgpLensCalculationDesktopView extends GetView<RgpLensCalculationController> {
  const RgpLensCalculationDesktopView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        if (controller.state.value == ViewState.loaded) {
          return loaded(context);
        } else {
          return Scaffold(
            body: Text('er'),
          );
        }
      },
    );
  }

  Widget loaded(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Sidebar(),
          // Sidebar
          VerticalDivider(
            color: AppColors.border,
            width: 0,
          ),
          // Main Container
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              shrinkWrap: true,
              children: [
                AppbarComponent(title: Strings.rgpLensCalculation.tr),
                const SizedBox(height: 16),
                // RGP Lens Calculation Row ( TOP )
                Row(
                  children: [
                    // Left Right Box
                    const LeftRightBox(),
                    // Contact Lens Form
                    Expanded(
                      flex: 5,
                      child: SphereCylinderAxisFormGroup(
                        isRightSphereError: controller.isContactLensRightSphereError,
                        isRightCylinderError: controller.isContactLensRightCylinderError,
                        isRightAxisError: controller.isContactLensRightAxisError,
                        rightSphereController: controller.contactLensRightSphereController,
                        rightCylinderController: controller.contactLensRightCylinderController,
                        rightAxisController: controller.contactLensRightAxisController,
                        isLeftSphereError: controller.isContactLensLeftSphereError,
                        isLeftCylinderError: controller.isContactLensLeftCylinderError,
                        isLeftAxisError: controller.isContactLensLeftAxisError,
                        leftSphereController: controller.contactLensLeftSphereController,
                        leftCylinderController: controller.contactLensLeftCylinderController,
                        leftAxisController: controller.contactLensLeftAxisController,
                      ),
                    ),
                    const SizedBox(width: 16),
                    // Contact Lens Radius
                    Expanded(
                      flex: 7,
                      child: RadiusFormGroup(
                        isRightRadiusOneError: controller.isContactLensRightRadiusOneError,
                        isRightRadiusTwoError: controller.isContactLensRightRadiusTwoError,
                        rightRadiusOneController: controller.contactLensRightRadiusOneController,
                        rightRadiusTwoController: controller.contactLensRightRadiusTwoController,
                        isLeftRadiusOneError: controller.isContactLensLeftRadiusOneError,
                        isLeftRadiusTwoError: controller.isContactLensLeftRadiusTwoError,
                        leftRadiusOneController: controller.contactLensLeftRadiusOneController,
                        leftRadiusTwoController: controller.contactLensLeftRadiusTwoController,
                        rightMaterialValue: controller.contactLensRightEyeMaterial.value!,
                        leftMaterialValue: controller.contactLensLeftEyeMaterial.value!,
                        onLeftMaterialChanged: (value) {
                          if (value != null) controller.contactLensLeftEyeMaterial.value = value;
                        },
                        onRightMaterialChanged: (value) {
                          if (value != null) controller.contactLensRightEyeMaterial.value = value;
                        },
                        materialCollection: controller.materialCollection,
                      ),
                    ),
                    const SizedBox(width: 16),
                    // Contact Lens ROtation Radius
                    Flexible(
                      flex: 2,
                      child: LensRotationRadiusFormGroup(
                        rightLensController: controller.rightLensController,
                        leftLensController: controller.leftLensController,
                        rightLensTextEditingController: controller.rightLensTextEditingController,
                        leftLensTextEditingController: controller.leftLensTextEditingController,
                        onTapLeftLens: () {
                          showRotationDialog(context: context);
                        },
                        onTapRightens: () {
                          showRotationDialog(context: context);
                        },
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                // Over Refraction and New Lens Parameter ( BOTTOM )
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //header
                    Container(
                      margin: const EdgeInsets.only(bottom: 16),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 5,
                            child: Text(
                              Strings.overRefraction.tr,
                              style: robotoMedium.copyWith(
                                color: ColorData.gray[900],
                                fontSize: Dimensions.fontSizeExtraLarge,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 5,
                            child: Text(
                              Strings.overRefraction.tr,
                              style: robotoMedium.copyWith(
                                color: ColorData.gray[900],
                                fontSize: Dimensions.fontSizeExtraLarge,
                              ),
                            ),
                          ),
                          const Expanded(
                            flex: 2,
                            child: SizedBox(),
                          )
                        ],
                      ),
                    ),
                    //content
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // Left Right Box
                        const LeftRightBox(),
                        // Over Refraction
                        Expanded(
                          flex: 5,
                          child: SphereCylinderAxisFormGroup(
                            isRightSphereError: controller.isNewContactLensRightSphereError,
                            isRightCylinderError: controller.isNewContactLensRightCylinderError,
                            isRightAxisError: controller.isNewContactLensRightAxisError,
                            rightSphereController: controller.newContactLensRightSphereController,
                            rightCylinderController: controller.newContactLensRightCylinderController,
                            rightAxisController: controller.newContactLensRightAxisController,
                            isLeftSphereError: controller.isNewContactLensLeftSphereError,
                            isLeftCylinderError: controller.isNewContactLensLeftCylinderError,
                            isLeftAxisError: controller.isNewContactLensLeftAxisError,
                            leftSphereController: controller.newContactLensLeftSphereController,
                            leftCylinderController: controller.newContactLensLeftCylinderController,
                            leftAxisController: controller.newContactLensLeftAxisController,
                          ),
                        ),
                        const SizedBox(width: 16),
                        // New Lens Parameter
                        Expanded(
                          flex: 7,
                          child: RadiusFormGroup(
                            isRightRadiusOneError: controller.isNewContactLensRightRadiusOneError,
                            isRightRadiusTwoError: controller.isNewContactLensRightRadiusTwoError,
                            rightRadiusOneController: controller.newContactLensRightRadiusOneController,
                            rightRadiusTwoController: controller.newContactLensRightRadiusTwoController,
                            isLeftRadiusOneError: controller.isNewContactLensLeftRadiusOneError,
                            isLeftRadiusTwoError: controller.isNewContactLensLeftRadiusTwoError,
                            leftRadiusOneController: controller.newContactLensLeftRadiusOneController,
                            leftRadiusTwoController: controller.newContactLensLeftRadiusTwoController,
                            rightMaterialValue: controller.newContactLensRightEyeMaterial.value!,
                            leftMaterialValue: controller.newContactLensLeftEyeMaterial.value!,
                            onLeftMaterialChanged: (value) {
                              if (value != null) controller.newContactLensLeftEyeMaterial.value = value;
                            },
                            onRightMaterialChanged: (value) {
                              if (value != null) controller.newContactLensRightEyeMaterial.value = value;
                            },
                            materialCollection: controller.materialCollection,
                          ),
                        ),
                        const SizedBox(width: 16),
                        // Vertex
                        Expanded(
                          flex: 2,
                          child: VertexFormGroup(
                            rightVertexController: controller.rightVertexController,
                            leftVertexController: controller.leftVertexController,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

                // Calculate Button
                Container(
                  margin: const EdgeInsets.only(top: 20, bottom: 4),
                  child: Row(
                    children: [
                      SizedBox(
                        height: 36,
                        child: CustomElevatedButton(
                          onPressed: () {
                            controller.calculateRGPLens();
                          },
                          child: Text(Strings.calculate.tr),
                        ),
                      ),
                      const SizedBox(width: 16),
                      SizedBox(
                        height: 36,
                        child: CustomOutlineButton(
                          onPressed: () {
                            // clear
                            controller.clearForm();
                          },
                          child: Text(Strings.clear.tr),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 8),
                  child: Divider(color: AppColors.border, thickness: 1),
                ),
                Obx(
                  () => Visibility(
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: controller.listError.length,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) => ErrorAlert(data: controller.listError[index]),
                    ),
                  ),
                ),
                Obx(
                  () => Visibility(
                    visible: (controller.outputRightEye.value != null || controller.outputLeftEye.value != null),
                    child: ContactLensResult(
                      outputLeftEye: controller.outputLeftEye.value,
                      outputRightEye: controller.outputRightEye.value,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  void showRotationDialog({
    required BuildContext context,
  }) {
    controller.initModalLensData();
    Dialog dialog = Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Dimensions.RADIUS_LARGE),
      ),
      child: Container(
        width: 480,
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Flexible(
                  flex: 4,
                  child: Container(
                    padding: const EdgeInsets.all(Dimensions.PADDING_SIZE_DEFAULT),
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColors.border, width: 1),
                      borderRadius: BorderRadius.circular(Dimensions.RADIUS_DEFAULT),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Rotation',
                          style: TextStyle(
                            color: ColorData.gray[700],
                          ),
                        ),
                        const SizedBox(height: 8),
                        Container(
                          height: 40,
                          decoration: BoxDecoration(
                            boxShadow: AppShadow.shadowXs,
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(Dimensions.RADIUS_DEFAULT),
                          ),
                          child: CustomTextfield(
                            controller: controller.modalRightLensTextEditingController,
                            label: Strings.radius1.tr,
                            hint: Strings.mmPostfix.tr,
                            onChanged: (value) {
                              controller.modalRightLensController.saveRotation(value);
                              controller.modalRightLensController.setRotation();
                            },
                          ),
                        ),
                        const SizedBox(height: 8),
                        Container(
                          height: 40,
                          decoration: BoxDecoration(
                            boxShadow: AppShadow.shadowXs,
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(Dimensions.RADIUS_DEFAULT),
                          ),
                          child: CustomTextfield(
                            controller: controller.modalLeftLensTextEditingController,
                            label: Strings.radius2.tr,
                            hint: Strings.mmPostfix.tr,
                            onChanged: (value) {
                              controller.modalLeftLensController.saveRotation(value);
                              controller.modalLeftLensController.setRotation();
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Flexible(
                  flex: 8,
                  child: Container(
                    padding: const EdgeInsets.all(Dimensions.PADDING_SIZE_DEFAULT),
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColors.border, width: 1),
                      borderRadius: BorderRadius.circular(Dimensions.RADIUS_DEFAULT),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        LensComponent(
                          label: Strings.r.tr,
                          controller: controller.modalRightLensController,
                          textController: controller.modalRightLensTextEditingController,
                          size: LensComponentSize.large,
                          onTap: () {
                            showRotationDialog(context: context);
                          },
                        ),
                        const SizedBox(width: 16),
                        LensComponent(
                          label: Strings.l.tr,
                          controller: controller.modalLeftLensController,
                          textController: controller.modalLeftLensTextEditingController,
                          size: LensComponentSize.large,
                          onTap: () {
                            showRotationDialog(context: context);
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                  child: SizedBox(
                    height: 40,
                    child: CustomOutlineButton(
                      onPressed: () {
                        controller.disposeModalLensData();
                        Get.back();
                      },
                      child: const Text('Cancel'),
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: SizedBox(
                    height: 40,
                    child: CustomElevatedButton(
                      onPressed: () {
                        controller.saveModalLensData();
                        Get.back();
                      },
                      child: const Text('Apply'),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );

    showDialog(
      context: context,
      builder: (context) => dialog,
    );
  }
}

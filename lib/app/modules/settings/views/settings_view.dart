import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lens_new/app/data/databases/storages/settings_storage/settings_storage_data.dart';
import 'package:lens_new/app/widgets/button_group.dart';
import 'package:lens_new/app/widgets/components/sidebar/sidebar.dart';
import 'package:lens_new/app/widgets/custom_dropdown.dart';
import 'package:lens_new/core/values/dimensions.dart';
import 'package:lens_new/core/values/strings.dart';
import 'package:lens_new/core/theme/app_colors.dart';
import 'package:lens_new/core/theme/app_text_style.dart';
import 'package:lens_new/core/theme/color_data.dart';

import '../controllers/settings_controller.dart';

class SettingsView extends GetView<SettingsController> {
  Widget textBox(String text) {
    return SizedBox(
      width: 160,
      child: Text(text.tr),
    );
  }

  Widget desktopWidget() {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Sidebar(),
          VerticalDivider(
            color: AppColors.border,
            width: 0,
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              shrinkWrap: true,
              children: [
                Container(
                  margin: const EdgeInsets.only(
                    top: 32,
                    bottom: 24,
                  ),
                  child: Text(
                    Strings.settings.tr,
                    style: robotoMedium.copyWith(
                      color: ColorData.gray[900],
                      fontSize: Dimensions.fontSizeSuperLarge,
                    ),
                  ),
                ),
                const Divider(),
                const SizedBox(
                  height: 32,
                ),
                Row(
                  children: [
                    textBox(Strings.language),
                    Obx(
                      () => CustomDropdown<String>(
                        buttonWidth: 140,
                        onChanged: (value) {
                          if (value != null) controller.setSelectedLanguage(value);
                        },
                        value: controller.selectedLanguage.value,
                        items: List.generate(
                          Strings.languages.length,
                          (index) => DropdownMenuItem<String>(
                            value: Strings.languages[index],
                            child: Text(
                              Strings.languages[index].tr,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    textBox(Strings.lensNotation),
                    Obx(
                      () => CustomDropdown<String>(
                        buttonWidth: 180,
                        onChanged: (value) {
                          if (value != null) controller.setSelectedLensNotation(value);
                        },
                        value: controller.selectedLensNotation.value,
                        items: List.generate(
                          Strings.lensNotations.length,
                          (index) => DropdownMenuItem<String>(
                            value: Strings.lensNotations[index],
                            child: Text(
                              Strings.lensNotations[index].tr,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    textBox(Strings.materialDistributor),
                    Obx(
                      () => CustomDropdown<String>(
                        buttonWidth: 280,
                        onChanged: (value) {
                          if (value != null) {
                            controller.updateSelectedMaterialDistributor(value);
                          }
                        },
                        itemPadding: EdgeInsets.zero,
                        selectedItemHighlightColor: Colors.white,
                        hint: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Obx(
                            () => Text(
                              (controller.selectedMaterialDistributor.isEmpty)
                                  ? 'Select Distributor'
                                  : controller.selectedMaterialDistributor.join(', '),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        selectedItemBuilder: (context) {
                          return controller.materialDistributors.map(
                            (item) {
                              return Container(
                                alignment: AlignmentDirectional.centerStart,
                                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                                child: Text(
                                  controller.selectedMaterialDistributor.join(', '),
                                  style: const TextStyle(
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  maxLines: 1,
                                ),
                              );
                            },
                          ).toList();
                        },
                        items: List.generate(
                          controller.materialDistributors.length,
                          (index) => DropdownMenuItem<String>(
                            value: controller.materialDistributors[index].name,
                            child: Container(
                              width: 280,
                              height: 48,
                              alignment: Alignment.centerLeft,
                              padding: const EdgeInsets.symmetric(horizontal: 16),
                              decoration: BoxDecoration(
                                color: (controller.checkSelectedMaterialDistributor(controller.materialDistributors[index].name!))
                                    ? AppColors.border
                                    : Colors.transparent,
                                border: Border.symmetric(
                                  vertical: BorderSide(color: AppColors.border, width: 1),
                                ),
                              ),
                              child: Text(
                                controller.materialDistributors[index].name!,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    textBox(Strings.lensRounding),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: Dimensions.PADDING_SIZE_SMALL,
                      ),
                      child: Obx(
                        () => ButtonGroup<String>(
                          selectedValue: controller.selectedRounding.value,
                          items: List.generate(
                            SettingsStorageData.roundingList.length,
                            (index) => ButtomGroupItem(
                              widget: Text(SettingsStorageData.roundingList[index]),
                              value: SettingsStorageData.roundingList[index],
                              onTap: () {
                                controller.setSelectedRounding(SettingsStorageData.roundingList[index]);
                              },
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    textBox(Strings.keratometryUnit),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: Dimensions.PADDING_SIZE_SMALL,
                      ),
                      child: Obx(
                        () => ButtonGroup<String>(
                          selectedValue: controller.selectedKeratometry.value,
                          items: List.generate(
                            SettingsStorageData.lensUnits.length,
                            (index) => ButtomGroupItem(
                              widget: Text(SettingsStorageData.lensUnits[index]),
                              value: SettingsStorageData.lensUnits[index],
                              onTap: () {
                                controller.setSelectedKeratometry(SettingsStorageData.lensUnits[index]);
                              },
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    textBox(Strings.contactLensUnit),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: Dimensions.PADDING_SIZE_SMALL,
                      ),
                      child: Obx(
                        () => ButtonGroup<String>(
                          selectedValue: controller.selectedContactLens.value,
                          items: List.generate(
                            SettingsStorageData.lensUnits.length,
                            (index) => ButtomGroupItem(
                              widget: Text(SettingsStorageData.lensUnits[index]),
                              value: SettingsStorageData.lensUnits[index],
                              onTap: () {
                                controller.setSelectedContactLens(SettingsStorageData.lensUnits[index]);
                              },
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  const SettingsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return desktopWidget();
  }
}

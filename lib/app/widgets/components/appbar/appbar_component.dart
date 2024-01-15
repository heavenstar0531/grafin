import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:lens_new/app/data/databases/storages/settings_storage/settings_storage_data.dart';
import 'package:lens_new/app/widgets/button_group.dart';
import 'package:lens_new/app/widgets/components/appbar/controllers/appbar_component_controller.dart';
import 'package:lens_new/app/widgets/components/tool_tip_custom.dart';
import 'package:lens_new/core/theme/app_colors.dart';
import 'package:lens_new/core/theme/app_icons.dart';
import 'package:lens_new/core/theme/app_text_style.dart';
import 'package:lens_new/core/theme/color_data.dart';
import 'package:lens_new/core/utils/text_util.dart';
import 'package:lens_new/core/values/dimensions.dart';
import 'package:lens_new/core/values/strings.dart';

class AppbarComponent extends StatelessWidget {
  final String title;
  const AppbarComponent({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(AppbarComponentController());
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          title.tr,
          style: robotoMedium.copyWith(
            color: ColorData.gray[900],
            fontSize: Dimensions.fontSizeExtraLarge,
          ),
        ),
        Row(
          children: [
            Obx(
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
            const SizedBox(
              width: 16,
            ),
            Container(
              padding: const EdgeInsets.all(7),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  Dimensions.RADIUS_DEFAULT,
                ),
                border: Border.all(color: AppColors.border),
              ),
              child: ToolTipCustom(
                message: TextUtil.addLineBreaks(
                  text: Strings.helpTooltip,
                  maxHorizontalWord: 7,
                ),
                child: SvgPicture.asset(
                  AppIcons.help,
                  width: 20,
                  height: 20,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

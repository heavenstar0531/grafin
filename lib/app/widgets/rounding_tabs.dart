import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lens_new/core/values/dimensions.dart';
import 'package:lens_new/core/theme/app_colors.dart';
import 'package:lens_new/core/theme/app_text_style.dart';
import 'package:lens_new/core/theme/color_data.dart';

class RoundingTabs extends StatelessWidget {
  const RoundingTabs({
    Key? key,
    required this.selectedIndex,
    required this.tabs,
    this.isLensRounding = false,
    this.isKeratometryUnit = false,
    this.isContactLensUnit = false,
  }) : super(key: key);

  final RxInt selectedIndex;
  final List<String> tabs;
  final bool isLensRounding;
  final bool isKeratometryUnit;
  final bool isContactLensUnit;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: tabs.length == 3 ? 225 : 120,
      child: Table(
        border: TableBorder.all(
          color: AppColors.border,
          borderRadius: BorderRadius.circular(Dimensions.RADIUS_DEFAULT),
        ),
        children: [
          TableRow(
            children: tabs.map((tab) {
              return MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: () {
                    // selectedIndex.value = tabs.indexOf(tab);
                    // if(isLensRounding) {
                    //   SettingsSharedPref.saveLensRounding(selectedIndex.value);
                    // } else if(isKeratometryUnit) {
                    //   SettingsSharedPref.saveKeratometryUnit(selectedIndex.value);
                    // } else if(isContactLensUnit) {
                    //   SettingsSharedPref.saveContactLensUnit(selectedIndex.value);
                    // }
                  },
                  child: Obx(() {
                    BorderRadiusGeometry borderRadius = BorderRadius.zero;
                    if (selectedIndex.value == 0) {
                      borderRadius = const BorderRadius.only(
                        topLeft: Radius.circular(Dimensions.RADIUS_DEFAULT),
                        bottomLeft: Radius.circular(Dimensions.RADIUS_DEFAULT),
                      );
                    } else if (selectedIndex.value == 2 || (tabs.length == 2)) {
                      borderRadius = const BorderRadius.only(
                        topRight: Radius.circular(Dimensions.RADIUS_DEFAULT),
                        bottomRight: Radius.circular(Dimensions.RADIUS_DEFAULT),
                      );
                    }
                    return Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 16,
                      ),
                      decoration: selectedIndex.value == tabs.indexOf(tab)
                          ? BoxDecoration(
                              color: ColorData.gray[100],
                              borderRadius: borderRadius,
                            )
                          : null,
                      child: Center(
                        child: Text(
                          tab.tr,
                          style: robotoMedium.copyWith(
                            fontSize: Dimensions.fontSizeDefault,
                            color: ColorData.gray[800],
                          ),
                        ),
                      ),
                    );
                  }),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}

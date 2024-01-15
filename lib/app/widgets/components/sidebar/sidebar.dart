import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:lens_new/app/widgets/components/sidebar/controllers/sidebar_controller.dart';
import 'package:lens_new/app/widgets/components/sidebar/widgets/custom_expansion_tile.dart';
import 'package:lens_new/core/values/dimensions.dart';
import 'package:lens_new/core/theme/app_colors.dart';
import 'package:lens_new/core/theme/app_text_style.dart';
import 'package:lens_new/core/theme/color_data.dart';

class Sidebar extends GetView<SidebarController> {
  const Sidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorData.gray[50]!,
      padding: const EdgeInsets.all(Dimensions.PADDING_SIZE_DEFAULT),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(
              controller.sidebarItems.length - 1,
              (index) => sidebarItem(
                sidebarItemIndex: index,
              ),
            ),
          ),
          Column(
            children: [
              const SizedBox(
                width: 240,
                child: Divider(),
              ),
              sidebarItem(sidebarItemIndex: controller.sidebarItems.length - 1),
            ],
          ),
        ],
      ),
    );
  }

  Widget sidebarItem({required int sidebarItemIndex}) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          controller.selectedSidebarItemIndex.value = sidebarItemIndex;
          controller.selectedInnerSidebarItemIndex.value = -1;
          // go to target route
          if (controller.sidebarItems[sidebarItemIndex].innerItems == null) {
            Get.offAndToNamed(controller.sidebarItems[sidebarItemIndex].route);
          }
        },
        child: Obx(() {
          return Container(
            width: 240,
            padding: controller.sidebarItems[sidebarItemIndex].innerItems != null
                ? const EdgeInsets.only(left: 12)
                : const EdgeInsets.all(
                    Dimensions.PADDING_SIZE_DEFAULT,
                  ),
            decoration: BoxDecoration(
              color: controller.getSidebarColor(sidebarItemIndex),
              borderRadius: BorderRadius.circular(Dimensions.RADIUS_DEFAULT),
            ),
            child: controller.sidebarItems[sidebarItemIndex].innerItems != null
                ? expandableListTile(sidebarItemIndex)
                : listTile(sidebarItemIndex),
          );
        }),
      ),
    );
  }

  Widget expandableListTile(int index) {
    return CustomExpansionTile(
      iconColor: AppColors.icon,
      tilePadding: EdgeInsets.zero,
      backgroundColor: ColorData.gray[50],
      initiallyExpanded: (controller.selectedSidebarItemIndex.value == index),
      title: listTile(index),
      expandedCrossAxisAlignment: CrossAxisAlignment.start,
      children: List.generate(controller.sidebarItems[index].innerItems!.length, (i) {
        return subListTile(
          index: i,
          sidebarItemIndex: index,
        );
      }),
    );
  }

  Widget subListTile({
    required int sidebarItemIndex,
    required int index,
  }) {
    return GestureDetector(
      onTap: () {
        controller.selectedSidebarItemIndex.value = sidebarItemIndex;
        controller.selectedInnerSidebarItemIndex.value = index;
        Get.offAndToNamed(controller.sidebarItems[sidebarItemIndex].innerItems![index].route);
      },
      child: Container(
        padding: const EdgeInsets.all(
          Dimensions.PADDING_SIZE_DEFAULT,
        ),
        decoration: BoxDecoration(
          color: controller.getInnerSidebarItemColor(index),
          borderRadius: BorderRadius.circular(Dimensions.RADIUS_DEFAULT),
        ),
        child: Text(
          controller.sidebarItems[sidebarItemIndex].innerItems![index].name.tr,
          style: robotoRegular.copyWith(
            fontSize: Dimensions.fontSizeDefault,
            color: ColorData.gray[700],
          ),
        ),
      ),
    );
  }

  Widget listTile(int index) {
    return Row(
      children: [
        SvgPicture.asset(
          controller.sidebarItems[index].icon,
          height: 20,
          width: 20,
        ),
        const SizedBox(
          width: 12,
        ),
        Text(
          controller.sidebarItems[index].name.tr,
          style: robotoRegular.copyWith(
            fontSize: Dimensions.fontSizeDefault,
            color: ColorData.gray[700],
          ),
        ),
      ],
    );
  }
}

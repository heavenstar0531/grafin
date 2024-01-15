import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lens_new/app/widgets/components/sidebar/models/sidebar_inner_item_model.dart';
import 'package:lens_new/app/widgets/components/sidebar/models/sidebar_item_model.dart';
import 'package:lens_new/app/routes/app_pages.dart';
import 'package:lens_new/core/values/strings.dart';
import 'package:lens_new/core/theme/app_icons.dart';
import 'package:lens_new/core/theme/color_data.dart';

class SidebarController extends GetxController {
  // current selected screen
  RxInt selectedSidebarItemIndex = 0.obs;
  RxInt selectedInnerSidebarItemIndex = (-1).obs;

  Color? getSidebarColor(int index) {
    if (sidebarItems[index].innerItems == null && selectedSidebarItemIndex.value == index) return ColorData.gray[200];
    return null;
  }

  Color? getInnerSidebarItemColor(int index) {
    if (index == selectedInnerSidebarItemIndex.value) return ColorData.gray[200];
    return null;
  }

  List<SidebarItemModel> sidebarItems = [
    SidebarItemModel(
      name: Strings.home,
      icon: AppIcons.home,
      route: Routes.HOME,
    ),
    SidebarItemModel(
      name: Strings.spectacles,
      icon: AppIcons.spectacles,
      route: Routes.HOME,
    ),
    SidebarItemModel(
      name: Strings.contactLenses,
      icon: AppIcons.contactLenses,
      route: Routes.HOME,
      innerItems: [
        SidebarInnerItemModel(
          name: Strings.rgpLensCalculation,
          route: Routes.RGP_LENS_CALCULATION,
        ),
        SidebarInnerItemModel(
          name: Strings.softLensCalculation,
          route: Routes.HOME,
        ),
      ],
    ),
    SidebarItemModel(
      name: Strings.lowVision,
      icon: AppIcons.lowVision,
      route: Routes.HOME,
    ),
    SidebarItemModel(
      name: Strings.visualOptics,
      icon: AppIcons.visualOptics,
      route: Routes.HOME,
    ),
    SidebarItemModel(
      name: Strings.myopiaControl,
      icon: AppIcons.myopiaControl,
      route: Routes.HOME,
    ),
    SidebarItemModel(
      name: Strings.settings,
      icon: AppIcons.settings,
      route: Routes.SETTINGS,
    ),
  ];
}

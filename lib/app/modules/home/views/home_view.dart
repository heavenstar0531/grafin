import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lens_new/app/widgets/components/appbar/appbar_component.dart';
import 'package:lens_new/app/widgets/components/sidebar/sidebar.dart';
import 'package:lens_new/core/theme/app_colors.dart';
import 'package:lens_new/core/values/strings.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
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
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(horizontal: 32),
              children: [
                AppbarComponent(title: Strings.home.tr),
              ],
            ),
          )
        ],
      ),
    );
  }

  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return desktopWidget();
  }
}

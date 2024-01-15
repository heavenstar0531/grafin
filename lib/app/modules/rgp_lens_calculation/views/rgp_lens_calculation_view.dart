import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lens_new/app/modules/rgp_lens_calculation/views/desktop/rgp_lens_calculation_desktop_view.dart';

import '../controllers/rgp_lens_calculation_controller.dart';

class RgpLensCalculationView extends GetView<RgpLensCalculationController> {
  const RgpLensCalculationView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    if (GetPlatform.isWindows || GetPlatform.isLinux || GetPlatform.isMacOS) {
      return const RgpLensCalculationDesktopView();
    }
    return const SizedBox();
  }
}

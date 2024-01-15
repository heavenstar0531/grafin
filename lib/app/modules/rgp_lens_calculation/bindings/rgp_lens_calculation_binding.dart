import 'package:get/get.dart';

import '../controllers/rgp_lens_calculation_controller.dart';

class RgpLensCalculationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RgpLensCalculationController>(
      () => RgpLensCalculationController(),
    );
  }
}

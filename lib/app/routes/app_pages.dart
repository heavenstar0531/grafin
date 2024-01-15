import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/rgp_lens_calculation/bindings/rgp_lens_calculation_binding.dart';
import '../modules/rgp_lens_calculation/views/rgp_lens_calculation_view.dart';
import '../modules/settings/bindings/settings_binding.dart';
import '../modules/settings/views/settings_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
      transitionDuration: Duration.zero,
      transition: Transition.noTransition,
    ),
    GetPage(
      name: _Paths.SETTINGS,
      page: () => const SettingsView(),
      binding: SettingsBinding(),
      transitionDuration: Duration.zero,
      transition: Transition.noTransition,
    ),
    GetPage(
      name: _Paths.RGP_LENS_CALCULATION,
      page: () => const RgpLensCalculationView(),
      binding: RgpLensCalculationBinding(),
      transitionDuration: Duration.zero,
      transition: Transition.noTransition,
    ),
  ];
}

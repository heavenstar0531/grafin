import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:lens_new/core/values/strings.dart';

class LanguageUtil {
  static void updateLocale(String language) {
    if (language == Strings.english) {
      Get.updateLocale(const Locale('en', 'US'));
    } else if (language == Strings.german) {
      Get.updateLocale(const Locale('de', 'DE'));
    }
    print('updated ${Get.locale}');
    Get.appUpdate();
    Get.forceAppUpdate();
  }

  static Locale? getLocale(String language) {
    if (language == Strings.english) {
      return const Locale('en', 'US');
    } else if (language == Strings.german) {
      return const Locale('de', 'DE');
    }
    return null;
  }

  static Locale getDefaultLocale() {
    return const Locale('en', 'US');
  }
}

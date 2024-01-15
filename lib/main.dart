import 'dart:developer';

import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:lens_new/app/data/databases/storages/settings_storage/settings_storage.dart';
import 'package:lens_new/app/widgets/components/sidebar/controllers/sidebar_controller.dart';
import 'package:lens_new/core/utils/language_util.dart';
import 'package:lens_new/core/values/app_translation.dart';
import 'package:lens_new/core/values/desktop_constant.dart';
import 'package:lens_new/core/values/strings.dart';
import 'package:lens_new/main_controller.dart';

import 'app/routes/app_pages.dart';

Future<Locale> initLocalization() async {
  Locale locale;
  String? language = await SettingsStorage.getLanguage();
  if (language != null) {
    locale = LanguageUtil.getLocale(language)!;
    return locale;
  } else {
    return LanguageUtil.getDefaultLocale();
  }
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Get.put(MainController());
  try {
    if (GetPlatform.isWindows || GetPlatform.isLinux || GetPlatform.isMacOS) {
      doWhenWindowReady(() {
        Size initialSize = Size(DesktopConstant.minDesktopWidth, DesktopConstant.minDesktopHeight);
        appWindow.minSize = initialSize;
        appWindow.size = initialSize;
        appWindow.title = Strings.appName;
        appWindow.alignment = Alignment.center;
        appWindow.show();
      });
    }
  } catch (e) {
    log(e.toString());
  }
  await GetStorage.init();
  Locale locale = await initLocalization();
  Get.put(SidebarController());
  runApp(
    GetMaterialApp(
      locale: locale,
      translations: AppTranslation(),
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
    ),
  );
}

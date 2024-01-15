import 'package:get/get.dart';
import 'package:lens_new/app/data/databases/storages/settings_storage/settings_storage.dart';

class AppbarComponentController extends GetxController {
  RxnString selectedRounding = RxnString();
  setSelectedRounding(String value) async {
    selectedRounding.value = value;
    await SettingsStorage.saveLensRounding(value);
  }

  initSettings() async {
    selectedRounding.value = await SettingsStorage.getLensRounding();
  }

  @override
  void onInit() async {
    await initSettings();
    super.onInit();
  }
}

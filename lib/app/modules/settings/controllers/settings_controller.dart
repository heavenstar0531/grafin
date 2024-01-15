import 'package:get/get.dart';
import 'package:isar/isar.dart';
import 'package:lens_new/app/data/databases/collections/material_distributor_collection/material_distributor_collection.dart';
import 'package:lens_new/app/data/databases/storages/settings_storage/settings_storage.dart';
import 'package:lens_new/core/utils/language_util.dart';
import 'package:lens_new/main_controller.dart';
import '';

class SettingsController extends GetxController {
  var mainController = Get.find<MainController>();
  // settings
  RxnString selectedLanguage = RxnString();
  RxnString selectedLensNotation = RxnString();
  RxnString selectedRounding = RxnString();
  RxnString selectedKeratometry = RxnString();
  RxnString selectedContactLens = RxnString();

  RxList<MaterialDistributorCollection> materialDistributors = RxList.empty();
  RxList<String?> selectedMaterialDistributor = RxList.empty(growable: true);
  updateSelectedMaterialDistributor(String value) async {
    if (selectedMaterialDistributor.contains(value)) {
      selectedMaterialDistributor.remove(value);
    } else {
      selectedMaterialDistributor.add(value);
    }
    selectedMaterialDistributor.refresh();
    await SettingsStorage.saveMaterialDistributor(selectedMaterialDistributor.value);
  }

  checkSelectedMaterialDistributor(String value) {
    if (selectedMaterialDistributor.contains(value)) {
      return true;
    }
    return false;
  }

  setSelectedLanguage(String value) async {
    selectedLanguage.value = value;
    await SettingsStorage.saveLanguage(value);
    LanguageUtil.updateLocale(selectedLanguage.value!);
  }

  setSelectedLensNotation(String value) async {
    selectedLensNotation.value = value;
    await SettingsStorage.saveLensNotation(value);
  }

  setSelectedRounding(String value) async {
    selectedRounding.value = value;
    await SettingsStorage.saveLensRounding(value);
  }

  setSelectedKeratometry(String value) async {
    selectedKeratometry.value = value;
    await SettingsStorage.saveKeratometryUnit(value);
  }

  setSelectedContactLens(String value) async {
    selectedContactLens.value = value;
    await SettingsStorage.saveContactLensUnit(value);
  }

  initData() async {
    materialDistributors.value = await mainController.isar!.collection<MaterialDistributorCollection>().where().findAll();
    materialDistributors.refresh();
  }

  initSettings() async {
    selectedLanguage.value = await SettingsStorage.getLanguage();
    selectedLensNotation.value = await SettingsStorage.getLensNotation();
    selectedRounding.value = await SettingsStorage.getLensRounding();
    selectedKeratometry.value = await SettingsStorage.getKeratometryUnit();
    selectedContactLens.value = await SettingsStorage.getContactLensUnit();
    selectedMaterialDistributor.value = await SettingsStorage.getMaterialDistributor();
    selectedMaterialDistributor.refresh();
    print({
      'selectedLanguage': selectedLanguage.value,
      'selectedLensNotation': selectedLensNotation.value,
      'selectedRounding': selectedRounding.value,
      'selectedKeratometry': selectedKeratometry.value,
      'selectedContactLens': selectedContactLens.value,
      'selectedMaterialDistributor': selectedMaterialDistributor.value,
    });
  }

  @override
  void onInit() async {
    await initData();
    await initSettings();
    super.onInit();
  }
}

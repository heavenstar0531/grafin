import 'package:get_storage/get_storage.dart';
import 'package:lens_new/app/data/databases/storages/settings_storage/settings_storage_keys.dart';

class SettingsStorage {
  static Future<String?> getLanguage() async {
    final storage = GetStorage();
    var res = await storage.read(SettingsStorageKeys.language);
    print('res ${res}');
    if (res is String) return res;
    return null;
  }

  static Future<void> saveLanguage(String language) async {
    final storage = GetStorage();
    await storage.write(SettingsStorageKeys.language, language);
  }

  static Future<String?> getLensNotation() async {
    final storage = GetStorage();
    var res = storage.read(SettingsStorageKeys.lensNotation);
    if (res is String) return res;
    return null;
  }

  static Future<void> saveLensNotation(String value) async {
    final storage = GetStorage();
    await storage.write(SettingsStorageKeys.lensNotation, value);
  }

  static Future<String?> getLensRounding() async {
    final storage = GetStorage();
    var res = storage.read(SettingsStorageKeys.lensRounding);
    if (res is String) return res;
    return null;
  }

  static Future<void> saveLensRounding(String value) async {
    final storage = GetStorage();
    await storage.write(SettingsStorageKeys.lensRounding, value);
  }

  static Future<String?> getKeratometryUnit() async {
    final storage = GetStorage();
    var res = storage.read(SettingsStorageKeys.keratometryUnit);
    if (res is String) return res;
    return null;
  }

  static Future<void> saveKeratometryUnit(String value) async {
    final storage = GetStorage();
    await storage.write(SettingsStorageKeys.keratometryUnit, value);
  }

  static Future<String?> getContactLensUnit() async {
    final storage = GetStorage();
    var res = storage.read(SettingsStorageKeys.contactLensUnit);
    if (res is String) return res;
    return null;
  }

  static Future<void> saveContactLensUnit(String value) async {
    final storage = GetStorage();
    await storage.write(SettingsStorageKeys.contactLensUnit, value);
  }

  static Future<List<String?>> getMaterialDistributor() async {
    final storage = GetStorage();
    var res = storage.read(SettingsStorageKeys.materialDistributor);
    return (res as List).map((e) => e.toString()).toList();
  }

  static Future<void> saveMaterialDistributor(List<String?> value) async {
    final storage = GetStorage();
    await storage.write(SettingsStorageKeys.materialDistributor, value);
  }
}

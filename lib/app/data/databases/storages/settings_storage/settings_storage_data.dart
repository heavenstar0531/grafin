import 'package:lens_new/core/values/strings.dart';

class SettingsStorageData {
  SettingsStorageData._();

  static final languages = [
    Strings.english,
    Strings.german,
  ];

  static final lensNotations = [
    Strings.minusCylinder,
    Strings.plusCylinder,
  ];

  static final roundingList = [
    Strings.plusMinusPoint01,
    Strings.plusMinusPoint12,
    Strings.plusMinusPoint25,
  ];

  // keratometryUnit
  static final lensUnits = [
    Strings.mmPostfix,
    Strings.dptPostfix,
  ];
}

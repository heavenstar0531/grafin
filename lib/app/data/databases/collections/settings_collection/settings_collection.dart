import 'package:isar/isar.dart';

part 'settings_collection.g.dart';

@collection
class SettingsCollection {
  Id id = Isar.autoIncrement;
  int? language;
  int? lensNotation;
  int? getLensRounding;
  int? getKeratometryUnit;
  int? contactLensUnit;
}

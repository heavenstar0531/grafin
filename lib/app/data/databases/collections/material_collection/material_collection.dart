import 'package:isar/isar.dart';

part 'material_collection.g.dart';

@collection
class MaterialCollection {
  Id id = Isar.autoIncrement;
  String? name;
  String? manufacturer;
  String? distributor;
  double? n;
  double? dk;
}

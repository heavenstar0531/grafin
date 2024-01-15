import 'package:isar/isar.dart';

part 'material_distributor_collection.g.dart';

@collection
class MaterialDistributorCollection {
  Id id = Isar.autoIncrement;
  String? name;
}

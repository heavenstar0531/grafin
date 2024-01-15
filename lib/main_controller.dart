import 'package:get/get.dart';
import 'package:isar/isar.dart';
import 'package:lens_new/app/data/databases/collections/material_collection/material_collection.dart';
import 'package:lens_new/app/data/databases/collections/material_distributor_collection/material_distributor_collection.dart';

class MainController extends GetxController {
  Isar? isar;
  @override
  void onInit() async {
    isar = await Isar.open(
      [
        MaterialCollectionSchema,
        MaterialDistributorCollectionSchema,
      ],
      inspector: true,
    );
    super.onInit();
  }
}

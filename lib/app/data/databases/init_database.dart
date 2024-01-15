import 'package:isar/isar.dart';
import 'package:lens_new/app/data/databases/collections/material_collection/material_collection.dart';
import 'package:lens_new/app/data/databases/collections/material_distributor_collection/material_distributor_collection.dart';

class InitDatabase {
  static Future<void> materialDistributor(Isar isar) async {
    List<MaterialDistributorCollection> _list = [
      MaterialDistributorCollection()..name = 'Appenzeller Kontaktlinsen',
      MaterialDistributorCollection()..name = 'Hecht Kontaktlinsen',
    ];
    isar.writeTxn(() async {
      isar.materialDistributorCollections.putAll(_list);
    });
  }

  static Future<void> material(Isar isar) async {
    // Appenzeller Kontaktlinsen Distributor
    List<MaterialCollection> _appenzellerKontaktlinsen = [
      MaterialCollection()
        ..name = 'Optimum Classic'
        ..manufacturer = 'Contamac'
        ..distributor = 'Appenzeller Kontaktlinsen'
        ..n = 1.450
        ..dk = 26,
      MaterialCollection()
        ..name = 'Optimum Comfort'
        ..manufacturer = 'Contamac'
        ..distributor = 'Appenzeller Kontaktlinsen'
        ..n = 1.441
        ..dk = 65,
      MaterialCollection()
        ..name = 'Optimum Extra'
        ..manufacturer = 'Contamac'
        ..distributor = 'Appenzeller Kontaktlinsen'
        ..n = 1.431
        ..dk = 100,
      MaterialCollection()
        ..name = 'Optimum Extreme'
        ..manufacturer = 'Contamac'
        ..distributor = 'Appenzeller Kontaktlinsen'
        ..n = 1.432
        ..dk = 125,
      MaterialCollection()
        ..name = 'Optimum Infinite'
        ..manufacturer = 'Contamac'
        ..distributor = 'Appenzeller Kontaktlinsen'
        ..n = 1.438
        ..dk = 180,
      MaterialCollection()
        ..name = 'Boston IV'
        ..manufacturer = 'Boston Technologies'
        ..distributor = 'Appenzeller Kontaktlinsen'
        ..n = 1.469
        ..dk = 19,
      MaterialCollection()
        ..name = 'Boston ES'
        ..manufacturer = 'Boston Technologies'
        ..distributor = 'Appenzeller Kontaktlinsen'
        ..n = 1.443
        ..dk = 18,
      MaterialCollection()
        ..name = 'Boston Equalens'
        ..manufacturer = 'Boston Technologies'
        ..distributor = 'Appenzeller Kontaktlinsen'
        ..n = 1.438
        ..dk = 47,
      MaterialCollection()
        ..name = 'Boston EO'
        ..manufacturer = 'Boston Technologies'
        ..distributor = 'Appenzeller Kontaktlinsen'
        ..n = 1.429
        ..dk = 58,
      MaterialCollection()
        ..name = 'Boston XO'
        ..manufacturer = 'Boston Technologies'
        ..distributor = 'Appenzeller Kontaktlinsen'
        ..n = 1.415
        ..dk = 100,
      MaterialCollection()
        ..name = 'Visaflex'
        ..manufacturer = 'Boston Technologies'
        ..distributor = 'Appenzeller Kontaktlinsen'
        ..n = 1.492
        ..dk = 18,
      MaterialCollection()
        ..name = 'PMMA'
        ..manufacturer = 'no manufacturer'
        ..distributor = 'Appenzeller Kontaktlinsen'
        ..n = 1.490
        ..dk = 0,
      MaterialCollection()
        ..name = 'TLM'
        ..manufacturer = 'no manufacturer'
        ..distributor = 'Appenzeller Kontaktlinsen'
        ..n = 1.450
        ..dk = 26,
    ];

    List<MaterialCollection> _hechtKontaktlinsen = [
      MaterialCollection()
        ..name = 'Optimum Extra'
        ..manufacturer = 'Contamac'
        ..distributor = 'Hecht Kontaktlinsen'
        ..n = 1.431
        ..dk = 100,
      MaterialCollection()
        ..name = 'Boston ES'
        ..manufacturer = 'Boston Technologies'
        ..distributor = 'Hecht Kontaktlinsen'
        ..n = 1.443
        ..dk = 18,
      MaterialCollection()
        ..name = 'Boston Equalens'
        ..manufacturer = 'Boston Technologies'
        ..distributor = 'Hecht Kontaktlinsen'
        ..n = 1.438
        ..dk = 47,
      MaterialCollection()
        ..name = 'Boston XO'
        ..manufacturer = 'Boston Technologies'
        ..distributor = 'Hecht Kontaktlinsen'
        ..n = 1.415
        ..dk = 100,
    ];

// Besser Sehen Landshut
    // List<MaterialCollection> _besserSehenLandshut = [
    //   MaterialCollection()
    //     ..name = 'Boston XO2'
    //     ..manufacturer = ' Boston Technologies'
    //     ..distributor = 'Appenzeller Kontaktlinsen'
    //     ..n = 1.431
    //     ..dk = 100,
    //   MaterialCollection()
    //     ..name = 'Boston ES'
    //     ..manufacturer = 'Boston Technologies'
    //     ..distributor = 'Appenzeller Kontaktlinsen'
    //     ..n = 1.443
    //     ..dk = 18,
    //   MaterialCollection()
    //     ..name = 'Boston Equalens'
    //     ..manufacturer = 'Boston Technologies'
    //     ..distributor = 'Appenzeller Kontaktlinsen'
    //     ..n = 1.438
    //     ..dk = 47,
    //   MaterialCollection()
    //     ..name = 'Boston XO'
    //     ..manufacturer = 'Boston Technologies'
    //     ..distributor = 'Appenzeller Kontaktlinsen'
    //     ..n = 1.415
    //     ..dk = 100,
    // ];

    isar.writeTxn(() async {
      isar.materialCollections.putAll(_appenzellerKontaktlinsen);
      isar.materialCollections.putAll(_hechtKontaktlinsen);
    });
  }
}

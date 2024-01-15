import 'package:lens_new/calculations/models/lens_material.dart';

class Materials {
  static final materialsGPCL = [
    const LensMaterial(
      name: 'Boston ES',
      manufacturer: 'Boston Technologies',
      distributor: ['Appenzeller Kontaktlinsen', 'Hecht Kontaktlinsen'],
      n: 1.443,
      dk: 18,
    ),
    const LensMaterial(
      name: 'Optimum Classic',
      USAN: 'Roflufocon A',
      manufacturer: 'Contamac',
      distributor: ['Appenzeller Kontaktlinsen', 'Hecht Kontaktlinsen'],
      n: 1.443,
      dk: 18,
    ),
  ];

  static final materialsSoftCL = [
    const LensMaterial(
      name: 'Definitive 50',
      classification: 'Filcon V3',
      manufacturer: 'Contamac',
      distributor: ['Appenzeller Kontaktlinsen', 'Hecht Kontaktlinsen'],
      n: 1.406,
      dk: 62.5,
    ),
  ];
}

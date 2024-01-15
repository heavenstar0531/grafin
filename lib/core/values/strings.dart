class Strings {
  static const String home = 'Home';
  static const String spectacles = 'Spectacles';
  static const String contactLenses = 'Contact lenses';
  static const String lowVision = 'Low Vision';
  static const String visualOptics = 'Visual optics';
  static const String myopiaControl = 'Myopia control';
  static const String additionalRefraction = 'Additional refraction';
  static const String sphere = 'Sphere';
  static const String cylinder = 'Cylinder';
  static const String axis = 'Axis';
  static const String stabilisation = 'Stabilisation';
  static const String vertex = 'Vertex';
  static const String notation = 'Notation';
  static const String rounding = 'Rounding';
  static const String calculate = 'Calculate';
  static const String clear = 'Clear';
  static const String cancel = 'Cancel';
  static const String apply = 'Apply';
  static const String minus = 'Minus';
  static const String plus = 'Plus';
  static const String setting = 'Setting';
  static const String settings = 'Settings';
  static const String rgpLensCalculation = 'RGP Lens Calculation';
  static const String softLensCalculation = 'Soft Lens Calculation';
  static const String vertexCalculation = 'Vertex Calculation';
  static const String contactLensesInUse = 'Contact lenses in use';
  static const String radius1 = 'Radius 1';
  static const String radius2 = 'Radius 2';
  static const String material = 'Material';
  static const String rotation = 'Rotation';
  static const String newLensParameters = 'New lens parameters';
  static const String overRefraction = 'Over-refraction';
  static const String finalContactLenses = 'Final contact lenses';
  static const String helpTooltip =
      'With the RGP lens calculation you are able to evaluate a new RGP lens with changed parameters.';
  static const String language = 'Language:';
  static const String lensNotation = 'Lens notation:';
  static const String materialDistributor = 'Material distributor:';
  static const String lensRounding = 'Lens rounding:';
  static const String keratometryUnit = 'Keratometry unit:';
  static const String contactLensUnit = 'Contact lens unit:';
  static const String minusCylinder = 'Minus Cylinder';
  static const String plusCylinder = 'Plus Cylinder';

  // Constants
  static const String appName = 'Lens calculator';
  static const String r = 'R';
  static const String l = 'L';
  static const String plusMinusPoint25 = '±0.25';
  static const String plusMinusPoint12 = '±0.12';
  static const String plusMinusPoint01 = '±0.01';
  static const String dptPostfix = 'dpt';
  static const String degreePostfix = '°';
  static const String mmPostfix = 'mm';
  static const String english = 'English';
  static const String german = 'German';

  // Regex
  static const String regexFor180degree = '^(?:18[0]|1[0-7][0-9]|[1-9][0-9]|[0-9])';
  static const String regexFor360degree = '^(?:36[0-5]|3[0-5][0-9]|[1-9][0-9]|[0-9])';
  static const String regexForNumbers = r'^[-+]?\d{0,2}((\.\d{0,2})|(\,\d{0,2}))?';

  // contact lenses in use radius1, radius2 and material
  static const contactLensesInUseRadiusList = [Strings.radius1, Strings.radius2, Strings.material];

  // contact lenses in use sphere, cylinder and axis
  static const contactLensesInUseSphere = [Strings.sphere, Strings.cylinder, Strings.axis];

  // list and map for dropdown notation
  static final notationList = [Strings.minusCylinder, Strings.plusCylinder];

  static final notationMap = {
    Strings.minusCylinder: '-',
    Strings.plusCylinder: '+',
  };

  // list and map for dropdown rounding
  static final roundingList = [
    Strings.plusMinusPoint01,
    Strings.plusMinusPoint12,
    Strings.plusMinusPoint25,
  ];

  static final roundingMap = {
    Strings.plusMinusPoint01: 100,
    Strings.plusMinusPoint12: 8,
    Strings.plusMinusPoint25: 4,
  };

  // language list
  static final languages = [
    Strings.english,
    Strings.german,
  ];

  // lens notation
  static final lensNotations = [
    Strings.minusCylinder,
    Strings.plusCylinder,
  ];

  // lens unit
  static final lensUnits = [
    Strings.mmPostfix,
    Strings.dptPostfix,
  ];
}

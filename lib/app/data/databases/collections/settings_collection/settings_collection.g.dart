// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings_collection.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

extension GetSettingsCollectionCollection on Isar {
  IsarCollection<SettingsCollection> get settingsCollections =>
      this.collection();
}

const SettingsCollectionSchema = CollectionSchema(
  name: r'SettingsCollection',
  id: 1768772991470096974,
  properties: {
    r'contactLensUnit': PropertySchema(
      id: 0,
      name: r'contactLensUnit',
      type: IsarType.long,
    ),
    r'getKeratometryUnit': PropertySchema(
      id: 1,
      name: r'getKeratometryUnit',
      type: IsarType.long,
    ),
    r'getLensRounding': PropertySchema(
      id: 2,
      name: r'getLensRounding',
      type: IsarType.long,
    ),
    r'language': PropertySchema(
      id: 3,
      name: r'language',
      type: IsarType.long,
    ),
    r'lensNotation': PropertySchema(
      id: 4,
      name: r'lensNotation',
      type: IsarType.long,
    )
  },
  estimateSize: _settingsCollectionEstimateSize,
  serialize: _settingsCollectionSerialize,
  deserialize: _settingsCollectionDeserialize,
  deserializeProp: _settingsCollectionDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _settingsCollectionGetId,
  getLinks: _settingsCollectionGetLinks,
  attach: _settingsCollectionAttach,
  version: '3.0.5',
);

int _settingsCollectionEstimateSize(
  SettingsCollection object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _settingsCollectionSerialize(
  SettingsCollection object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.contactLensUnit);
  writer.writeLong(offsets[1], object.getKeratometryUnit);
  writer.writeLong(offsets[2], object.getLensRounding);
  writer.writeLong(offsets[3], object.language);
  writer.writeLong(offsets[4], object.lensNotation);
}

SettingsCollection _settingsCollectionDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = SettingsCollection();
  object.contactLensUnit = reader.readLongOrNull(offsets[0]);
  object.getKeratometryUnit = reader.readLongOrNull(offsets[1]);
  object.getLensRounding = reader.readLongOrNull(offsets[2]);
  object.id = id;
  object.language = reader.readLongOrNull(offsets[3]);
  object.lensNotation = reader.readLongOrNull(offsets[4]);
  return object;
}

P _settingsCollectionDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLongOrNull(offset)) as P;
    case 1:
      return (reader.readLongOrNull(offset)) as P;
    case 2:
      return (reader.readLongOrNull(offset)) as P;
    case 3:
      return (reader.readLongOrNull(offset)) as P;
    case 4:
      return (reader.readLongOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _settingsCollectionGetId(SettingsCollection object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _settingsCollectionGetLinks(
    SettingsCollection object) {
  return [];
}

void _settingsCollectionAttach(
    IsarCollection<dynamic> col, Id id, SettingsCollection object) {
  object.id = id;
}

extension SettingsCollectionQueryWhereSort
    on QueryBuilder<SettingsCollection, SettingsCollection, QWhere> {
  QueryBuilder<SettingsCollection, SettingsCollection, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension SettingsCollectionQueryWhere
    on QueryBuilder<SettingsCollection, SettingsCollection, QWhereClause> {
  QueryBuilder<SettingsCollection, SettingsCollection, QAfterWhereClause>
      idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<SettingsCollection, SettingsCollection, QAfterWhereClause>
      idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<SettingsCollection, SettingsCollection, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<SettingsCollection, SettingsCollection, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<SettingsCollection, SettingsCollection, QAfterWhereClause>
      idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension SettingsCollectionQueryFilter
    on QueryBuilder<SettingsCollection, SettingsCollection, QFilterCondition> {
  QueryBuilder<SettingsCollection, SettingsCollection, QAfterFilterCondition>
      contactLensUnitIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'contactLensUnit',
      ));
    });
  }

  QueryBuilder<SettingsCollection, SettingsCollection, QAfterFilterCondition>
      contactLensUnitIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'contactLensUnit',
      ));
    });
  }

  QueryBuilder<SettingsCollection, SettingsCollection, QAfterFilterCondition>
      contactLensUnitEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'contactLensUnit',
        value: value,
      ));
    });
  }

  QueryBuilder<SettingsCollection, SettingsCollection, QAfterFilterCondition>
      contactLensUnitGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'contactLensUnit',
        value: value,
      ));
    });
  }

  QueryBuilder<SettingsCollection, SettingsCollection, QAfterFilterCondition>
      contactLensUnitLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'contactLensUnit',
        value: value,
      ));
    });
  }

  QueryBuilder<SettingsCollection, SettingsCollection, QAfterFilterCondition>
      contactLensUnitBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'contactLensUnit',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<SettingsCollection, SettingsCollection, QAfterFilterCondition>
      getKeratometryUnitIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'getKeratometryUnit',
      ));
    });
  }

  QueryBuilder<SettingsCollection, SettingsCollection, QAfterFilterCondition>
      getKeratometryUnitIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'getKeratometryUnit',
      ));
    });
  }

  QueryBuilder<SettingsCollection, SettingsCollection, QAfterFilterCondition>
      getKeratometryUnitEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'getKeratometryUnit',
        value: value,
      ));
    });
  }

  QueryBuilder<SettingsCollection, SettingsCollection, QAfterFilterCondition>
      getKeratometryUnitGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'getKeratometryUnit',
        value: value,
      ));
    });
  }

  QueryBuilder<SettingsCollection, SettingsCollection, QAfterFilterCondition>
      getKeratometryUnitLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'getKeratometryUnit',
        value: value,
      ));
    });
  }

  QueryBuilder<SettingsCollection, SettingsCollection, QAfterFilterCondition>
      getKeratometryUnitBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'getKeratometryUnit',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<SettingsCollection, SettingsCollection, QAfterFilterCondition>
      getLensRoundingIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'getLensRounding',
      ));
    });
  }

  QueryBuilder<SettingsCollection, SettingsCollection, QAfterFilterCondition>
      getLensRoundingIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'getLensRounding',
      ));
    });
  }

  QueryBuilder<SettingsCollection, SettingsCollection, QAfterFilterCondition>
      getLensRoundingEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'getLensRounding',
        value: value,
      ));
    });
  }

  QueryBuilder<SettingsCollection, SettingsCollection, QAfterFilterCondition>
      getLensRoundingGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'getLensRounding',
        value: value,
      ));
    });
  }

  QueryBuilder<SettingsCollection, SettingsCollection, QAfterFilterCondition>
      getLensRoundingLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'getLensRounding',
        value: value,
      ));
    });
  }

  QueryBuilder<SettingsCollection, SettingsCollection, QAfterFilterCondition>
      getLensRoundingBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'getLensRounding',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<SettingsCollection, SettingsCollection, QAfterFilterCondition>
      idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<SettingsCollection, SettingsCollection, QAfterFilterCondition>
      idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<SettingsCollection, SettingsCollection, QAfterFilterCondition>
      idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<SettingsCollection, SettingsCollection, QAfterFilterCondition>
      idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<SettingsCollection, SettingsCollection, QAfterFilterCondition>
      languageIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'language',
      ));
    });
  }

  QueryBuilder<SettingsCollection, SettingsCollection, QAfterFilterCondition>
      languageIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'language',
      ));
    });
  }

  QueryBuilder<SettingsCollection, SettingsCollection, QAfterFilterCondition>
      languageEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'language',
        value: value,
      ));
    });
  }

  QueryBuilder<SettingsCollection, SettingsCollection, QAfterFilterCondition>
      languageGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'language',
        value: value,
      ));
    });
  }

  QueryBuilder<SettingsCollection, SettingsCollection, QAfterFilterCondition>
      languageLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'language',
        value: value,
      ));
    });
  }

  QueryBuilder<SettingsCollection, SettingsCollection, QAfterFilterCondition>
      languageBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'language',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<SettingsCollection, SettingsCollection, QAfterFilterCondition>
      lensNotationIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'lensNotation',
      ));
    });
  }

  QueryBuilder<SettingsCollection, SettingsCollection, QAfterFilterCondition>
      lensNotationIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'lensNotation',
      ));
    });
  }

  QueryBuilder<SettingsCollection, SettingsCollection, QAfterFilterCondition>
      lensNotationEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lensNotation',
        value: value,
      ));
    });
  }

  QueryBuilder<SettingsCollection, SettingsCollection, QAfterFilterCondition>
      lensNotationGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'lensNotation',
        value: value,
      ));
    });
  }

  QueryBuilder<SettingsCollection, SettingsCollection, QAfterFilterCondition>
      lensNotationLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'lensNotation',
        value: value,
      ));
    });
  }

  QueryBuilder<SettingsCollection, SettingsCollection, QAfterFilterCondition>
      lensNotationBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'lensNotation',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension SettingsCollectionQueryObject
    on QueryBuilder<SettingsCollection, SettingsCollection, QFilterCondition> {}

extension SettingsCollectionQueryLinks
    on QueryBuilder<SettingsCollection, SettingsCollection, QFilterCondition> {}

extension SettingsCollectionQuerySortBy
    on QueryBuilder<SettingsCollection, SettingsCollection, QSortBy> {
  QueryBuilder<SettingsCollection, SettingsCollection, QAfterSortBy>
      sortByContactLensUnit() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'contactLensUnit', Sort.asc);
    });
  }

  QueryBuilder<SettingsCollection, SettingsCollection, QAfterSortBy>
      sortByContactLensUnitDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'contactLensUnit', Sort.desc);
    });
  }

  QueryBuilder<SettingsCollection, SettingsCollection, QAfterSortBy>
      sortByGetKeratometryUnit() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'getKeratometryUnit', Sort.asc);
    });
  }

  QueryBuilder<SettingsCollection, SettingsCollection, QAfterSortBy>
      sortByGetKeratometryUnitDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'getKeratometryUnit', Sort.desc);
    });
  }

  QueryBuilder<SettingsCollection, SettingsCollection, QAfterSortBy>
      sortByGetLensRounding() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'getLensRounding', Sort.asc);
    });
  }

  QueryBuilder<SettingsCollection, SettingsCollection, QAfterSortBy>
      sortByGetLensRoundingDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'getLensRounding', Sort.desc);
    });
  }

  QueryBuilder<SettingsCollection, SettingsCollection, QAfterSortBy>
      sortByLanguage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'language', Sort.asc);
    });
  }

  QueryBuilder<SettingsCollection, SettingsCollection, QAfterSortBy>
      sortByLanguageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'language', Sort.desc);
    });
  }

  QueryBuilder<SettingsCollection, SettingsCollection, QAfterSortBy>
      sortByLensNotation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lensNotation', Sort.asc);
    });
  }

  QueryBuilder<SettingsCollection, SettingsCollection, QAfterSortBy>
      sortByLensNotationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lensNotation', Sort.desc);
    });
  }
}

extension SettingsCollectionQuerySortThenBy
    on QueryBuilder<SettingsCollection, SettingsCollection, QSortThenBy> {
  QueryBuilder<SettingsCollection, SettingsCollection, QAfterSortBy>
      thenByContactLensUnit() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'contactLensUnit', Sort.asc);
    });
  }

  QueryBuilder<SettingsCollection, SettingsCollection, QAfterSortBy>
      thenByContactLensUnitDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'contactLensUnit', Sort.desc);
    });
  }

  QueryBuilder<SettingsCollection, SettingsCollection, QAfterSortBy>
      thenByGetKeratometryUnit() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'getKeratometryUnit', Sort.asc);
    });
  }

  QueryBuilder<SettingsCollection, SettingsCollection, QAfterSortBy>
      thenByGetKeratometryUnitDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'getKeratometryUnit', Sort.desc);
    });
  }

  QueryBuilder<SettingsCollection, SettingsCollection, QAfterSortBy>
      thenByGetLensRounding() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'getLensRounding', Sort.asc);
    });
  }

  QueryBuilder<SettingsCollection, SettingsCollection, QAfterSortBy>
      thenByGetLensRoundingDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'getLensRounding', Sort.desc);
    });
  }

  QueryBuilder<SettingsCollection, SettingsCollection, QAfterSortBy>
      thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<SettingsCollection, SettingsCollection, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<SettingsCollection, SettingsCollection, QAfterSortBy>
      thenByLanguage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'language', Sort.asc);
    });
  }

  QueryBuilder<SettingsCollection, SettingsCollection, QAfterSortBy>
      thenByLanguageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'language', Sort.desc);
    });
  }

  QueryBuilder<SettingsCollection, SettingsCollection, QAfterSortBy>
      thenByLensNotation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lensNotation', Sort.asc);
    });
  }

  QueryBuilder<SettingsCollection, SettingsCollection, QAfterSortBy>
      thenByLensNotationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lensNotation', Sort.desc);
    });
  }
}

extension SettingsCollectionQueryWhereDistinct
    on QueryBuilder<SettingsCollection, SettingsCollection, QDistinct> {
  QueryBuilder<SettingsCollection, SettingsCollection, QDistinct>
      distinctByContactLensUnit() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'contactLensUnit');
    });
  }

  QueryBuilder<SettingsCollection, SettingsCollection, QDistinct>
      distinctByGetKeratometryUnit() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'getKeratometryUnit');
    });
  }

  QueryBuilder<SettingsCollection, SettingsCollection, QDistinct>
      distinctByGetLensRounding() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'getLensRounding');
    });
  }

  QueryBuilder<SettingsCollection, SettingsCollection, QDistinct>
      distinctByLanguage() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'language');
    });
  }

  QueryBuilder<SettingsCollection, SettingsCollection, QDistinct>
      distinctByLensNotation() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lensNotation');
    });
  }
}

extension SettingsCollectionQueryProperty
    on QueryBuilder<SettingsCollection, SettingsCollection, QQueryProperty> {
  QueryBuilder<SettingsCollection, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<SettingsCollection, int?, QQueryOperations>
      contactLensUnitProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'contactLensUnit');
    });
  }

  QueryBuilder<SettingsCollection, int?, QQueryOperations>
      getKeratometryUnitProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'getKeratometryUnit');
    });
  }

  QueryBuilder<SettingsCollection, int?, QQueryOperations>
      getLensRoundingProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'getLensRounding');
    });
  }

  QueryBuilder<SettingsCollection, int?, QQueryOperations> languageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'language');
    });
  }

  QueryBuilder<SettingsCollection, int?, QQueryOperations>
      lensNotationProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lensNotation');
    });
  }
}

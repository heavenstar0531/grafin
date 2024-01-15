// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'material_collection.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

extension GetMaterialCollectionCollection on Isar {
  IsarCollection<MaterialCollection> get materialCollections =>
      this.collection();
}

const MaterialCollectionSchema = CollectionSchema(
  name: r'MaterialCollection',
  id: -1922046286369656830,
  properties: {
    r'distributor': PropertySchema(
      id: 0,
      name: r'distributor',
      type: IsarType.string,
    ),
    r'dk': PropertySchema(
      id: 1,
      name: r'dk',
      type: IsarType.double,
    ),
    r'manufacturer': PropertySchema(
      id: 2,
      name: r'manufacturer',
      type: IsarType.string,
    ),
    r'n': PropertySchema(
      id: 3,
      name: r'n',
      type: IsarType.double,
    ),
    r'name': PropertySchema(
      id: 4,
      name: r'name',
      type: IsarType.string,
    )
  },
  estimateSize: _materialCollectionEstimateSize,
  serialize: _materialCollectionSerialize,
  deserialize: _materialCollectionDeserialize,
  deserializeProp: _materialCollectionDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _materialCollectionGetId,
  getLinks: _materialCollectionGetLinks,
  attach: _materialCollectionAttach,
  version: '3.0.5',
);

int _materialCollectionEstimateSize(
  MaterialCollection object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.distributor;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.manufacturer;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.name;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _materialCollectionSerialize(
  MaterialCollection object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.distributor);
  writer.writeDouble(offsets[1], object.dk);
  writer.writeString(offsets[2], object.manufacturer);
  writer.writeDouble(offsets[3], object.n);
  writer.writeString(offsets[4], object.name);
}

MaterialCollection _materialCollectionDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = MaterialCollection();
  object.distributor = reader.readStringOrNull(offsets[0]);
  object.dk = reader.readDoubleOrNull(offsets[1]);
  object.id = id;
  object.manufacturer = reader.readStringOrNull(offsets[2]);
  object.n = reader.readDoubleOrNull(offsets[3]);
  object.name = reader.readStringOrNull(offsets[4]);
  return object;
}

P _materialCollectionDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readDoubleOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readDoubleOrNull(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _materialCollectionGetId(MaterialCollection object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _materialCollectionGetLinks(
    MaterialCollection object) {
  return [];
}

void _materialCollectionAttach(
    IsarCollection<dynamic> col, Id id, MaterialCollection object) {
  object.id = id;
}

extension MaterialCollectionQueryWhereSort
    on QueryBuilder<MaterialCollection, MaterialCollection, QWhere> {
  QueryBuilder<MaterialCollection, MaterialCollection, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension MaterialCollectionQueryWhere
    on QueryBuilder<MaterialCollection, MaterialCollection, QWhereClause> {
  QueryBuilder<MaterialCollection, MaterialCollection, QAfterWhereClause>
      idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<MaterialCollection, MaterialCollection, QAfterWhereClause>
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

  QueryBuilder<MaterialCollection, MaterialCollection, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<MaterialCollection, MaterialCollection, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<MaterialCollection, MaterialCollection, QAfterWhereClause>
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

extension MaterialCollectionQueryFilter
    on QueryBuilder<MaterialCollection, MaterialCollection, QFilterCondition> {
  QueryBuilder<MaterialCollection, MaterialCollection, QAfterFilterCondition>
      distributorIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'distributor',
      ));
    });
  }

  QueryBuilder<MaterialCollection, MaterialCollection, QAfterFilterCondition>
      distributorIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'distributor',
      ));
    });
  }

  QueryBuilder<MaterialCollection, MaterialCollection, QAfterFilterCondition>
      distributorEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'distributor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MaterialCollection, MaterialCollection, QAfterFilterCondition>
      distributorGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'distributor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MaterialCollection, MaterialCollection, QAfterFilterCondition>
      distributorLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'distributor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MaterialCollection, MaterialCollection, QAfterFilterCondition>
      distributorBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'distributor',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MaterialCollection, MaterialCollection, QAfterFilterCondition>
      distributorStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'distributor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MaterialCollection, MaterialCollection, QAfterFilterCondition>
      distributorEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'distributor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MaterialCollection, MaterialCollection, QAfterFilterCondition>
      distributorContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'distributor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MaterialCollection, MaterialCollection, QAfterFilterCondition>
      distributorMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'distributor',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MaterialCollection, MaterialCollection, QAfterFilterCondition>
      distributorIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'distributor',
        value: '',
      ));
    });
  }

  QueryBuilder<MaterialCollection, MaterialCollection, QAfterFilterCondition>
      distributorIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'distributor',
        value: '',
      ));
    });
  }

  QueryBuilder<MaterialCollection, MaterialCollection, QAfterFilterCondition>
      dkIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'dk',
      ));
    });
  }

  QueryBuilder<MaterialCollection, MaterialCollection, QAfterFilterCondition>
      dkIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'dk',
      ));
    });
  }

  QueryBuilder<MaterialCollection, MaterialCollection, QAfterFilterCondition>
      dkEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dk',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MaterialCollection, MaterialCollection, QAfterFilterCondition>
      dkGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dk',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MaterialCollection, MaterialCollection, QAfterFilterCondition>
      dkLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dk',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MaterialCollection, MaterialCollection, QAfterFilterCondition>
      dkBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dk',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MaterialCollection, MaterialCollection, QAfterFilterCondition>
      idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<MaterialCollection, MaterialCollection, QAfterFilterCondition>
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

  QueryBuilder<MaterialCollection, MaterialCollection, QAfterFilterCondition>
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

  QueryBuilder<MaterialCollection, MaterialCollection, QAfterFilterCondition>
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

  QueryBuilder<MaterialCollection, MaterialCollection, QAfterFilterCondition>
      manufacturerIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'manufacturer',
      ));
    });
  }

  QueryBuilder<MaterialCollection, MaterialCollection, QAfterFilterCondition>
      manufacturerIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'manufacturer',
      ));
    });
  }

  QueryBuilder<MaterialCollection, MaterialCollection, QAfterFilterCondition>
      manufacturerEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'manufacturer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MaterialCollection, MaterialCollection, QAfterFilterCondition>
      manufacturerGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'manufacturer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MaterialCollection, MaterialCollection, QAfterFilterCondition>
      manufacturerLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'manufacturer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MaterialCollection, MaterialCollection, QAfterFilterCondition>
      manufacturerBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'manufacturer',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MaterialCollection, MaterialCollection, QAfterFilterCondition>
      manufacturerStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'manufacturer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MaterialCollection, MaterialCollection, QAfterFilterCondition>
      manufacturerEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'manufacturer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MaterialCollection, MaterialCollection, QAfterFilterCondition>
      manufacturerContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'manufacturer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MaterialCollection, MaterialCollection, QAfterFilterCondition>
      manufacturerMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'manufacturer',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MaterialCollection, MaterialCollection, QAfterFilterCondition>
      manufacturerIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'manufacturer',
        value: '',
      ));
    });
  }

  QueryBuilder<MaterialCollection, MaterialCollection, QAfterFilterCondition>
      manufacturerIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'manufacturer',
        value: '',
      ));
    });
  }

  QueryBuilder<MaterialCollection, MaterialCollection, QAfterFilterCondition>
      nIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'n',
      ));
    });
  }

  QueryBuilder<MaterialCollection, MaterialCollection, QAfterFilterCondition>
      nIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'n',
      ));
    });
  }

  QueryBuilder<MaterialCollection, MaterialCollection, QAfterFilterCondition>
      nEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'n',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MaterialCollection, MaterialCollection, QAfterFilterCondition>
      nGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'n',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MaterialCollection, MaterialCollection, QAfterFilterCondition>
      nLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'n',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MaterialCollection, MaterialCollection, QAfterFilterCondition>
      nBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'n',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MaterialCollection, MaterialCollection, QAfterFilterCondition>
      nameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<MaterialCollection, MaterialCollection, QAfterFilterCondition>
      nameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<MaterialCollection, MaterialCollection, QAfterFilterCondition>
      nameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MaterialCollection, MaterialCollection, QAfterFilterCondition>
      nameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MaterialCollection, MaterialCollection, QAfterFilterCondition>
      nameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MaterialCollection, MaterialCollection, QAfterFilterCondition>
      nameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MaterialCollection, MaterialCollection, QAfterFilterCondition>
      nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MaterialCollection, MaterialCollection, QAfterFilterCondition>
      nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MaterialCollection, MaterialCollection, QAfterFilterCondition>
      nameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MaterialCollection, MaterialCollection, QAfterFilterCondition>
      nameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MaterialCollection, MaterialCollection, QAfterFilterCondition>
      nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<MaterialCollection, MaterialCollection, QAfterFilterCondition>
      nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }
}

extension MaterialCollectionQueryObject
    on QueryBuilder<MaterialCollection, MaterialCollection, QFilterCondition> {}

extension MaterialCollectionQueryLinks
    on QueryBuilder<MaterialCollection, MaterialCollection, QFilterCondition> {}

extension MaterialCollectionQuerySortBy
    on QueryBuilder<MaterialCollection, MaterialCollection, QSortBy> {
  QueryBuilder<MaterialCollection, MaterialCollection, QAfterSortBy>
      sortByDistributor() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'distributor', Sort.asc);
    });
  }

  QueryBuilder<MaterialCollection, MaterialCollection, QAfterSortBy>
      sortByDistributorDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'distributor', Sort.desc);
    });
  }

  QueryBuilder<MaterialCollection, MaterialCollection, QAfterSortBy>
      sortByDk() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dk', Sort.asc);
    });
  }

  QueryBuilder<MaterialCollection, MaterialCollection, QAfterSortBy>
      sortByDkDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dk', Sort.desc);
    });
  }

  QueryBuilder<MaterialCollection, MaterialCollection, QAfterSortBy>
      sortByManufacturer() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'manufacturer', Sort.asc);
    });
  }

  QueryBuilder<MaterialCollection, MaterialCollection, QAfterSortBy>
      sortByManufacturerDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'manufacturer', Sort.desc);
    });
  }

  QueryBuilder<MaterialCollection, MaterialCollection, QAfterSortBy> sortByN() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'n', Sort.asc);
    });
  }

  QueryBuilder<MaterialCollection, MaterialCollection, QAfterSortBy>
      sortByNDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'n', Sort.desc);
    });
  }

  QueryBuilder<MaterialCollection, MaterialCollection, QAfterSortBy>
      sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<MaterialCollection, MaterialCollection, QAfterSortBy>
      sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }
}

extension MaterialCollectionQuerySortThenBy
    on QueryBuilder<MaterialCollection, MaterialCollection, QSortThenBy> {
  QueryBuilder<MaterialCollection, MaterialCollection, QAfterSortBy>
      thenByDistributor() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'distributor', Sort.asc);
    });
  }

  QueryBuilder<MaterialCollection, MaterialCollection, QAfterSortBy>
      thenByDistributorDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'distributor', Sort.desc);
    });
  }

  QueryBuilder<MaterialCollection, MaterialCollection, QAfterSortBy>
      thenByDk() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dk', Sort.asc);
    });
  }

  QueryBuilder<MaterialCollection, MaterialCollection, QAfterSortBy>
      thenByDkDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dk', Sort.desc);
    });
  }

  QueryBuilder<MaterialCollection, MaterialCollection, QAfterSortBy>
      thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<MaterialCollection, MaterialCollection, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<MaterialCollection, MaterialCollection, QAfterSortBy>
      thenByManufacturer() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'manufacturer', Sort.asc);
    });
  }

  QueryBuilder<MaterialCollection, MaterialCollection, QAfterSortBy>
      thenByManufacturerDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'manufacturer', Sort.desc);
    });
  }

  QueryBuilder<MaterialCollection, MaterialCollection, QAfterSortBy> thenByN() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'n', Sort.asc);
    });
  }

  QueryBuilder<MaterialCollection, MaterialCollection, QAfterSortBy>
      thenByNDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'n', Sort.desc);
    });
  }

  QueryBuilder<MaterialCollection, MaterialCollection, QAfterSortBy>
      thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<MaterialCollection, MaterialCollection, QAfterSortBy>
      thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }
}

extension MaterialCollectionQueryWhereDistinct
    on QueryBuilder<MaterialCollection, MaterialCollection, QDistinct> {
  QueryBuilder<MaterialCollection, MaterialCollection, QDistinct>
      distinctByDistributor({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'distributor', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MaterialCollection, MaterialCollection, QDistinct>
      distinctByDk() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dk');
    });
  }

  QueryBuilder<MaterialCollection, MaterialCollection, QDistinct>
      distinctByManufacturer({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'manufacturer', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MaterialCollection, MaterialCollection, QDistinct>
      distinctByN() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'n');
    });
  }

  QueryBuilder<MaterialCollection, MaterialCollection, QDistinct>
      distinctByName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }
}

extension MaterialCollectionQueryProperty
    on QueryBuilder<MaterialCollection, MaterialCollection, QQueryProperty> {
  QueryBuilder<MaterialCollection, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<MaterialCollection, String?, QQueryOperations>
      distributorProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'distributor');
    });
  }

  QueryBuilder<MaterialCollection, double?, QQueryOperations> dkProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dk');
    });
  }

  QueryBuilder<MaterialCollection, String?, QQueryOperations>
      manufacturerProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'manufacturer');
    });
  }

  QueryBuilder<MaterialCollection, double?, QQueryOperations> nProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'n');
    });
  }

  QueryBuilder<MaterialCollection, String?, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }
}

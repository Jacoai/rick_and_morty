// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class CharacterTable extends Table
    with TableInfo<CharacterTable, CharacterTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  CharacterTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    $customConstraints: 'NOT NULL',
  );
  static const VerificationMeta _isFavoriteMeta = const VerificationMeta(
    'isFavorite',
  );
  late final GeneratedColumn<bool> isFavorite = GeneratedColumn<bool>(
    'is_favorite',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: true,
    $customConstraints: 'NOT NULL',
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    $customConstraints: 'NOT NULL',
  );
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  late final GeneratedColumn<String> status = GeneratedColumn<String>(
    'status',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    $customConstraints: 'NOT NULL',
  );
  static const VerificationMeta _speciesMeta = const VerificationMeta(
    'species',
  );
  late final GeneratedColumn<String> species = GeneratedColumn<String>(
    'species',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    $customConstraints: 'NOT NULL',
  );
  static const VerificationMeta _typeMeta = const VerificationMeta('type');
  late final GeneratedColumn<String> type = GeneratedColumn<String>(
    'type',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    $customConstraints: 'NOT NULL',
  );
  static const VerificationMeta _genderMeta = const VerificationMeta('gender');
  late final GeneratedColumn<String> gender = GeneratedColumn<String>(
    'gender',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    $customConstraints: 'NOT NULL',
  );
  static const VerificationMeta _imageMeta = const VerificationMeta('image');
  late final GeneratedColumn<String> image = GeneratedColumn<String>(
    'image',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    $customConstraints: 'NOT NULL',
  );
  static const VerificationMeta _urlMeta = const VerificationMeta('url');
  late final GeneratedColumn<String> url = GeneratedColumn<String>(
    'url',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    $customConstraints: 'NOT NULL',
  );
  static const VerificationMeta _createdMeta = const VerificationMeta(
    'created',
  );
  late final GeneratedColumn<DateTime> created = GeneratedColumn<DateTime>(
    'created',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
    $customConstraints: 'NOT NULL',
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    isFavorite,
    name,
    status,
    species,
    type,
    gender,
    image,
    url,
    created,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'character_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<CharacterTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('is_favorite')) {
      context.handle(
        _isFavoriteMeta,
        isFavorite.isAcceptableOrUnknown(data['is_favorite']!, _isFavoriteMeta),
      );
    } else if (isInserting) {
      context.missing(_isFavoriteMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('status')) {
      context.handle(
        _statusMeta,
        status.isAcceptableOrUnknown(data['status']!, _statusMeta),
      );
    } else if (isInserting) {
      context.missing(_statusMeta);
    }
    if (data.containsKey('species')) {
      context.handle(
        _speciesMeta,
        species.isAcceptableOrUnknown(data['species']!, _speciesMeta),
      );
    } else if (isInserting) {
      context.missing(_speciesMeta);
    }
    if (data.containsKey('type')) {
      context.handle(
        _typeMeta,
        type.isAcceptableOrUnknown(data['type']!, _typeMeta),
      );
    } else if (isInserting) {
      context.missing(_typeMeta);
    }
    if (data.containsKey('gender')) {
      context.handle(
        _genderMeta,
        gender.isAcceptableOrUnknown(data['gender']!, _genderMeta),
      );
    } else if (isInserting) {
      context.missing(_genderMeta);
    }
    if (data.containsKey('image')) {
      context.handle(
        _imageMeta,
        image.isAcceptableOrUnknown(data['image']!, _imageMeta),
      );
    } else if (isInserting) {
      context.missing(_imageMeta);
    }
    if (data.containsKey('url')) {
      context.handle(
        _urlMeta,
        url.isAcceptableOrUnknown(data['url']!, _urlMeta),
      );
    } else if (isInserting) {
      context.missing(_urlMeta);
    }
    if (data.containsKey('created')) {
      context.handle(
        _createdMeta,
        created.isAcceptableOrUnknown(data['created']!, _createdMeta),
      );
    } else if (isInserting) {
      context.missing(_createdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  CharacterTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CharacterTableData(
      id:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}id'],
          )!,
      isFavorite:
          attachedDatabase.typeMapping.read(
            DriftSqlType.bool,
            data['${effectivePrefix}is_favorite'],
          )!,
      name:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}name'],
          )!,
      status:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}status'],
          )!,
      species:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}species'],
          )!,
      type:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}type'],
          )!,
      gender:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}gender'],
          )!,
      image:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}image'],
          )!,
      url:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}url'],
          )!,
      created:
          attachedDatabase.typeMapping.read(
            DriftSqlType.dateTime,
            data['${effectivePrefix}created'],
          )!,
    );
  }

  @override
  CharacterTable createAlias(String alias) {
    return CharacterTable(attachedDatabase, alias);
  }

  @override
  List<String> get customConstraints => const ['PRIMARY KEY(id)'];
  @override
  bool get dontWriteConstraints => true;
}

class CharacterTableData extends DataClass
    implements Insertable<CharacterTableData> {
  final int id;
  final bool isFavorite;
  final String name;
  final String status;
  final String species;
  final String type;
  final String gender;
  final String image;
  final String url;
  final DateTime created;
  const CharacterTableData({
    required this.id,
    required this.isFavorite,
    required this.name,
    required this.status,
    required this.species,
    required this.type,
    required this.gender,
    required this.image,
    required this.url,
    required this.created,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['is_favorite'] = Variable<bool>(isFavorite);
    map['name'] = Variable<String>(name);
    map['status'] = Variable<String>(status);
    map['species'] = Variable<String>(species);
    map['type'] = Variable<String>(type);
    map['gender'] = Variable<String>(gender);
    map['image'] = Variable<String>(image);
    map['url'] = Variable<String>(url);
    map['created'] = Variable<DateTime>(created);
    return map;
  }

  CharacterTableCompanion toCompanion(bool nullToAbsent) {
    return CharacterTableCompanion(
      id: Value(id),
      isFavorite: Value(isFavorite),
      name: Value(name),
      status: Value(status),
      species: Value(species),
      type: Value(type),
      gender: Value(gender),
      image: Value(image),
      url: Value(url),
      created: Value(created),
    );
  }

  factory CharacterTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CharacterTableData(
      id: serializer.fromJson<int>(json['id']),
      isFavorite: serializer.fromJson<bool>(json['is_favorite']),
      name: serializer.fromJson<String>(json['name']),
      status: serializer.fromJson<String>(json['status']),
      species: serializer.fromJson<String>(json['species']),
      type: serializer.fromJson<String>(json['type']),
      gender: serializer.fromJson<String>(json['gender']),
      image: serializer.fromJson<String>(json['image']),
      url: serializer.fromJson<String>(json['url']),
      created: serializer.fromJson<DateTime>(json['created']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'is_favorite': serializer.toJson<bool>(isFavorite),
      'name': serializer.toJson<String>(name),
      'status': serializer.toJson<String>(status),
      'species': serializer.toJson<String>(species),
      'type': serializer.toJson<String>(type),
      'gender': serializer.toJson<String>(gender),
      'image': serializer.toJson<String>(image),
      'url': serializer.toJson<String>(url),
      'created': serializer.toJson<DateTime>(created),
    };
  }

  CharacterTableData copyWith({
    int? id,
    bool? isFavorite,
    String? name,
    String? status,
    String? species,
    String? type,
    String? gender,
    String? image,
    String? url,
    DateTime? created,
  }) => CharacterTableData(
    id: id ?? this.id,
    isFavorite: isFavorite ?? this.isFavorite,
    name: name ?? this.name,
    status: status ?? this.status,
    species: species ?? this.species,
    type: type ?? this.type,
    gender: gender ?? this.gender,
    image: image ?? this.image,
    url: url ?? this.url,
    created: created ?? this.created,
  );
  CharacterTableData copyWithCompanion(CharacterTableCompanion data) {
    return CharacterTableData(
      id: data.id.present ? data.id.value : this.id,
      isFavorite:
          data.isFavorite.present ? data.isFavorite.value : this.isFavorite,
      name: data.name.present ? data.name.value : this.name,
      status: data.status.present ? data.status.value : this.status,
      species: data.species.present ? data.species.value : this.species,
      type: data.type.present ? data.type.value : this.type,
      gender: data.gender.present ? data.gender.value : this.gender,
      image: data.image.present ? data.image.value : this.image,
      url: data.url.present ? data.url.value : this.url,
      created: data.created.present ? data.created.value : this.created,
    );
  }

  @override
  String toString() {
    return (StringBuffer('CharacterTableData(')
          ..write('id: $id, ')
          ..write('isFavorite: $isFavorite, ')
          ..write('name: $name, ')
          ..write('status: $status, ')
          ..write('species: $species, ')
          ..write('type: $type, ')
          ..write('gender: $gender, ')
          ..write('image: $image, ')
          ..write('url: $url, ')
          ..write('created: $created')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    isFavorite,
    name,
    status,
    species,
    type,
    gender,
    image,
    url,
    created,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CharacterTableData &&
          other.id == this.id &&
          other.isFavorite == this.isFavorite &&
          other.name == this.name &&
          other.status == this.status &&
          other.species == this.species &&
          other.type == this.type &&
          other.gender == this.gender &&
          other.image == this.image &&
          other.url == this.url &&
          other.created == this.created);
}

class CharacterTableCompanion extends UpdateCompanion<CharacterTableData> {
  final Value<int> id;
  final Value<bool> isFavorite;
  final Value<String> name;
  final Value<String> status;
  final Value<String> species;
  final Value<String> type;
  final Value<String> gender;
  final Value<String> image;
  final Value<String> url;
  final Value<DateTime> created;
  const CharacterTableCompanion({
    this.id = const Value.absent(),
    this.isFavorite = const Value.absent(),
    this.name = const Value.absent(),
    this.status = const Value.absent(),
    this.species = const Value.absent(),
    this.type = const Value.absent(),
    this.gender = const Value.absent(),
    this.image = const Value.absent(),
    this.url = const Value.absent(),
    this.created = const Value.absent(),
  });
  CharacterTableCompanion.insert({
    this.id = const Value.absent(),
    required bool isFavorite,
    required String name,
    required String status,
    required String species,
    required String type,
    required String gender,
    required String image,
    required String url,
    required DateTime created,
  }) : isFavorite = Value(isFavorite),
       name = Value(name),
       status = Value(status),
       species = Value(species),
       type = Value(type),
       gender = Value(gender),
       image = Value(image),
       url = Value(url),
       created = Value(created);
  static Insertable<CharacterTableData> custom({
    Expression<int>? id,
    Expression<bool>? isFavorite,
    Expression<String>? name,
    Expression<String>? status,
    Expression<String>? species,
    Expression<String>? type,
    Expression<String>? gender,
    Expression<String>? image,
    Expression<String>? url,
    Expression<DateTime>? created,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (isFavorite != null) 'is_favorite': isFavorite,
      if (name != null) 'name': name,
      if (status != null) 'status': status,
      if (species != null) 'species': species,
      if (type != null) 'type': type,
      if (gender != null) 'gender': gender,
      if (image != null) 'image': image,
      if (url != null) 'url': url,
      if (created != null) 'created': created,
    });
  }

  CharacterTableCompanion copyWith({
    Value<int>? id,
    Value<bool>? isFavorite,
    Value<String>? name,
    Value<String>? status,
    Value<String>? species,
    Value<String>? type,
    Value<String>? gender,
    Value<String>? image,
    Value<String>? url,
    Value<DateTime>? created,
  }) {
    return CharacterTableCompanion(
      id: id ?? this.id,
      isFavorite: isFavorite ?? this.isFavorite,
      name: name ?? this.name,
      status: status ?? this.status,
      species: species ?? this.species,
      type: type ?? this.type,
      gender: gender ?? this.gender,
      image: image ?? this.image,
      url: url ?? this.url,
      created: created ?? this.created,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (isFavorite.present) {
      map['is_favorite'] = Variable<bool>(isFavorite.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (status.present) {
      map['status'] = Variable<String>(status.value);
    }
    if (species.present) {
      map['species'] = Variable<String>(species.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    if (gender.present) {
      map['gender'] = Variable<String>(gender.value);
    }
    if (image.present) {
      map['image'] = Variable<String>(image.value);
    }
    if (url.present) {
      map['url'] = Variable<String>(url.value);
    }
    if (created.present) {
      map['created'] = Variable<DateTime>(created.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CharacterTableCompanion(')
          ..write('id: $id, ')
          ..write('isFavorite: $isFavorite, ')
          ..write('name: $name, ')
          ..write('status: $status, ')
          ..write('species: $species, ')
          ..write('type: $type, ')
          ..write('gender: $gender, ')
          ..write('image: $image, ')
          ..write('url: $url, ')
          ..write('created: $created')
          ..write(')'))
        .toString();
  }
}

abstract class _$LocalDatabase extends GeneratedDatabase {
  _$LocalDatabase(QueryExecutor e) : super(e);
  $LocalDatabaseManager get managers => $LocalDatabaseManager(this);
  late final CharacterTable characterTable = CharacterTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [characterTable];
}

typedef $CharacterTableCreateCompanionBuilder =
    CharacterTableCompanion Function({
      Value<int> id,
      required bool isFavorite,
      required String name,
      required String status,
      required String species,
      required String type,
      required String gender,
      required String image,
      required String url,
      required DateTime created,
    });
typedef $CharacterTableUpdateCompanionBuilder =
    CharacterTableCompanion Function({
      Value<int> id,
      Value<bool> isFavorite,
      Value<String> name,
      Value<String> status,
      Value<String> species,
      Value<String> type,
      Value<String> gender,
      Value<String> image,
      Value<String> url,
      Value<DateTime> created,
    });

class $CharacterTableFilterComposer
    extends Composer<_$LocalDatabase, CharacterTable> {
  $CharacterTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isFavorite => $composableBuilder(
    column: $table.isFavorite,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get species => $composableBuilder(
    column: $table.species,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get type => $composableBuilder(
    column: $table.type,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get gender => $composableBuilder(
    column: $table.gender,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get image => $composableBuilder(
    column: $table.image,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get url => $composableBuilder(
    column: $table.url,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get created => $composableBuilder(
    column: $table.created,
    builder: (column) => ColumnFilters(column),
  );
}

class $CharacterTableOrderingComposer
    extends Composer<_$LocalDatabase, CharacterTable> {
  $CharacterTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isFavorite => $composableBuilder(
    column: $table.isFavorite,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get species => $composableBuilder(
    column: $table.species,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get type => $composableBuilder(
    column: $table.type,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get gender => $composableBuilder(
    column: $table.gender,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get image => $composableBuilder(
    column: $table.image,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get url => $composableBuilder(
    column: $table.url,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get created => $composableBuilder(
    column: $table.created,
    builder: (column) => ColumnOrderings(column),
  );
}

class $CharacterTableAnnotationComposer
    extends Composer<_$LocalDatabase, CharacterTable> {
  $CharacterTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<bool> get isFavorite => $composableBuilder(
    column: $table.isFavorite,
    builder: (column) => column,
  );

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get status =>
      $composableBuilder(column: $table.status, builder: (column) => column);

  GeneratedColumn<String> get species =>
      $composableBuilder(column: $table.species, builder: (column) => column);

  GeneratedColumn<String> get type =>
      $composableBuilder(column: $table.type, builder: (column) => column);

  GeneratedColumn<String> get gender =>
      $composableBuilder(column: $table.gender, builder: (column) => column);

  GeneratedColumn<String> get image =>
      $composableBuilder(column: $table.image, builder: (column) => column);

  GeneratedColumn<String> get url =>
      $composableBuilder(column: $table.url, builder: (column) => column);

  GeneratedColumn<DateTime> get created =>
      $composableBuilder(column: $table.created, builder: (column) => column);
}

class $CharacterTableTableManager
    extends
        RootTableManager<
          _$LocalDatabase,
          CharacterTable,
          CharacterTableData,
          $CharacterTableFilterComposer,
          $CharacterTableOrderingComposer,
          $CharacterTableAnnotationComposer,
          $CharacterTableCreateCompanionBuilder,
          $CharacterTableUpdateCompanionBuilder,
          (
            CharacterTableData,
            BaseReferences<_$LocalDatabase, CharacterTable, CharacterTableData>,
          ),
          CharacterTableData,
          PrefetchHooks Function()
        > {
  $CharacterTableTableManager(_$LocalDatabase db, CharacterTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer:
              () => $CharacterTableFilterComposer($db: db, $table: table),
          createOrderingComposer:
              () => $CharacterTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer:
              () => $CharacterTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<bool> isFavorite = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<String> status = const Value.absent(),
                Value<String> species = const Value.absent(),
                Value<String> type = const Value.absent(),
                Value<String> gender = const Value.absent(),
                Value<String> image = const Value.absent(),
                Value<String> url = const Value.absent(),
                Value<DateTime> created = const Value.absent(),
              }) => CharacterTableCompanion(
                id: id,
                isFavorite: isFavorite,
                name: name,
                status: status,
                species: species,
                type: type,
                gender: gender,
                image: image,
                url: url,
                created: created,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required bool isFavorite,
                required String name,
                required String status,
                required String species,
                required String type,
                required String gender,
                required String image,
                required String url,
                required DateTime created,
              }) => CharacterTableCompanion.insert(
                id: id,
                isFavorite: isFavorite,
                name: name,
                status: status,
                species: species,
                type: type,
                gender: gender,
                image: image,
                url: url,
                created: created,
              ),
          withReferenceMapper:
              (p0) =>
                  p0
                      .map(
                        (e) => (
                          e.readTable(table),
                          BaseReferences(db, table, e),
                        ),
                      )
                      .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $CharacterTableProcessedTableManager =
    ProcessedTableManager<
      _$LocalDatabase,
      CharacterTable,
      CharacterTableData,
      $CharacterTableFilterComposer,
      $CharacterTableOrderingComposer,
      $CharacterTableAnnotationComposer,
      $CharacterTableCreateCompanionBuilder,
      $CharacterTableUpdateCompanionBuilder,
      (
        CharacterTableData,
        BaseReferences<_$LocalDatabase, CharacterTable, CharacterTableData>,
      ),
      CharacterTableData,
      PrefetchHooks Function()
    >;

class $LocalDatabaseManager {
  final _$LocalDatabase _db;
  $LocalDatabaseManager(this._db);
  $CharacterTableTableManager get characterTable =>
      $CharacterTableTableManager(_db, _db.characterTable);
}

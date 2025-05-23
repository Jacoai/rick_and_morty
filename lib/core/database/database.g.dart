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
  static const VerificationMeta _originIdMeta = const VerificationMeta(
    'originId',
  );
  late final GeneratedColumn<Uint8List> originId = GeneratedColumn<Uint8List>(
    'origin_id',
    aliasedName,
    true,
    type: DriftSqlType.blob,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  static const VerificationMeta _locationIdMeta = const VerificationMeta(
    'locationId',
  );
  late final GeneratedColumn<Uint8List> locationId = GeneratedColumn<Uint8List>(
    'location_id',
    aliasedName,
    true,
    type: DriftSqlType.blob,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    name,
    status,
    species,
    type,
    gender,
    image,
    url,
    created,
    originId,
    locationId,
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
    if (data.containsKey('origin_id')) {
      context.handle(
        _originIdMeta,
        originId.isAcceptableOrUnknown(data['origin_id']!, _originIdMeta),
      );
    }
    if (data.containsKey('location_id')) {
      context.handle(
        _locationIdMeta,
        locationId.isAcceptableOrUnknown(data['location_id']!, _locationIdMeta),
      );
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
      originId: attachedDatabase.typeMapping.read(
        DriftSqlType.blob,
        data['${effectivePrefix}origin_id'],
      ),
      locationId: attachedDatabase.typeMapping.read(
        DriftSqlType.blob,
        data['${effectivePrefix}location_id'],
      ),
    );
  }

  @override
  CharacterTable createAlias(String alias) {
    return CharacterTable(attachedDatabase, alias);
  }

  @override
  List<String> get customConstraints => const [
    'PRIMARY KEY(id)',
    'FOREIGN KEY(origin_id)REFERENCES location_table(id)',
    'FOREIGN KEY(location_id)REFERENCES location_table(id)',
  ];
  @override
  bool get dontWriteConstraints => true;
}

class CharacterTableData extends DataClass
    implements Insertable<CharacterTableData> {
  final int id;
  final String name;
  final String status;
  final String species;
  final String type;
  final String gender;
  final String image;
  final String url;
  final DateTime created;
  final Uint8List? originId;
  final Uint8List? locationId;
  const CharacterTableData({
    required this.id,
    required this.name,
    required this.status,
    required this.species,
    required this.type,
    required this.gender,
    required this.image,
    required this.url,
    required this.created,
    this.originId,
    this.locationId,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    map['status'] = Variable<String>(status);
    map['species'] = Variable<String>(species);
    map['type'] = Variable<String>(type);
    map['gender'] = Variable<String>(gender);
    map['image'] = Variable<String>(image);
    map['url'] = Variable<String>(url);
    map['created'] = Variable<DateTime>(created);
    if (!nullToAbsent || originId != null) {
      map['origin_id'] = Variable<Uint8List>(originId);
    }
    if (!nullToAbsent || locationId != null) {
      map['location_id'] = Variable<Uint8List>(locationId);
    }
    return map;
  }

  CharacterTableCompanion toCompanion(bool nullToAbsent) {
    return CharacterTableCompanion(
      id: Value(id),
      name: Value(name),
      status: Value(status),
      species: Value(species),
      type: Value(type),
      gender: Value(gender),
      image: Value(image),
      url: Value(url),
      created: Value(created),
      originId:
          originId == null && nullToAbsent
              ? const Value.absent()
              : Value(originId),
      locationId:
          locationId == null && nullToAbsent
              ? const Value.absent()
              : Value(locationId),
    );
  }

  factory CharacterTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CharacterTableData(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      status: serializer.fromJson<String>(json['status']),
      species: serializer.fromJson<String>(json['species']),
      type: serializer.fromJson<String>(json['type']),
      gender: serializer.fromJson<String>(json['gender']),
      image: serializer.fromJson<String>(json['image']),
      url: serializer.fromJson<String>(json['url']),
      created: serializer.fromJson<DateTime>(json['created']),
      originId: serializer.fromJson<Uint8List?>(json['origin_id']),
      locationId: serializer.fromJson<Uint8List?>(json['location_id']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'status': serializer.toJson<String>(status),
      'species': serializer.toJson<String>(species),
      'type': serializer.toJson<String>(type),
      'gender': serializer.toJson<String>(gender),
      'image': serializer.toJson<String>(image),
      'url': serializer.toJson<String>(url),
      'created': serializer.toJson<DateTime>(created),
      'origin_id': serializer.toJson<Uint8List?>(originId),
      'location_id': serializer.toJson<Uint8List?>(locationId),
    };
  }

  CharacterTableData copyWith({
    int? id,
    String? name,
    String? status,
    String? species,
    String? type,
    String? gender,
    String? image,
    String? url,
    DateTime? created,
    Value<Uint8List?> originId = const Value.absent(),
    Value<Uint8List?> locationId = const Value.absent(),
  }) => CharacterTableData(
    id: id ?? this.id,
    name: name ?? this.name,
    status: status ?? this.status,
    species: species ?? this.species,
    type: type ?? this.type,
    gender: gender ?? this.gender,
    image: image ?? this.image,
    url: url ?? this.url,
    created: created ?? this.created,
    originId: originId.present ? originId.value : this.originId,
    locationId: locationId.present ? locationId.value : this.locationId,
  );
  CharacterTableData copyWithCompanion(CharacterTableCompanion data) {
    return CharacterTableData(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      status: data.status.present ? data.status.value : this.status,
      species: data.species.present ? data.species.value : this.species,
      type: data.type.present ? data.type.value : this.type,
      gender: data.gender.present ? data.gender.value : this.gender,
      image: data.image.present ? data.image.value : this.image,
      url: data.url.present ? data.url.value : this.url,
      created: data.created.present ? data.created.value : this.created,
      originId: data.originId.present ? data.originId.value : this.originId,
      locationId:
          data.locationId.present ? data.locationId.value : this.locationId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('CharacterTableData(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('status: $status, ')
          ..write('species: $species, ')
          ..write('type: $type, ')
          ..write('gender: $gender, ')
          ..write('image: $image, ')
          ..write('url: $url, ')
          ..write('created: $created, ')
          ..write('originId: $originId, ')
          ..write('locationId: $locationId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    name,
    status,
    species,
    type,
    gender,
    image,
    url,
    created,
    $driftBlobEquality.hash(originId),
    $driftBlobEquality.hash(locationId),
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CharacterTableData &&
          other.id == this.id &&
          other.name == this.name &&
          other.status == this.status &&
          other.species == this.species &&
          other.type == this.type &&
          other.gender == this.gender &&
          other.image == this.image &&
          other.url == this.url &&
          other.created == this.created &&
          $driftBlobEquality.equals(other.originId, this.originId) &&
          $driftBlobEquality.equals(other.locationId, this.locationId));
}

class CharacterTableCompanion extends UpdateCompanion<CharacterTableData> {
  final Value<int> id;
  final Value<String> name;
  final Value<String> status;
  final Value<String> species;
  final Value<String> type;
  final Value<String> gender;
  final Value<String> image;
  final Value<String> url;
  final Value<DateTime> created;
  final Value<Uint8List?> originId;
  final Value<Uint8List?> locationId;
  const CharacterTableCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.status = const Value.absent(),
    this.species = const Value.absent(),
    this.type = const Value.absent(),
    this.gender = const Value.absent(),
    this.image = const Value.absent(),
    this.url = const Value.absent(),
    this.created = const Value.absent(),
    this.originId = const Value.absent(),
    this.locationId = const Value.absent(),
  });
  CharacterTableCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    required String status,
    required String species,
    required String type,
    required String gender,
    required String image,
    required String url,
    required DateTime created,
    this.originId = const Value.absent(),
    this.locationId = const Value.absent(),
  }) : name = Value(name),
       status = Value(status),
       species = Value(species),
       type = Value(type),
       gender = Value(gender),
       image = Value(image),
       url = Value(url),
       created = Value(created);
  static Insertable<CharacterTableData> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? status,
    Expression<String>? species,
    Expression<String>? type,
    Expression<String>? gender,
    Expression<String>? image,
    Expression<String>? url,
    Expression<DateTime>? created,
    Expression<Uint8List>? originId,
    Expression<Uint8List>? locationId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (status != null) 'status': status,
      if (species != null) 'species': species,
      if (type != null) 'type': type,
      if (gender != null) 'gender': gender,
      if (image != null) 'image': image,
      if (url != null) 'url': url,
      if (created != null) 'created': created,
      if (originId != null) 'origin_id': originId,
      if (locationId != null) 'location_id': locationId,
    });
  }

  CharacterTableCompanion copyWith({
    Value<int>? id,
    Value<String>? name,
    Value<String>? status,
    Value<String>? species,
    Value<String>? type,
    Value<String>? gender,
    Value<String>? image,
    Value<String>? url,
    Value<DateTime>? created,
    Value<Uint8List?>? originId,
    Value<Uint8List?>? locationId,
  }) {
    return CharacterTableCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      status: status ?? this.status,
      species: species ?? this.species,
      type: type ?? this.type,
      gender: gender ?? this.gender,
      image: image ?? this.image,
      url: url ?? this.url,
      created: created ?? this.created,
      originId: originId ?? this.originId,
      locationId: locationId ?? this.locationId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
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
    if (originId.present) {
      map['origin_id'] = Variable<Uint8List>(originId.value);
    }
    if (locationId.present) {
      map['location_id'] = Variable<Uint8List>(locationId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CharacterTableCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('status: $status, ')
          ..write('species: $species, ')
          ..write('type: $type, ')
          ..write('gender: $gender, ')
          ..write('image: $image, ')
          ..write('url: $url, ')
          ..write('created: $created, ')
          ..write('originId: $originId, ')
          ..write('locationId: $locationId')
          ..write(')'))
        .toString();
  }
}

class LocationTable extends Table
    with TableInfo<LocationTable, LocationTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  LocationTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
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
  static const VerificationMeta _typeMeta = const VerificationMeta('type');
  late final GeneratedColumn<String> type = GeneratedColumn<String>(
    'type',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  static const VerificationMeta _dimensionMeta = const VerificationMeta(
    'dimension',
  );
  late final GeneratedColumn<String> dimension = GeneratedColumn<String>(
    'dimension',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  static const VerificationMeta _urlMeta = const VerificationMeta('url');
  late final GeneratedColumn<String> url = GeneratedColumn<String>(
    'url',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  static const VerificationMeta _createdMeta = const VerificationMeta(
    'created',
  );
  late final GeneratedColumn<DateTime> created = GeneratedColumn<DateTime>(
    'created',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    name,
    type,
    dimension,
    url,
    created,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'location_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<LocationTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('type')) {
      context.handle(
        _typeMeta,
        type.isAcceptableOrUnknown(data['type']!, _typeMeta),
      );
    }
    if (data.containsKey('dimension')) {
      context.handle(
        _dimensionMeta,
        dimension.isAcceptableOrUnknown(data['dimension']!, _dimensionMeta),
      );
    }
    if (data.containsKey('url')) {
      context.handle(
        _urlMeta,
        url.isAcceptableOrUnknown(data['url']!, _urlMeta),
      );
    }
    if (data.containsKey('created')) {
      context.handle(
        _createdMeta,
        created.isAcceptableOrUnknown(data['created']!, _createdMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  LocationTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return LocationTableData(
      id:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}id'],
          )!,
      name:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}name'],
          )!,
      type: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}type'],
      ),
      dimension: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}dimension'],
      ),
      url: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}url'],
      ),
      created: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created'],
      ),
    );
  }

  @override
  LocationTable createAlias(String alias) {
    return LocationTable(attachedDatabase, alias);
  }

  @override
  List<String> get customConstraints => const ['PRIMARY KEY(id)'];
  @override
  bool get dontWriteConstraints => true;
}

class LocationTableData extends DataClass
    implements Insertable<LocationTableData> {
  final int id;
  final String name;
  final String? type;
  final String? dimension;
  final String? url;
  final DateTime? created;
  const LocationTableData({
    required this.id,
    required this.name,
    this.type,
    this.dimension,
    this.url,
    this.created,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    if (!nullToAbsent || type != null) {
      map['type'] = Variable<String>(type);
    }
    if (!nullToAbsent || dimension != null) {
      map['dimension'] = Variable<String>(dimension);
    }
    if (!nullToAbsent || url != null) {
      map['url'] = Variable<String>(url);
    }
    if (!nullToAbsent || created != null) {
      map['created'] = Variable<DateTime>(created);
    }
    return map;
  }

  LocationTableCompanion toCompanion(bool nullToAbsent) {
    return LocationTableCompanion(
      id: Value(id),
      name: Value(name),
      type: type == null && nullToAbsent ? const Value.absent() : Value(type),
      dimension:
          dimension == null && nullToAbsent
              ? const Value.absent()
              : Value(dimension),
      url: url == null && nullToAbsent ? const Value.absent() : Value(url),
      created:
          created == null && nullToAbsent
              ? const Value.absent()
              : Value(created),
    );
  }

  factory LocationTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return LocationTableData(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      type: serializer.fromJson<String?>(json['type']),
      dimension: serializer.fromJson<String?>(json['dimension']),
      url: serializer.fromJson<String?>(json['url']),
      created: serializer.fromJson<DateTime?>(json['created']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'type': serializer.toJson<String?>(type),
      'dimension': serializer.toJson<String?>(dimension),
      'url': serializer.toJson<String?>(url),
      'created': serializer.toJson<DateTime?>(created),
    };
  }

  LocationTableData copyWith({
    int? id,
    String? name,
    Value<String?> type = const Value.absent(),
    Value<String?> dimension = const Value.absent(),
    Value<String?> url = const Value.absent(),
    Value<DateTime?> created = const Value.absent(),
  }) => LocationTableData(
    id: id ?? this.id,
    name: name ?? this.name,
    type: type.present ? type.value : this.type,
    dimension: dimension.present ? dimension.value : this.dimension,
    url: url.present ? url.value : this.url,
    created: created.present ? created.value : this.created,
  );
  LocationTableData copyWithCompanion(LocationTableCompanion data) {
    return LocationTableData(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      type: data.type.present ? data.type.value : this.type,
      dimension: data.dimension.present ? data.dimension.value : this.dimension,
      url: data.url.present ? data.url.value : this.url,
      created: data.created.present ? data.created.value : this.created,
    );
  }

  @override
  String toString() {
    return (StringBuffer('LocationTableData(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('type: $type, ')
          ..write('dimension: $dimension, ')
          ..write('url: $url, ')
          ..write('created: $created')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, type, dimension, url, created);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is LocationTableData &&
          other.id == this.id &&
          other.name == this.name &&
          other.type == this.type &&
          other.dimension == this.dimension &&
          other.url == this.url &&
          other.created == this.created);
}

class LocationTableCompanion extends UpdateCompanion<LocationTableData> {
  final Value<int> id;
  final Value<String> name;
  final Value<String?> type;
  final Value<String?> dimension;
  final Value<String?> url;
  final Value<DateTime?> created;
  const LocationTableCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.type = const Value.absent(),
    this.dimension = const Value.absent(),
    this.url = const Value.absent(),
    this.created = const Value.absent(),
  });
  LocationTableCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    this.type = const Value.absent(),
    this.dimension = const Value.absent(),
    this.url = const Value.absent(),
    this.created = const Value.absent(),
  }) : name = Value(name);
  static Insertable<LocationTableData> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? type,
    Expression<String>? dimension,
    Expression<String>? url,
    Expression<DateTime>? created,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (type != null) 'type': type,
      if (dimension != null) 'dimension': dimension,
      if (url != null) 'url': url,
      if (created != null) 'created': created,
    });
  }

  LocationTableCompanion copyWith({
    Value<int>? id,
    Value<String>? name,
    Value<String?>? type,
    Value<String?>? dimension,
    Value<String?>? url,
    Value<DateTime?>? created,
  }) {
    return LocationTableCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      type: type ?? this.type,
      dimension: dimension ?? this.dimension,
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
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    if (dimension.present) {
      map['dimension'] = Variable<String>(dimension.value);
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
    return (StringBuffer('LocationTableCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('type: $type, ')
          ..write('dimension: $dimension, ')
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
  late final LocationTable locationTable = LocationTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
    characterTable,
    locationTable,
  ];
}

typedef $CharacterTableCreateCompanionBuilder =
    CharacterTableCompanion Function({
      Value<int> id,
      required String name,
      required String status,
      required String species,
      required String type,
      required String gender,
      required String image,
      required String url,
      required DateTime created,
      Value<Uint8List?> originId,
      Value<Uint8List?> locationId,
    });
typedef $CharacterTableUpdateCompanionBuilder =
    CharacterTableCompanion Function({
      Value<int> id,
      Value<String> name,
      Value<String> status,
      Value<String> species,
      Value<String> type,
      Value<String> gender,
      Value<String> image,
      Value<String> url,
      Value<DateTime> created,
      Value<Uint8List?> originId,
      Value<Uint8List?> locationId,
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

  ColumnFilters<Uint8List> get originId => $composableBuilder(
    column: $table.originId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<Uint8List> get locationId => $composableBuilder(
    column: $table.locationId,
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

  ColumnOrderings<Uint8List> get originId => $composableBuilder(
    column: $table.originId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<Uint8List> get locationId => $composableBuilder(
    column: $table.locationId,
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

  GeneratedColumn<Uint8List> get originId =>
      $composableBuilder(column: $table.originId, builder: (column) => column);

  GeneratedColumn<Uint8List> get locationId => $composableBuilder(
    column: $table.locationId,
    builder: (column) => column,
  );
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
                Value<String> name = const Value.absent(),
                Value<String> status = const Value.absent(),
                Value<String> species = const Value.absent(),
                Value<String> type = const Value.absent(),
                Value<String> gender = const Value.absent(),
                Value<String> image = const Value.absent(),
                Value<String> url = const Value.absent(),
                Value<DateTime> created = const Value.absent(),
                Value<Uint8List?> originId = const Value.absent(),
                Value<Uint8List?> locationId = const Value.absent(),
              }) => CharacterTableCompanion(
                id: id,
                name: name,
                status: status,
                species: species,
                type: type,
                gender: gender,
                image: image,
                url: url,
                created: created,
                originId: originId,
                locationId: locationId,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String name,
                required String status,
                required String species,
                required String type,
                required String gender,
                required String image,
                required String url,
                required DateTime created,
                Value<Uint8List?> originId = const Value.absent(),
                Value<Uint8List?> locationId = const Value.absent(),
              }) => CharacterTableCompanion.insert(
                id: id,
                name: name,
                status: status,
                species: species,
                type: type,
                gender: gender,
                image: image,
                url: url,
                created: created,
                originId: originId,
                locationId: locationId,
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
typedef $LocationTableCreateCompanionBuilder =
    LocationTableCompanion Function({
      Value<int> id,
      required String name,
      Value<String?> type,
      Value<String?> dimension,
      Value<String?> url,
      Value<DateTime?> created,
    });
typedef $LocationTableUpdateCompanionBuilder =
    LocationTableCompanion Function({
      Value<int> id,
      Value<String> name,
      Value<String?> type,
      Value<String?> dimension,
      Value<String?> url,
      Value<DateTime?> created,
    });

class $LocationTableFilterComposer
    extends Composer<_$LocalDatabase, LocationTable> {
  $LocationTableFilterComposer({
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

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get type => $composableBuilder(
    column: $table.type,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get dimension => $composableBuilder(
    column: $table.dimension,
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

class $LocationTableOrderingComposer
    extends Composer<_$LocalDatabase, LocationTable> {
  $LocationTableOrderingComposer({
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

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get type => $composableBuilder(
    column: $table.type,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get dimension => $composableBuilder(
    column: $table.dimension,
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

class $LocationTableAnnotationComposer
    extends Composer<_$LocalDatabase, LocationTable> {
  $LocationTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get type =>
      $composableBuilder(column: $table.type, builder: (column) => column);

  GeneratedColumn<String> get dimension =>
      $composableBuilder(column: $table.dimension, builder: (column) => column);

  GeneratedColumn<String> get url =>
      $composableBuilder(column: $table.url, builder: (column) => column);

  GeneratedColumn<DateTime> get created =>
      $composableBuilder(column: $table.created, builder: (column) => column);
}

class $LocationTableTableManager
    extends
        RootTableManager<
          _$LocalDatabase,
          LocationTable,
          LocationTableData,
          $LocationTableFilterComposer,
          $LocationTableOrderingComposer,
          $LocationTableAnnotationComposer,
          $LocationTableCreateCompanionBuilder,
          $LocationTableUpdateCompanionBuilder,
          (
            LocationTableData,
            BaseReferences<_$LocalDatabase, LocationTable, LocationTableData>,
          ),
          LocationTableData,
          PrefetchHooks Function()
        > {
  $LocationTableTableManager(_$LocalDatabase db, LocationTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer:
              () => $LocationTableFilterComposer($db: db, $table: table),
          createOrderingComposer:
              () => $LocationTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer:
              () => $LocationTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<String?> type = const Value.absent(),
                Value<String?> dimension = const Value.absent(),
                Value<String?> url = const Value.absent(),
                Value<DateTime?> created = const Value.absent(),
              }) => LocationTableCompanion(
                id: id,
                name: name,
                type: type,
                dimension: dimension,
                url: url,
                created: created,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String name,
                Value<String?> type = const Value.absent(),
                Value<String?> dimension = const Value.absent(),
                Value<String?> url = const Value.absent(),
                Value<DateTime?> created = const Value.absent(),
              }) => LocationTableCompanion.insert(
                id: id,
                name: name,
                type: type,
                dimension: dimension,
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

typedef $LocationTableProcessedTableManager =
    ProcessedTableManager<
      _$LocalDatabase,
      LocationTable,
      LocationTableData,
      $LocationTableFilterComposer,
      $LocationTableOrderingComposer,
      $LocationTableAnnotationComposer,
      $LocationTableCreateCompanionBuilder,
      $LocationTableUpdateCompanionBuilder,
      (
        LocationTableData,
        BaseReferences<_$LocalDatabase, LocationTable, LocationTableData>,
      ),
      LocationTableData,
      PrefetchHooks Function()
    >;

class $LocalDatabaseManager {
  final _$LocalDatabase _db;
  $LocalDatabaseManager(this._db);
  $CharacterTableTableManager get characterTable =>
      $CharacterTableTableManager(_db, _db.characterTable);
  $LocationTableTableManager get locationTable =>
      $LocationTableTableManager(_db, _db.locationTable);
}

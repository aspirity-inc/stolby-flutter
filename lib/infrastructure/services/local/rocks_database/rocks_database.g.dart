// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rocks_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class Rock extends DataClass implements Insertable<Rock> {
  final int id;
  final double latitude;
  final double longitude;
  final int height;
  final String pic_name;
  Rock(
      {required this.id,
      required this.latitude,
      required this.longitude,
      required this.height,
      required this.pic_name});
  factory Rock.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Rock(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      latitude: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}latitude'])!,
      longitude: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}longitude'])!,
      height: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}height'])!,
      pic_name: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}PicName'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['latitude'] = Variable<double>(latitude);
    map['longitude'] = Variable<double>(longitude);
    map['height'] = Variable<int>(height);
    map['PicName'] = Variable<String>(pic_name);
    return map;
  }

  RocksCompanion toCompanion(bool nullToAbsent) {
    return RocksCompanion(
      id: Value(id),
      latitude: Value(latitude),
      longitude: Value(longitude),
      height: Value(height),
      pic_name: Value(pic_name),
    );
  }

  factory Rock.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Rock(
      id: serializer.fromJson<int>(json['id']),
      latitude: serializer.fromJson<double>(json['latitude']),
      longitude: serializer.fromJson<double>(json['longitude']),
      height: serializer.fromJson<int>(json['height']),
      pic_name: serializer.fromJson<String>(json['pic_name']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'latitude': serializer.toJson<double>(latitude),
      'longitude': serializer.toJson<double>(longitude),
      'height': serializer.toJson<int>(height),
      'pic_name': serializer.toJson<String>(pic_name),
    };
  }

  Rock copyWith(
          {int? id,
          double? latitude,
          double? longitude,
          int? height,
          String? pic_name}) =>
      Rock(
        id: id ?? this.id,
        latitude: latitude ?? this.latitude,
        longitude: longitude ?? this.longitude,
        height: height ?? this.height,
        pic_name: pic_name ?? this.pic_name,
      );
  @override
  String toString() {
    return (StringBuffer('Rock(')
          ..write('id: $id, ')
          ..write('latitude: $latitude, ')
          ..write('longitude: $longitude, ')
          ..write('height: $height, ')
          ..write('pic_name: $pic_name')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, latitude, longitude, height, pic_name);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Rock &&
          other.id == this.id &&
          other.latitude == this.latitude &&
          other.longitude == this.longitude &&
          other.height == this.height &&
          other.pic_name == this.pic_name);
}

class RocksCompanion extends UpdateCompanion<Rock> {
  final Value<int> id;
  final Value<double> latitude;
  final Value<double> longitude;
  final Value<int> height;
  final Value<String> pic_name;
  const RocksCompanion({
    this.id = const Value.absent(),
    this.latitude = const Value.absent(),
    this.longitude = const Value.absent(),
    this.height = const Value.absent(),
    this.pic_name = const Value.absent(),
  });
  RocksCompanion.insert({
    this.id = const Value.absent(),
    required double latitude,
    required double longitude,
    required int height,
    required String pic_name,
  })  : latitude = Value(latitude),
        longitude = Value(longitude),
        height = Value(height),
        pic_name = Value(pic_name);
  static Insertable<Rock> custom({
    Expression<int>? id,
    Expression<double>? latitude,
    Expression<double>? longitude,
    Expression<int>? height,
    Expression<String>? pic_name,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (latitude != null) 'latitude': latitude,
      if (longitude != null) 'longitude': longitude,
      if (height != null) 'height': height,
      if (pic_name != null) 'PicName': pic_name,
    });
  }

  RocksCompanion copyWith(
      {Value<int>? id,
      Value<double>? latitude,
      Value<double>? longitude,
      Value<int>? height,
      Value<String>? pic_name}) {
    return RocksCompanion(
      id: id ?? this.id,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      height: height ?? this.height,
      pic_name: pic_name ?? this.pic_name,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (latitude.present) {
      map['latitude'] = Variable<double>(latitude.value);
    }
    if (longitude.present) {
      map['longitude'] = Variable<double>(longitude.value);
    }
    if (height.present) {
      map['height'] = Variable<int>(height.value);
    }
    if (pic_name.present) {
      map['PicName'] = Variable<String>(pic_name.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('RocksCompanion(')
          ..write('id: $id, ')
          ..write('latitude: $latitude, ')
          ..write('longitude: $longitude, ')
          ..write('height: $height, ')
          ..write('pic_name: $pic_name')
          ..write(')'))
        .toString();
  }
}

class $RocksTable extends Rocks with TableInfo<$RocksTable, Rock> {
  final GeneratedDatabase _db;
  final String? _alias;
  $RocksTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      typeName: 'INTEGER', requiredDuringInsert: false);
  final VerificationMeta _latitudeMeta = const VerificationMeta('latitude');
  late final GeneratedColumn<double?> latitude = GeneratedColumn<double?>(
      'latitude', aliasedName, false,
      typeName: 'REAL', requiredDuringInsert: true);
  final VerificationMeta _longitudeMeta = const VerificationMeta('longitude');
  late final GeneratedColumn<double?> longitude = GeneratedColumn<double?>(
      'longitude', aliasedName, false,
      typeName: 'REAL', requiredDuringInsert: true);
  final VerificationMeta _heightMeta = const VerificationMeta('height');
  late final GeneratedColumn<int?> height = GeneratedColumn<int?>(
      'height', aliasedName, false,
      typeName: 'INTEGER', requiredDuringInsert: true);
  final VerificationMeta _pic_nameMeta = const VerificationMeta('pic_name');
  late final GeneratedColumn<String?> pic_name = GeneratedColumn<String?>(
      'PicName', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, latitude, longitude, height, pic_name];
  @override
  String get aliasedName => _alias ?? 'rocks';
  @override
  String get actualTableName => 'rocks';
  @override
  VerificationContext validateIntegrity(Insertable<Rock> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('latitude')) {
      context.handle(_latitudeMeta,
          latitude.isAcceptableOrUnknown(data['latitude']!, _latitudeMeta));
    } else if (isInserting) {
      context.missing(_latitudeMeta);
    }
    if (data.containsKey('longitude')) {
      context.handle(_longitudeMeta,
          longitude.isAcceptableOrUnknown(data['longitude']!, _longitudeMeta));
    } else if (isInserting) {
      context.missing(_longitudeMeta);
    }
    if (data.containsKey('height')) {
      context.handle(_heightMeta,
          height.isAcceptableOrUnknown(data['height']!, _heightMeta));
    } else if (isInserting) {
      context.missing(_heightMeta);
    }
    if (data.containsKey('PicName')) {
      context.handle(_pic_nameMeta,
          pic_name.isAcceptableOrUnknown(data['PicName']!, _pic_nameMeta));
    } else if (isInserting) {
      context.missing(_pic_nameMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Rock map(Map<String, dynamic> data, {String? tablePrefix}) {
    return Rock.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $RocksTable createAlias(String alias) {
    return $RocksTable(_db, alias);
  }
}

class RocksLocalizedData extends DataClass
    implements Insertable<RocksLocalizedData> {
  final int id;
  final int rock_id;
  final String language;
  final String short_info;
  final String full_info;
  RocksLocalizedData(
      {required this.id,
      required this.rock_id,
      required this.language,
      required this.short_info,
      required this.full_info});
  factory RocksLocalizedData.fromData(Map<String, dynamic> data,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return RocksLocalizedData(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      rock_id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}RockId'])!,
      language: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}language'])!,
      short_info: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}ShortInfo'])!,
      full_info: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}FullInfo'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['RockId'] = Variable<int>(rock_id);
    map['language'] = Variable<String>(language);
    map['ShortInfo'] = Variable<String>(short_info);
    map['FullInfo'] = Variable<String>(full_info);
    return map;
  }

  RocksLocalizedCompanion toCompanion(bool nullToAbsent) {
    return RocksLocalizedCompanion(
      id: Value(id),
      rock_id: Value(rock_id),
      language: Value(language),
      short_info: Value(short_info),
      full_info: Value(full_info),
    );
  }

  factory RocksLocalizedData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return RocksLocalizedData(
      id: serializer.fromJson<int>(json['id']),
      rock_id: serializer.fromJson<int>(json['rock_id']),
      language: serializer.fromJson<String>(json['language']),
      short_info: serializer.fromJson<String>(json['short_info']),
      full_info: serializer.fromJson<String>(json['full_info']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'rock_id': serializer.toJson<int>(rock_id),
      'language': serializer.toJson<String>(language),
      'short_info': serializer.toJson<String>(short_info),
      'full_info': serializer.toJson<String>(full_info),
    };
  }

  RocksLocalizedData copyWith(
          {int? id,
          int? rock_id,
          String? language,
          String? short_info,
          String? full_info}) =>
      RocksLocalizedData(
        id: id ?? this.id,
        rock_id: rock_id ?? this.rock_id,
        language: language ?? this.language,
        short_info: short_info ?? this.short_info,
        full_info: full_info ?? this.full_info,
      );
  @override
  String toString() {
    return (StringBuffer('RocksLocalizedData(')
          ..write('id: $id, ')
          ..write('rock_id: $rock_id, ')
          ..write('language: $language, ')
          ..write('short_info: $short_info, ')
          ..write('full_info: $full_info')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, rock_id, language, short_info, full_info);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is RocksLocalizedData &&
          other.id == this.id &&
          other.rock_id == this.rock_id &&
          other.language == this.language &&
          other.short_info == this.short_info &&
          other.full_info == this.full_info);
}

class RocksLocalizedCompanion extends UpdateCompanion<RocksLocalizedData> {
  final Value<int> id;
  final Value<int> rock_id;
  final Value<String> language;
  final Value<String> short_info;
  final Value<String> full_info;
  const RocksLocalizedCompanion({
    this.id = const Value.absent(),
    this.rock_id = const Value.absent(),
    this.language = const Value.absent(),
    this.short_info = const Value.absent(),
    this.full_info = const Value.absent(),
  });
  RocksLocalizedCompanion.insert({
    this.id = const Value.absent(),
    required int rock_id,
    required String language,
    required String short_info,
    required String full_info,
  })  : rock_id = Value(rock_id),
        language = Value(language),
        short_info = Value(short_info),
        full_info = Value(full_info);
  static Insertable<RocksLocalizedData> custom({
    Expression<int>? id,
    Expression<int>? rock_id,
    Expression<String>? language,
    Expression<String>? short_info,
    Expression<String>? full_info,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (rock_id != null) 'RockId': rock_id,
      if (language != null) 'language': language,
      if (short_info != null) 'ShortInfo': short_info,
      if (full_info != null) 'FullInfo': full_info,
    });
  }

  RocksLocalizedCompanion copyWith(
      {Value<int>? id,
      Value<int>? rock_id,
      Value<String>? language,
      Value<String>? short_info,
      Value<String>? full_info}) {
    return RocksLocalizedCompanion(
      id: id ?? this.id,
      rock_id: rock_id ?? this.rock_id,
      language: language ?? this.language,
      short_info: short_info ?? this.short_info,
      full_info: full_info ?? this.full_info,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (rock_id.present) {
      map['RockId'] = Variable<int>(rock_id.value);
    }
    if (language.present) {
      map['language'] = Variable<String>(language.value);
    }
    if (short_info.present) {
      map['ShortInfo'] = Variable<String>(short_info.value);
    }
    if (full_info.present) {
      map['FullInfo'] = Variable<String>(full_info.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('RocksLocalizedCompanion(')
          ..write('id: $id, ')
          ..write('rock_id: $rock_id, ')
          ..write('language: $language, ')
          ..write('short_info: $short_info, ')
          ..write('full_info: $full_info')
          ..write(')'))
        .toString();
  }
}

class $RocksLocalizedTable extends RocksLocalized
    with TableInfo<$RocksLocalizedTable, RocksLocalizedData> {
  final GeneratedDatabase _db;
  final String? _alias;
  $RocksLocalizedTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      typeName: 'INTEGER', requiredDuringInsert: false);
  final VerificationMeta _rock_idMeta = const VerificationMeta('rock_id');
  late final GeneratedColumn<int?> rock_id = GeneratedColumn<int?>(
      'RockId', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL REFERENCES rocks(id)');
  final VerificationMeta _languageMeta = const VerificationMeta('language');
  late final GeneratedColumn<String?> language = GeneratedColumn<String?>(
      'language', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  final VerificationMeta _short_infoMeta = const VerificationMeta('short_info');
  late final GeneratedColumn<String?> short_info = GeneratedColumn<String?>(
      'ShortInfo', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  final VerificationMeta _full_infoMeta = const VerificationMeta('full_info');
  late final GeneratedColumn<String?> full_info = GeneratedColumn<String?>(
      'FullInfo', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, rock_id, language, short_info, full_info];
  @override
  String get aliasedName => _alias ?? 'rocks_localized';
  @override
  String get actualTableName => 'rocks_localized';
  @override
  VerificationContext validateIntegrity(Insertable<RocksLocalizedData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('RockId')) {
      context.handle(_rock_idMeta,
          rock_id.isAcceptableOrUnknown(data['RockId']!, _rock_idMeta));
    } else if (isInserting) {
      context.missing(_rock_idMeta);
    }
    if (data.containsKey('language')) {
      context.handle(_languageMeta,
          language.isAcceptableOrUnknown(data['language']!, _languageMeta));
    } else if (isInserting) {
      context.missing(_languageMeta);
    }
    if (data.containsKey('ShortInfo')) {
      context.handle(
          _short_infoMeta,
          short_info.isAcceptableOrUnknown(
              data['ShortInfo']!, _short_infoMeta));
    } else if (isInserting) {
      context.missing(_short_infoMeta);
    }
    if (data.containsKey('FullInfo')) {
      context.handle(_full_infoMeta,
          full_info.isAcceptableOrUnknown(data['FullInfo']!, _full_infoMeta));
    } else if (isInserting) {
      context.missing(_full_infoMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  RocksLocalizedData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return RocksLocalizedData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $RocksLocalizedTable createAlias(String alias) {
    return $RocksLocalizedTable(_db, alias);
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final $RocksTable rocks = $RocksTable(this);
  late final $RocksLocalizedTable rocksLocalized = $RocksLocalizedTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [rocks, rocksLocalized];
}

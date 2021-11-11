// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class Rock extends DataClass implements Insertable<Rock> {
  final int id;
  final double latitude;
  final double longitude;
  final int height;
  final String PicName;
  Rock(
      {required this.id,
      required this.latitude,
      required this.longitude,
      required this.height,
      required this.PicName});
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
      PicName: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}pic_name'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['latitude'] = Variable<double>(latitude);
    map['longitude'] = Variable<double>(longitude);
    map['height'] = Variable<int>(height);
    map['pic_name'] = Variable<String>(PicName);
    return map;
  }

  RocksCompanion toCompanion(bool nullToAbsent) {
    return RocksCompanion(
      id: Value(id),
      latitude: Value(latitude),
      longitude: Value(longitude),
      height: Value(height),
      PicName: Value(PicName),
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
      PicName: serializer.fromJson<String>(json['PicName']),
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
      'PicName': serializer.toJson<String>(PicName),
    };
  }

  Rock copyWith(
          {int? id,
          double? latitude,
          double? longitude,
          int? height,
          String? PicName}) =>
      Rock(
        id: id ?? this.id,
        latitude: latitude ?? this.latitude,
        longitude: longitude ?? this.longitude,
        height: height ?? this.height,
        PicName: PicName ?? this.PicName,
      );
  @override
  String toString() {
    return (StringBuffer('Rock(')
          ..write('id: $id, ')
          ..write('latitude: $latitude, ')
          ..write('longitude: $longitude, ')
          ..write('height: $height, ')
          ..write('PicName: $PicName')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, latitude, longitude, height, PicName);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Rock &&
          other.id == this.id &&
          other.latitude == this.latitude &&
          other.longitude == this.longitude &&
          other.height == this.height &&
          other.PicName == this.PicName);
}

class RocksCompanion extends UpdateCompanion<Rock> {
  final Value<int> id;
  final Value<double> latitude;
  final Value<double> longitude;
  final Value<int> height;
  final Value<String> PicName;
  const RocksCompanion({
    this.id = const Value.absent(),
    this.latitude = const Value.absent(),
    this.longitude = const Value.absent(),
    this.height = const Value.absent(),
    this.PicName = const Value.absent(),
  });
  RocksCompanion.insert({
    this.id = const Value.absent(),
    required double latitude,
    required double longitude,
    required int height,
    required String PicName,
  })  : latitude = Value(latitude),
        longitude = Value(longitude),
        height = Value(height),
        PicName = Value(PicName);
  static Insertable<Rock> custom({
    Expression<int>? id,
    Expression<double>? latitude,
    Expression<double>? longitude,
    Expression<int>? height,
    Expression<String>? PicName,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (latitude != null) 'latitude': latitude,
      if (longitude != null) 'longitude': longitude,
      if (height != null) 'height': height,
      if (PicName != null) 'pic_name': PicName,
    });
  }

  RocksCompanion copyWith(
      {Value<int>? id,
      Value<double>? latitude,
      Value<double>? longitude,
      Value<int>? height,
      Value<String>? PicName}) {
    return RocksCompanion(
      id: id ?? this.id,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      height: height ?? this.height,
      PicName: PicName ?? this.PicName,
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
    if (PicName.present) {
      map['pic_name'] = Variable<String>(PicName.value);
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
          ..write('PicName: $PicName')
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
  final VerificationMeta _PicNameMeta = const VerificationMeta('PicName');
  late final GeneratedColumn<String?> PicName = GeneratedColumn<String?>(
      'pic_name', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, latitude, longitude, height, PicName];
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
    if (data.containsKey('pic_name')) {
      context.handle(_PicNameMeta,
          PicName.isAcceptableOrUnknown(data['pic_name']!, _PicNameMeta));
    } else if (isInserting) {
      context.missing(_PicNameMeta);
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
  final int RockId;
  final String language;
  final String ShortInfo;
  final String FullInfo;
  RocksLocalizedData(
      {required this.id,
      required this.RockId,
      required this.language,
      required this.ShortInfo,
      required this.FullInfo});
  factory RocksLocalizedData.fromData(Map<String, dynamic> data,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return RocksLocalizedData(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      RockId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}rock_id'])!,
      language: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}language'])!,
      ShortInfo: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}short_info'])!,
      FullInfo: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}full_info'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['rock_id'] = Variable<int>(RockId);
    map['language'] = Variable<String>(language);
    map['short_info'] = Variable<String>(ShortInfo);
    map['full_info'] = Variable<String>(FullInfo);
    return map;
  }

  RocksLocalizedCompanion toCompanion(bool nullToAbsent) {
    return RocksLocalizedCompanion(
      id: Value(id),
      RockId: Value(RockId),
      language: Value(language),
      ShortInfo: Value(ShortInfo),
      FullInfo: Value(FullInfo),
    );
  }

  factory RocksLocalizedData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return RocksLocalizedData(
      id: serializer.fromJson<int>(json['id']),
      RockId: serializer.fromJson<int>(json['RockId']),
      language: serializer.fromJson<String>(json['language']),
      ShortInfo: serializer.fromJson<String>(json['ShortInfo']),
      FullInfo: serializer.fromJson<String>(json['FullInfo']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'RockId': serializer.toJson<int>(RockId),
      'language': serializer.toJson<String>(language),
      'ShortInfo': serializer.toJson<String>(ShortInfo),
      'FullInfo': serializer.toJson<String>(FullInfo),
    };
  }

  RocksLocalizedData copyWith(
          {int? id,
          int? RockId,
          String? language,
          String? ShortInfo,
          String? FullInfo}) =>
      RocksLocalizedData(
        id: id ?? this.id,
        RockId: RockId ?? this.RockId,
        language: language ?? this.language,
        ShortInfo: ShortInfo ?? this.ShortInfo,
        FullInfo: FullInfo ?? this.FullInfo,
      );
  @override
  String toString() {
    return (StringBuffer('RocksLocalizedData(')
          ..write('id: $id, ')
          ..write('RockId: $RockId, ')
          ..write('language: $language, ')
          ..write('ShortInfo: $ShortInfo, ')
          ..write('FullInfo: $FullInfo')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, RockId, language, ShortInfo, FullInfo);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is RocksLocalizedData &&
          other.id == this.id &&
          other.RockId == this.RockId &&
          other.language == this.language &&
          other.ShortInfo == this.ShortInfo &&
          other.FullInfo == this.FullInfo);
}

class RocksLocalizedCompanion extends UpdateCompanion<RocksLocalizedData> {
  final Value<int> id;
  final Value<int> RockId;
  final Value<String> language;
  final Value<String> ShortInfo;
  final Value<String> FullInfo;
  const RocksLocalizedCompanion({
    this.id = const Value.absent(),
    this.RockId = const Value.absent(),
    this.language = const Value.absent(),
    this.ShortInfo = const Value.absent(),
    this.FullInfo = const Value.absent(),
  });
  RocksLocalizedCompanion.insert({
    this.id = const Value.absent(),
    required int RockId,
    required String language,
    required String ShortInfo,
    required String FullInfo,
  })  : RockId = Value(RockId),
        language = Value(language),
        ShortInfo = Value(ShortInfo),
        FullInfo = Value(FullInfo);
  static Insertable<RocksLocalizedData> custom({
    Expression<int>? id,
    Expression<int>? RockId,
    Expression<String>? language,
    Expression<String>? ShortInfo,
    Expression<String>? FullInfo,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (RockId != null) 'rock_id': RockId,
      if (language != null) 'language': language,
      if (ShortInfo != null) 'short_info': ShortInfo,
      if (FullInfo != null) 'full_info': FullInfo,
    });
  }

  RocksLocalizedCompanion copyWith(
      {Value<int>? id,
      Value<int>? RockId,
      Value<String>? language,
      Value<String>? ShortInfo,
      Value<String>? FullInfo}) {
    return RocksLocalizedCompanion(
      id: id ?? this.id,
      RockId: RockId ?? this.RockId,
      language: language ?? this.language,
      ShortInfo: ShortInfo ?? this.ShortInfo,
      FullInfo: FullInfo ?? this.FullInfo,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (RockId.present) {
      map['rock_id'] = Variable<int>(RockId.value);
    }
    if (language.present) {
      map['language'] = Variable<String>(language.value);
    }
    if (ShortInfo.present) {
      map['short_info'] = Variable<String>(ShortInfo.value);
    }
    if (FullInfo.present) {
      map['full_info'] = Variable<String>(FullInfo.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('RocksLocalizedCompanion(')
          ..write('id: $id, ')
          ..write('RockId: $RockId, ')
          ..write('language: $language, ')
          ..write('ShortInfo: $ShortInfo, ')
          ..write('FullInfo: $FullInfo')
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
  final VerificationMeta _RockIdMeta = const VerificationMeta('RockId');
  late final GeneratedColumn<int?> RockId = GeneratedColumn<int?>(
      'rock_id', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL REFERENCES rocks(id)');
  final VerificationMeta _languageMeta = const VerificationMeta('language');
  late final GeneratedColumn<String?> language = GeneratedColumn<String?>(
      'language', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  final VerificationMeta _ShortInfoMeta = const VerificationMeta('ShortInfo');
  late final GeneratedColumn<String?> ShortInfo = GeneratedColumn<String?>(
      'short_info', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  final VerificationMeta _FullInfoMeta = const VerificationMeta('FullInfo');
  late final GeneratedColumn<String?> FullInfo = GeneratedColumn<String?>(
      'full_info', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, RockId, language, ShortInfo, FullInfo];
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
    if (data.containsKey('rock_id')) {
      context.handle(_RockIdMeta,
          RockId.isAcceptableOrUnknown(data['rock_id']!, _RockIdMeta));
    } else if (isInserting) {
      context.missing(_RockIdMeta);
    }
    if (data.containsKey('language')) {
      context.handle(_languageMeta,
          language.isAcceptableOrUnknown(data['language']!, _languageMeta));
    } else if (isInserting) {
      context.missing(_languageMeta);
    }
    if (data.containsKey('short_info')) {
      context.handle(_ShortInfoMeta,
          ShortInfo.isAcceptableOrUnknown(data['short_info']!, _ShortInfoMeta));
    } else if (isInserting) {
      context.missing(_ShortInfoMeta);
    }
    if (data.containsKey('full_info')) {
      context.handle(_FullInfoMeta,
          FullInfo.isAcceptableOrUnknown(data['full_info']!, _FullInfoMeta));
    } else if (isInserting) {
      context.missing(_FullInfoMeta);
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

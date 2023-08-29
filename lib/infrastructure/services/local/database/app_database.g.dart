// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $RocksTable extends Rocks with TableInfo<$RocksTable, Rock> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $RocksTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _latitudeMeta =
      const VerificationMeta('latitude');
  @override
  late final GeneratedColumn<double> latitude = GeneratedColumn<double>(
      'latitude', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _longitudeMeta =
      const VerificationMeta('longitude');
  @override
  late final GeneratedColumn<double> longitude = GeneratedColumn<double>(
      'longitude', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _heightMeta = const VerificationMeta('height');
  @override
  late final GeneratedColumn<int> height = GeneratedColumn<int>(
      'height', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _difficultyMeta =
      const VerificationMeta('difficulty');
  @override
  late final GeneratedColumn<int> difficulty = GeneratedColumn<int>(
      'difficulty', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _picNameMeta =
      const VerificationMeta('picName');
  @override
  late final GeneratedColumn<String> picName = GeneratedColumn<String>(
      'pic_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, latitude, longitude, height, difficulty, picName];
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
    if (data.containsKey('difficulty')) {
      context.handle(
          _difficultyMeta,
          difficulty.isAcceptableOrUnknown(
              data['difficulty']!, _difficultyMeta));
    } else if (isInserting) {
      context.missing(_difficultyMeta);
    }
    if (data.containsKey('pic_name')) {
      context.handle(_picNameMeta,
          picName.isAcceptableOrUnknown(data['pic_name']!, _picNameMeta));
    } else if (isInserting) {
      context.missing(_picNameMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Rock map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Rock(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      latitude: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}latitude'])!,
      longitude: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}longitude'])!,
      height: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}height'])!,
      difficulty: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}difficulty'])!,
      picName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}pic_name'])!,
    );
  }

  @override
  $RocksTable createAlias(String alias) {
    return $RocksTable(attachedDatabase, alias);
  }
}

class Rock extends DataClass implements Insertable<Rock> {
  final int id;
  final double latitude;
  final double longitude;
  final int height;
  final int difficulty;
  final String picName;
  const Rock(
      {required this.id,
      required this.latitude,
      required this.longitude,
      required this.height,
      required this.difficulty,
      required this.picName});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['latitude'] = Variable<double>(latitude);
    map['longitude'] = Variable<double>(longitude);
    map['height'] = Variable<int>(height);
    map['difficulty'] = Variable<int>(difficulty);
    map['pic_name'] = Variable<String>(picName);
    return map;
  }

  RocksCompanion toCompanion(bool nullToAbsent) {
    return RocksCompanion(
      id: Value(id),
      latitude: Value(latitude),
      longitude: Value(longitude),
      height: Value(height),
      difficulty: Value(difficulty),
      picName: Value(picName),
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
      difficulty: serializer.fromJson<int>(json['difficulty']),
      picName: serializer.fromJson<String>(json['picName']),
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
      'difficulty': serializer.toJson<int>(difficulty),
      'picName': serializer.toJson<String>(picName),
    };
  }

  Rock copyWith(
          {int? id,
          double? latitude,
          double? longitude,
          int? height,
          int? difficulty,
          String? picName}) =>
      Rock(
        id: id ?? this.id,
        latitude: latitude ?? this.latitude,
        longitude: longitude ?? this.longitude,
        height: height ?? this.height,
        difficulty: difficulty ?? this.difficulty,
        picName: picName ?? this.picName,
      );
  @override
  String toString() {
    return (StringBuffer('Rock(')
          ..write('id: $id, ')
          ..write('latitude: $latitude, ')
          ..write('longitude: $longitude, ')
          ..write('height: $height, ')
          ..write('difficulty: $difficulty, ')
          ..write('picName: $picName')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, latitude, longitude, height, difficulty, picName);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Rock &&
          other.id == this.id &&
          other.latitude == this.latitude &&
          other.longitude == this.longitude &&
          other.height == this.height &&
          other.difficulty == this.difficulty &&
          other.picName == this.picName);
}

class RocksCompanion extends UpdateCompanion<Rock> {
  final Value<int> id;
  final Value<double> latitude;
  final Value<double> longitude;
  final Value<int> height;
  final Value<int> difficulty;
  final Value<String> picName;
  const RocksCompanion({
    this.id = const Value.absent(),
    this.latitude = const Value.absent(),
    this.longitude = const Value.absent(),
    this.height = const Value.absent(),
    this.difficulty = const Value.absent(),
    this.picName = const Value.absent(),
  });
  RocksCompanion.insert({
    this.id = const Value.absent(),
    required double latitude,
    required double longitude,
    required int height,
    required int difficulty,
    required String picName,
  })  : latitude = Value(latitude),
        longitude = Value(longitude),
        height = Value(height),
        difficulty = Value(difficulty),
        picName = Value(picName);
  static Insertable<Rock> custom({
    Expression<int>? id,
    Expression<double>? latitude,
    Expression<double>? longitude,
    Expression<int>? height,
    Expression<int>? difficulty,
    Expression<String>? picName,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (latitude != null) 'latitude': latitude,
      if (longitude != null) 'longitude': longitude,
      if (height != null) 'height': height,
      if (difficulty != null) 'difficulty': difficulty,
      if (picName != null) 'pic_name': picName,
    });
  }

  RocksCompanion copyWith(
      {Value<int>? id,
      Value<double>? latitude,
      Value<double>? longitude,
      Value<int>? height,
      Value<int>? difficulty,
      Value<String>? picName}) {
    return RocksCompanion(
      id: id ?? this.id,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      height: height ?? this.height,
      difficulty: difficulty ?? this.difficulty,
      picName: picName ?? this.picName,
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
    if (difficulty.present) {
      map['difficulty'] = Variable<int>(difficulty.value);
    }
    if (picName.present) {
      map['pic_name'] = Variable<String>(picName.value);
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
          ..write('difficulty: $difficulty, ')
          ..write('picName: $picName')
          ..write(')'))
        .toString();
  }
}

class $RocksLocalizedTable extends RocksLocalized
    with TableInfo<$RocksLocalizedTable, RocksLocalizedData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $RocksLocalizedTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _rockIdMeta = const VerificationMeta('rockId');
  @override
  late final GeneratedColumn<int> rockId = GeneratedColumn<int>(
      'rock_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL REFERENCES rocks(id)');
  static const VerificationMeta _languageMeta =
      const VerificationMeta('language');
  @override
  late final GeneratedColumn<String> language = GeneratedColumn<String>(
      'language', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _shortInfoMeta =
      const VerificationMeta('shortInfo');
  @override
  late final GeneratedColumn<String> shortInfo = GeneratedColumn<String>(
      'short_info', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _fullInfoMeta =
      const VerificationMeta('fullInfo');
  @override
  late final GeneratedColumn<String> fullInfo = GeneratedColumn<String>(
      'full_info', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, rockId, language, name, shortInfo, fullInfo];
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
      context.handle(_rockIdMeta,
          rockId.isAcceptableOrUnknown(data['rock_id']!, _rockIdMeta));
    } else if (isInserting) {
      context.missing(_rockIdMeta);
    }
    if (data.containsKey('language')) {
      context.handle(_languageMeta,
          language.isAcceptableOrUnknown(data['language']!, _languageMeta));
    } else if (isInserting) {
      context.missing(_languageMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('short_info')) {
      context.handle(_shortInfoMeta,
          shortInfo.isAcceptableOrUnknown(data['short_info']!, _shortInfoMeta));
    } else if (isInserting) {
      context.missing(_shortInfoMeta);
    }
    if (data.containsKey('full_info')) {
      context.handle(_fullInfoMeta,
          fullInfo.isAcceptableOrUnknown(data['full_info']!, _fullInfoMeta));
    } else if (isInserting) {
      context.missing(_fullInfoMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  RocksLocalizedData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return RocksLocalizedData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      rockId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}rock_id'])!,
      language: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}language'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      shortInfo: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}short_info'])!,
      fullInfo: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}full_info'])!,
    );
  }

  @override
  $RocksLocalizedTable createAlias(String alias) {
    return $RocksLocalizedTable(attachedDatabase, alias);
  }
}

class RocksLocalizedData extends DataClass
    implements Insertable<RocksLocalizedData> {
  final int id;
  final int rockId;
  final String language;
  final String name;
  final String shortInfo;
  final String fullInfo;
  const RocksLocalizedData(
      {required this.id,
      required this.rockId,
      required this.language,
      required this.name,
      required this.shortInfo,
      required this.fullInfo});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['rock_id'] = Variable<int>(rockId);
    map['language'] = Variable<String>(language);
    map['name'] = Variable<String>(name);
    map['short_info'] = Variable<String>(shortInfo);
    map['full_info'] = Variable<String>(fullInfo);
    return map;
  }

  RocksLocalizedCompanion toCompanion(bool nullToAbsent) {
    return RocksLocalizedCompanion(
      id: Value(id),
      rockId: Value(rockId),
      language: Value(language),
      name: Value(name),
      shortInfo: Value(shortInfo),
      fullInfo: Value(fullInfo),
    );
  }

  factory RocksLocalizedData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return RocksLocalizedData(
      id: serializer.fromJson<int>(json['id']),
      rockId: serializer.fromJson<int>(json['rockId']),
      language: serializer.fromJson<String>(json['language']),
      name: serializer.fromJson<String>(json['name']),
      shortInfo: serializer.fromJson<String>(json['shortInfo']),
      fullInfo: serializer.fromJson<String>(json['fullInfo']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'rockId': serializer.toJson<int>(rockId),
      'language': serializer.toJson<String>(language),
      'name': serializer.toJson<String>(name),
      'shortInfo': serializer.toJson<String>(shortInfo),
      'fullInfo': serializer.toJson<String>(fullInfo),
    };
  }

  RocksLocalizedData copyWith(
          {int? id,
          int? rockId,
          String? language,
          String? name,
          String? shortInfo,
          String? fullInfo}) =>
      RocksLocalizedData(
        id: id ?? this.id,
        rockId: rockId ?? this.rockId,
        language: language ?? this.language,
        name: name ?? this.name,
        shortInfo: shortInfo ?? this.shortInfo,
        fullInfo: fullInfo ?? this.fullInfo,
      );
  @override
  String toString() {
    return (StringBuffer('RocksLocalizedData(')
          ..write('id: $id, ')
          ..write('rockId: $rockId, ')
          ..write('language: $language, ')
          ..write('name: $name, ')
          ..write('shortInfo: $shortInfo, ')
          ..write('fullInfo: $fullInfo')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, rockId, language, name, shortInfo, fullInfo);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is RocksLocalizedData &&
          other.id == this.id &&
          other.rockId == this.rockId &&
          other.language == this.language &&
          other.name == this.name &&
          other.shortInfo == this.shortInfo &&
          other.fullInfo == this.fullInfo);
}

class RocksLocalizedCompanion extends UpdateCompanion<RocksLocalizedData> {
  final Value<int> id;
  final Value<int> rockId;
  final Value<String> language;
  final Value<String> name;
  final Value<String> shortInfo;
  final Value<String> fullInfo;
  const RocksLocalizedCompanion({
    this.id = const Value.absent(),
    this.rockId = const Value.absent(),
    this.language = const Value.absent(),
    this.name = const Value.absent(),
    this.shortInfo = const Value.absent(),
    this.fullInfo = const Value.absent(),
  });
  RocksLocalizedCompanion.insert({
    this.id = const Value.absent(),
    required int rockId,
    required String language,
    required String name,
    required String shortInfo,
    required String fullInfo,
  })  : rockId = Value(rockId),
        language = Value(language),
        name = Value(name),
        shortInfo = Value(shortInfo),
        fullInfo = Value(fullInfo);
  static Insertable<RocksLocalizedData> custom({
    Expression<int>? id,
    Expression<int>? rockId,
    Expression<String>? language,
    Expression<String>? name,
    Expression<String>? shortInfo,
    Expression<String>? fullInfo,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (rockId != null) 'rock_id': rockId,
      if (language != null) 'language': language,
      if (name != null) 'name': name,
      if (shortInfo != null) 'short_info': shortInfo,
      if (fullInfo != null) 'full_info': fullInfo,
    });
  }

  RocksLocalizedCompanion copyWith(
      {Value<int>? id,
      Value<int>? rockId,
      Value<String>? language,
      Value<String>? name,
      Value<String>? shortInfo,
      Value<String>? fullInfo}) {
    return RocksLocalizedCompanion(
      id: id ?? this.id,
      rockId: rockId ?? this.rockId,
      language: language ?? this.language,
      name: name ?? this.name,
      shortInfo: shortInfo ?? this.shortInfo,
      fullInfo: fullInfo ?? this.fullInfo,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (rockId.present) {
      map['rock_id'] = Variable<int>(rockId.value);
    }
    if (language.present) {
      map['language'] = Variable<String>(language.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (shortInfo.present) {
      map['short_info'] = Variable<String>(shortInfo.value);
    }
    if (fullInfo.present) {
      map['full_info'] = Variable<String>(fullInfo.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('RocksLocalizedCompanion(')
          ..write('id: $id, ')
          ..write('rockId: $rockId, ')
          ..write('language: $language, ')
          ..write('name: $name, ')
          ..write('shortInfo: $shortInfo, ')
          ..write('fullInfo: $fullInfo')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  late final $RocksTable rocks = $RocksTable(this);
  late final $RocksLocalizedTable rocksLocalized = $RocksLocalizedTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [rocks, rocksLocalized];
}

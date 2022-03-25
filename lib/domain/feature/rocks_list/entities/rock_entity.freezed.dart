// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'rock_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RockEntityTearOff {
  const _$RockEntityTearOff();

  _RockEntity call(
      {required int id,
      required double latitude,
      required double longitude,
      required int difficulty,
      required int height,
      required String picName,
      required String localizedName}) {
    return _RockEntity(
      id: id,
      latitude: latitude,
      longitude: longitude,
      difficulty: difficulty,
      height: height,
      picName: picName,
      localizedName: localizedName,
    );
  }
}

/// @nodoc
const $RockEntity = _$RockEntityTearOff();

/// @nodoc
mixin _$RockEntity {
  int get id => throw _privateConstructorUsedError;
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  int get difficulty => throw _privateConstructorUsedError;
  int get height => throw _privateConstructorUsedError;
  String get picName => throw _privateConstructorUsedError;
  String get localizedName => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RockEntityCopyWith<RockEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RockEntityCopyWith<$Res> {
  factory $RockEntityCopyWith(
          RockEntity value, $Res Function(RockEntity) then) =
      _$RockEntityCopyWithImpl<$Res>;
  $Res call(
      {int id,
      double latitude,
      double longitude,
      int difficulty,
      int height,
      String picName,
      String localizedName});
}

/// @nodoc
class _$RockEntityCopyWithImpl<$Res> implements $RockEntityCopyWith<$Res> {
  _$RockEntityCopyWithImpl(this._value, this._then);

  final RockEntity _value;
  // ignore: unused_field
  final $Res Function(RockEntity) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? difficulty = freezed,
    Object? height = freezed,
    Object? picName = freezed,
    Object? localizedName = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      difficulty: difficulty == freezed
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as int,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      picName: picName == freezed
          ? _value.picName
          : picName // ignore: cast_nullable_to_non_nullable
              as String,
      localizedName: localizedName == freezed
          ? _value.localizedName
          : localizedName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$RockEntityCopyWith<$Res> implements $RockEntityCopyWith<$Res> {
  factory _$RockEntityCopyWith(
          _RockEntity value, $Res Function(_RockEntity) then) =
      __$RockEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      double latitude,
      double longitude,
      int difficulty,
      int height,
      String picName,
      String localizedName});
}

/// @nodoc
class __$RockEntityCopyWithImpl<$Res> extends _$RockEntityCopyWithImpl<$Res>
    implements _$RockEntityCopyWith<$Res> {
  __$RockEntityCopyWithImpl(
      _RockEntity _value, $Res Function(_RockEntity) _then)
      : super(_value, (v) => _then(v as _RockEntity));

  @override
  _RockEntity get _value => super._value as _RockEntity;

  @override
  $Res call({
    Object? id = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? difficulty = freezed,
    Object? height = freezed,
    Object? picName = freezed,
    Object? localizedName = freezed,
  }) {
    return _then(_RockEntity(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      difficulty: difficulty == freezed
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as int,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      picName: picName == freezed
          ? _value.picName
          : picName // ignore: cast_nullable_to_non_nullable
              as String,
      localizedName: localizedName == freezed
          ? _value.localizedName
          : localizedName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_RockEntity implements _RockEntity {
  const _$_RockEntity(
      {required this.id,
      required this.latitude,
      required this.longitude,
      required this.difficulty,
      required this.height,
      required this.picName,
      required this.localizedName});

  @override
  final int id;
  @override
  final double latitude;
  @override
  final double longitude;
  @override
  final int difficulty;
  @override
  final int height;
  @override
  final String picName;
  @override
  final String localizedName;

  @override
  String toString() {
    return 'RockEntity(id: $id, latitude: $latitude, longitude: $longitude, difficulty: $difficulty, height: $height, picName: $picName, localizedName: $localizedName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RockEntity &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.latitude, latitude) &&
            const DeepCollectionEquality().equals(other.longitude, longitude) &&
            const DeepCollectionEquality()
                .equals(other.difficulty, difficulty) &&
            const DeepCollectionEquality().equals(other.height, height) &&
            const DeepCollectionEquality().equals(other.picName, picName) &&
            const DeepCollectionEquality()
                .equals(other.localizedName, localizedName));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(latitude),
      const DeepCollectionEquality().hash(longitude),
      const DeepCollectionEquality().hash(difficulty),
      const DeepCollectionEquality().hash(height),
      const DeepCollectionEquality().hash(picName),
      const DeepCollectionEquality().hash(localizedName));

  @JsonKey(ignore: true)
  @override
  _$RockEntityCopyWith<_RockEntity> get copyWith =>
      __$RockEntityCopyWithImpl<_RockEntity>(this, _$identity);
}

abstract class _RockEntity implements RockEntity {
  const factory _RockEntity(
      {required int id,
      required double latitude,
      required double longitude,
      required int difficulty,
      required int height,
      required String picName,
      required String localizedName}) = _$_RockEntity;

  @override
  int get id;
  @override
  double get latitude;
  @override
  double get longitude;
  @override
  int get difficulty;
  @override
  int get height;
  @override
  String get picName;
  @override
  String get localizedName;
  @override
  @JsonKey(ignore: true)
  _$RockEntityCopyWith<_RockEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

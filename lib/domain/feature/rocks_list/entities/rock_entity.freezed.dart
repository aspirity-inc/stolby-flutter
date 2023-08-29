// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rock_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
      _$RockEntityCopyWithImpl<$Res, RockEntity>;
  @useResult
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
class _$RockEntityCopyWithImpl<$Res, $Val extends RockEntity>
    implements $RockEntityCopyWith<$Res> {
  _$RockEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? difficulty = null,
    Object? height = null,
    Object? picName = null,
    Object? localizedName = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      difficulty: null == difficulty
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      picName: null == picName
          ? _value.picName
          : picName // ignore: cast_nullable_to_non_nullable
              as String,
      localizedName: null == localizedName
          ? _value.localizedName
          : localizedName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RockEntityCopyWith<$Res>
    implements $RockEntityCopyWith<$Res> {
  factory _$$_RockEntityCopyWith(
          _$_RockEntity value, $Res Function(_$_RockEntity) then) =
      __$$_RockEntityCopyWithImpl<$Res>;
  @override
  @useResult
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
class __$$_RockEntityCopyWithImpl<$Res>
    extends _$RockEntityCopyWithImpl<$Res, _$_RockEntity>
    implements _$$_RockEntityCopyWith<$Res> {
  __$$_RockEntityCopyWithImpl(
      _$_RockEntity _value, $Res Function(_$_RockEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? difficulty = null,
    Object? height = null,
    Object? picName = null,
    Object? localizedName = null,
  }) {
    return _then(_$_RockEntity(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      difficulty: null == difficulty
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      picName: null == picName
          ? _value.picName
          : picName // ignore: cast_nullable_to_non_nullable
              as String,
      localizedName: null == localizedName
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
            other is _$_RockEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.difficulty, difficulty) ||
                other.difficulty == difficulty) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.picName, picName) || other.picName == picName) &&
            (identical(other.localizedName, localizedName) ||
                other.localizedName == localizedName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, latitude, longitude,
      difficulty, height, picName, localizedName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RockEntityCopyWith<_$_RockEntity> get copyWith =>
      __$$_RockEntityCopyWithImpl<_$_RockEntity>(this, _$identity);
}

abstract class _RockEntity implements RockEntity {
  const factory _RockEntity(
      {required final int id,
      required final double latitude,
      required final double longitude,
      required final int difficulty,
      required final int height,
      required final String picName,
      required final String localizedName}) = _$_RockEntity;

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
  _$$_RockEntityCopyWith<_$_RockEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

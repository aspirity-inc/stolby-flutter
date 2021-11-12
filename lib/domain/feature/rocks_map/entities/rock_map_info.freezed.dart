// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'rock_map_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RockMapInfoTearOff {
  const _$RockMapInfoTearOff();

  _RockMapInfo call(
      {required int id,
      required double latitude,
      required double longitude,
      required String picName,
      required String localizedName}) {
    return _RockMapInfo(
      id: id,
      latitude: latitude,
      longitude: longitude,
      picName: picName,
      localizedName: localizedName,
    );
  }
}

/// @nodoc
const $RockMapInfo = _$RockMapInfoTearOff();

/// @nodoc
mixin _$RockMapInfo {
  int get id => throw _privateConstructorUsedError;
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  String get picName => throw _privateConstructorUsedError;
  String get localizedName => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RockMapInfoCopyWith<RockMapInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RockMapInfoCopyWith<$Res> {
  factory $RockMapInfoCopyWith(
          RockMapInfo value, $Res Function(RockMapInfo) then) =
      _$RockMapInfoCopyWithImpl<$Res>;
  $Res call(
      {int id,
      double latitude,
      double longitude,
      String picName,
      String localizedName});
}

/// @nodoc
class _$RockMapInfoCopyWithImpl<$Res> implements $RockMapInfoCopyWith<$Res> {
  _$RockMapInfoCopyWithImpl(this._value, this._then);

  final RockMapInfo _value;
  // ignore: unused_field
  final $Res Function(RockMapInfo) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
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
abstract class _$RockMapInfoCopyWith<$Res>
    implements $RockMapInfoCopyWith<$Res> {
  factory _$RockMapInfoCopyWith(
          _RockMapInfo value, $Res Function(_RockMapInfo) then) =
      __$RockMapInfoCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      double latitude,
      double longitude,
      String picName,
      String localizedName});
}

/// @nodoc
class __$RockMapInfoCopyWithImpl<$Res> extends _$RockMapInfoCopyWithImpl<$Res>
    implements _$RockMapInfoCopyWith<$Res> {
  __$RockMapInfoCopyWithImpl(
      _RockMapInfo _value, $Res Function(_RockMapInfo) _then)
      : super(_value, (v) => _then(v as _RockMapInfo));

  @override
  _RockMapInfo get _value => super._value as _RockMapInfo;

  @override
  $Res call({
    Object? id = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? picName = freezed,
    Object? localizedName = freezed,
  }) {
    return _then(_RockMapInfo(
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

class _$_RockMapInfo implements _RockMapInfo {
  const _$_RockMapInfo(
      {required this.id,
      required this.latitude,
      required this.longitude,
      required this.picName,
      required this.localizedName});

  @override
  final int id;
  @override
  final double latitude;
  @override
  final double longitude;
  @override
  final String picName;
  @override
  final String localizedName;

  @override
  String toString() {
    return 'RockMapInfo(id: $id, latitude: $latitude, longitude: $longitude, picName: $picName, localizedName: $localizedName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RockMapInfo &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.picName, picName) || other.picName == picName) &&
            (identical(other.localizedName, localizedName) ||
                other.localizedName == localizedName));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, latitude, longitude, picName, localizedName);

  @JsonKey(ignore: true)
  @override
  _$RockMapInfoCopyWith<_RockMapInfo> get copyWith =>
      __$RockMapInfoCopyWithImpl<_RockMapInfo>(this, _$identity);
}

abstract class _RockMapInfo implements RockMapInfo {
  const factory _RockMapInfo(
      {required int id,
      required double latitude,
      required double longitude,
      required String picName,
      required String localizedName}) = _$_RockMapInfo;

  @override
  int get id;
  @override
  double get latitude;
  @override
  double get longitude;
  @override
  String get picName;
  @override
  String get localizedName;
  @override
  @JsonKey(ignore: true)
  _$RockMapInfoCopyWith<_RockMapInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

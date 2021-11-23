// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_location_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserLocationEntityTearOff {
  const _$UserLocationEntityTearOff();

  _UserLocationEntity call(
      {required double latitude,
      required double longitude,
      required double heading}) {
    return _UserLocationEntity(
      latitude: latitude,
      longitude: longitude,
      heading: heading,
    );
  }
}

/// @nodoc
const $UserLocationEntity = _$UserLocationEntityTearOff();

/// @nodoc
mixin _$UserLocationEntity {
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  double get heading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserLocationEntityCopyWith<UserLocationEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserLocationEntityCopyWith<$Res> {
  factory $UserLocationEntityCopyWith(
          UserLocationEntity value, $Res Function(UserLocationEntity) then) =
      _$UserLocationEntityCopyWithImpl<$Res>;
  $Res call({double latitude, double longitude, double heading});
}

/// @nodoc
class _$UserLocationEntityCopyWithImpl<$Res>
    implements $UserLocationEntityCopyWith<$Res> {
  _$UserLocationEntityCopyWithImpl(this._value, this._then);

  final UserLocationEntity _value;
  // ignore: unused_field
  final $Res Function(UserLocationEntity) _then;

  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? heading = freezed,
  }) {
    return _then(_value.copyWith(
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      heading: heading == freezed
          ? _value.heading
          : heading // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$UserLocationEntityCopyWith<$Res>
    implements $UserLocationEntityCopyWith<$Res> {
  factory _$UserLocationEntityCopyWith(
          _UserLocationEntity value, $Res Function(_UserLocationEntity) then) =
      __$UserLocationEntityCopyWithImpl<$Res>;
  @override
  $Res call({double latitude, double longitude, double heading});
}

/// @nodoc
class __$UserLocationEntityCopyWithImpl<$Res>
    extends _$UserLocationEntityCopyWithImpl<$Res>
    implements _$UserLocationEntityCopyWith<$Res> {
  __$UserLocationEntityCopyWithImpl(
      _UserLocationEntity _value, $Res Function(_UserLocationEntity) _then)
      : super(_value, (v) => _then(v as _UserLocationEntity));

  @override
  _UserLocationEntity get _value => super._value as _UserLocationEntity;

  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? heading = freezed,
  }) {
    return _then(_UserLocationEntity(
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      heading: heading == freezed
          ? _value.heading
          : heading // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_UserLocationEntity implements _UserLocationEntity {
  const _$_UserLocationEntity(
      {required this.latitude, required this.longitude, required this.heading});

  @override
  final double latitude;
  @override
  final double longitude;
  @override
  final double heading;

  @override
  String toString() {
    return 'UserLocationEntity(latitude: $latitude, longitude: $longitude, heading: $heading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserLocationEntity &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.heading, heading) || other.heading == heading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, latitude, longitude, heading);

  @JsonKey(ignore: true)
  @override
  _$UserLocationEntityCopyWith<_UserLocationEntity> get copyWith =>
      __$UserLocationEntityCopyWithImpl<_UserLocationEntity>(this, _$identity);
}

abstract class _UserLocationEntity implements UserLocationEntity {
  const factory _UserLocationEntity(
      {required double latitude,
      required double longitude,
      required double heading}) = _$_UserLocationEntity;

  @override
  double get latitude;
  @override
  double get longitude;
  @override
  double get heading;
  @override
  @JsonKey(ignore: true)
  _$UserLocationEntityCopyWith<_UserLocationEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

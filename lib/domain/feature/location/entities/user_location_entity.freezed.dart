// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_location_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
      _$UserLocationEntityCopyWithImpl<$Res, UserLocationEntity>;
  @useResult
  $Res call({double latitude, double longitude, double heading});
}

/// @nodoc
class _$UserLocationEntityCopyWithImpl<$Res, $Val extends UserLocationEntity>
    implements $UserLocationEntityCopyWith<$Res> {
  _$UserLocationEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
    Object? heading = null,
  }) {
    return _then(_value.copyWith(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      heading: null == heading
          ? _value.heading
          : heading // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserLocationEntityCopyWith<$Res>
    implements $UserLocationEntityCopyWith<$Res> {
  factory _$$_UserLocationEntityCopyWith(_$_UserLocationEntity value,
          $Res Function(_$_UserLocationEntity) then) =
      __$$_UserLocationEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double latitude, double longitude, double heading});
}

/// @nodoc
class __$$_UserLocationEntityCopyWithImpl<$Res>
    extends _$UserLocationEntityCopyWithImpl<$Res, _$_UserLocationEntity>
    implements _$$_UserLocationEntityCopyWith<$Res> {
  __$$_UserLocationEntityCopyWithImpl(
      _$_UserLocationEntity _value, $Res Function(_$_UserLocationEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
    Object? heading = null,
  }) {
    return _then(_$_UserLocationEntity(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      heading: null == heading
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
            other is _$_UserLocationEntity &&
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
  @pragma('vm:prefer-inline')
  _$$_UserLocationEntityCopyWith<_$_UserLocationEntity> get copyWith =>
      __$$_UserLocationEntityCopyWithImpl<_$_UserLocationEntity>(
          this, _$identity);
}

abstract class _UserLocationEntity implements UserLocationEntity {
  const factory _UserLocationEntity(
      {required final double latitude,
      required final double longitude,
      required final double heading}) = _$_UserLocationEntity;

  @override
  double get latitude;
  @override
  double get longitude;
  @override
  double get heading;
  @override
  @JsonKey(ignore: true)
  _$$_UserLocationEntityCopyWith<_$_UserLocationEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

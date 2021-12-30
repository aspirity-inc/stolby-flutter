// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_location_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserLocationDtoTearOff {
  const _$UserLocationDtoTearOff();

  _UserLocationDto call(
      {required double latitude,
      required double longitude,
      required double heading}) {
    return _UserLocationDto(
      latitude: latitude,
      longitude: longitude,
      heading: heading,
    );
  }
}

/// @nodoc
const $UserLocationDto = _$UserLocationDtoTearOff();

/// @nodoc
mixin _$UserLocationDto {
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  double get heading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserLocationDtoCopyWith<UserLocationDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserLocationDtoCopyWith<$Res> {
  factory $UserLocationDtoCopyWith(
          UserLocationDto value, $Res Function(UserLocationDto) then) =
      _$UserLocationDtoCopyWithImpl<$Res>;
  $Res call({double latitude, double longitude, double heading});
}

/// @nodoc
class _$UserLocationDtoCopyWithImpl<$Res>
    implements $UserLocationDtoCopyWith<$Res> {
  _$UserLocationDtoCopyWithImpl(this._value, this._then);

  final UserLocationDto _value;
  // ignore: unused_field
  final $Res Function(UserLocationDto) _then;

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
abstract class _$UserLocationDtoCopyWith<$Res>
    implements $UserLocationDtoCopyWith<$Res> {
  factory _$UserLocationDtoCopyWith(
          _UserLocationDto value, $Res Function(_UserLocationDto) then) =
      __$UserLocationDtoCopyWithImpl<$Res>;
  @override
  $Res call({double latitude, double longitude, double heading});
}

/// @nodoc
class __$UserLocationDtoCopyWithImpl<$Res>
    extends _$UserLocationDtoCopyWithImpl<$Res>
    implements _$UserLocationDtoCopyWith<$Res> {
  __$UserLocationDtoCopyWithImpl(
      _UserLocationDto _value, $Res Function(_UserLocationDto) _then)
      : super(_value, (v) => _then(v as _UserLocationDto));

  @override
  _UserLocationDto get _value => super._value as _UserLocationDto;

  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? heading = freezed,
  }) {
    return _then(_UserLocationDto(
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

class _$_UserLocationDto extends _UserLocationDto with DiagnosticableTreeMixin {
  const _$_UserLocationDto(
      {required this.latitude, required this.longitude, required this.heading})
      : super._();

  @override
  final double latitude;
  @override
  final double longitude;
  @override
  final double heading;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserLocationDto(latitude: $latitude, longitude: $longitude, heading: $heading)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserLocationDto'))
      ..add(DiagnosticsProperty('latitude', latitude))
      ..add(DiagnosticsProperty('longitude', longitude))
      ..add(DiagnosticsProperty('heading', heading));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserLocationDto &&
            const DeepCollectionEquality().equals(other.latitude, latitude) &&
            const DeepCollectionEquality().equals(other.longitude, longitude) &&
            const DeepCollectionEquality().equals(other.heading, heading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(latitude),
      const DeepCollectionEquality().hash(longitude),
      const DeepCollectionEquality().hash(heading));

  @JsonKey(ignore: true)
  @override
  _$UserLocationDtoCopyWith<_UserLocationDto> get copyWith =>
      __$UserLocationDtoCopyWithImpl<_UserLocationDto>(this, _$identity);
}

abstract class _UserLocationDto extends UserLocationDto {
  const factory _UserLocationDto(
      {required double latitude,
      required double longitude,
      required double heading}) = _$_UserLocationDto;
  const _UserLocationDto._() : super._();

  @override
  double get latitude;
  @override
  double get longitude;
  @override
  double get heading;
  @override
  @JsonKey(ignore: true)
  _$UserLocationDtoCopyWith<_UserLocationDto> get copyWith =>
      throw _privateConstructorUsedError;
}

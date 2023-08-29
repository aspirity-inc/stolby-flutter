// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_location_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
      _$UserLocationDtoCopyWithImpl<$Res, UserLocationDto>;
  @useResult
  $Res call({double latitude, double longitude, double heading});
}

/// @nodoc
class _$UserLocationDtoCopyWithImpl<$Res, $Val extends UserLocationDto>
    implements $UserLocationDtoCopyWith<$Res> {
  _$UserLocationDtoCopyWithImpl(this._value, this._then);

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
abstract class _$$_UserLocationDtoCopyWith<$Res>
    implements $UserLocationDtoCopyWith<$Res> {
  factory _$$_UserLocationDtoCopyWith(
          _$_UserLocationDto value, $Res Function(_$_UserLocationDto) then) =
      __$$_UserLocationDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double latitude, double longitude, double heading});
}

/// @nodoc
class __$$_UserLocationDtoCopyWithImpl<$Res>
    extends _$UserLocationDtoCopyWithImpl<$Res, _$_UserLocationDto>
    implements _$$_UserLocationDtoCopyWith<$Res> {
  __$$_UserLocationDtoCopyWithImpl(
      _$_UserLocationDto _value, $Res Function(_$_UserLocationDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
    Object? heading = null,
  }) {
    return _then(_$_UserLocationDto(
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
            other is _$_UserLocationDto &&
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
  _$$_UserLocationDtoCopyWith<_$_UserLocationDto> get copyWith =>
      __$$_UserLocationDtoCopyWithImpl<_$_UserLocationDto>(this, _$identity);
}

abstract class _UserLocationDto extends UserLocationDto {
  const factory _UserLocationDto(
      {required final double latitude,
      required final double longitude,
      required final double heading}) = _$_UserLocationDto;
  const _UserLocationDto._() : super._();

  @override
  double get latitude;
  @override
  double get longitude;
  @override
  double get heading;
  @override
  @JsonKey(ignore: true)
  _$$_UserLocationDtoCopyWith<_$_UserLocationDto> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'rock_map_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RockMapEntityTearOff {
  const _$RockMapEntityTearOff();

  _RockMapEntity call(
      {required int id,
      required double latitude,
      required double longitude,
      required String picName,
      required String localizedName}) {
    return _RockMapEntity(
      id: id,
      latitude: latitude,
      longitude: longitude,
      picName: picName,
      localizedName: localizedName,
    );
  }
}

/// @nodoc
const $RockMapEntity = _$RockMapEntityTearOff();

/// @nodoc
mixin _$RockMapEntity {
  int get id => throw _privateConstructorUsedError;
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  String get picName => throw _privateConstructorUsedError;
  String get localizedName => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RockMapEntityCopyWith<RockMapEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RockMapEntityCopyWith<$Res> {
  factory $RockMapEntityCopyWith(
          RockMapEntity value, $Res Function(RockMapEntity) then) =
      _$RockMapEntityCopyWithImpl<$Res>;
  $Res call(
      {int id,
      double latitude,
      double longitude,
      String picName,
      String localizedName});
}

/// @nodoc
class _$RockMapEntityCopyWithImpl<$Res>
    implements $RockMapEntityCopyWith<$Res> {
  _$RockMapEntityCopyWithImpl(this._value, this._then);

  final RockMapEntity _value;
  // ignore: unused_field
  final $Res Function(RockMapEntity) _then;

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
abstract class _$RockMapEntityCopyWith<$Res>
    implements $RockMapEntityCopyWith<$Res> {
  factory _$RockMapEntityCopyWith(
          _RockMapEntity value, $Res Function(_RockMapEntity) then) =
      __$RockMapEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      double latitude,
      double longitude,
      String picName,
      String localizedName});
}

/// @nodoc
class __$RockMapEntityCopyWithImpl<$Res>
    extends _$RockMapEntityCopyWithImpl<$Res>
    implements _$RockMapEntityCopyWith<$Res> {
  __$RockMapEntityCopyWithImpl(
      _RockMapEntity _value, $Res Function(_RockMapEntity) _then)
      : super(_value, (v) => _then(v as _RockMapEntity));

  @override
  _RockMapEntity get _value => super._value as _RockMapEntity;

  @override
  $Res call({
    Object? id = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? picName = freezed,
    Object? localizedName = freezed,
  }) {
    return _then(_RockMapEntity(
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

class _$_RockMapEntity implements _RockMapEntity {
  const _$_RockMapEntity(
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
    return 'RockMapEntity(id: $id, latitude: $latitude, longitude: $longitude, picName: $picName, localizedName: $localizedName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RockMapEntity &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.latitude, latitude) &&
            const DeepCollectionEquality().equals(other.longitude, longitude) &&
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
      const DeepCollectionEquality().hash(picName),
      const DeepCollectionEquality().hash(localizedName));

  @JsonKey(ignore: true)
  @override
  _$RockMapEntityCopyWith<_RockMapEntity> get copyWith =>
      __$RockMapEntityCopyWithImpl<_RockMapEntity>(this, _$identity);
}

abstract class _RockMapEntity implements RockMapEntity {
  const factory _RockMapEntity(
      {required int id,
      required double latitude,
      required double longitude,
      required String picName,
      required String localizedName}) = _$_RockMapEntity;

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
  _$RockMapEntityCopyWith<_RockMapEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

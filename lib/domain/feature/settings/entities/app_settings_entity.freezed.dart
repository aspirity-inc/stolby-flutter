// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_settings_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppSettingsEntity {
  bool get geolocationEnabled => throw _privateConstructorUsedError;
  bool get reversedMap => throw _privateConstructorUsedError;
  bool get mapUserCentering => throw _privateConstructorUsedError;
  bool get autoThemeChange => throw _privateConstructorUsedError;
  bool get darkTheme => throw _privateConstructorUsedError;
  bool get onboardingVisited => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppSettingsEntityCopyWith<AppSettingsEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppSettingsEntityCopyWith<$Res> {
  factory $AppSettingsEntityCopyWith(
          AppSettingsEntity value, $Res Function(AppSettingsEntity) then) =
      _$AppSettingsEntityCopyWithImpl<$Res, AppSettingsEntity>;
  @useResult
  $Res call(
      {bool geolocationEnabled,
      bool reversedMap,
      bool mapUserCentering,
      bool autoThemeChange,
      bool darkTheme,
      bool onboardingVisited});
}

/// @nodoc
class _$AppSettingsEntityCopyWithImpl<$Res, $Val extends AppSettingsEntity>
    implements $AppSettingsEntityCopyWith<$Res> {
  _$AppSettingsEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? geolocationEnabled = null,
    Object? reversedMap = null,
    Object? mapUserCentering = null,
    Object? autoThemeChange = null,
    Object? darkTheme = null,
    Object? onboardingVisited = null,
  }) {
    return _then(_value.copyWith(
      geolocationEnabled: null == geolocationEnabled
          ? _value.geolocationEnabled
          : geolocationEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      reversedMap: null == reversedMap
          ? _value.reversedMap
          : reversedMap // ignore: cast_nullable_to_non_nullable
              as bool,
      mapUserCentering: null == mapUserCentering
          ? _value.mapUserCentering
          : mapUserCentering // ignore: cast_nullable_to_non_nullable
              as bool,
      autoThemeChange: null == autoThemeChange
          ? _value.autoThemeChange
          : autoThemeChange // ignore: cast_nullable_to_non_nullable
              as bool,
      darkTheme: null == darkTheme
          ? _value.darkTheme
          : darkTheme // ignore: cast_nullable_to_non_nullable
              as bool,
      onboardingVisited: null == onboardingVisited
          ? _value.onboardingVisited
          : onboardingVisited // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AppSettingsEntityCopyWith<$Res>
    implements $AppSettingsEntityCopyWith<$Res> {
  factory _$$_AppSettingsEntityCopyWith(_$_AppSettingsEntity value,
          $Res Function(_$_AppSettingsEntity) then) =
      __$$_AppSettingsEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool geolocationEnabled,
      bool reversedMap,
      bool mapUserCentering,
      bool autoThemeChange,
      bool darkTheme,
      bool onboardingVisited});
}

/// @nodoc
class __$$_AppSettingsEntityCopyWithImpl<$Res>
    extends _$AppSettingsEntityCopyWithImpl<$Res, _$_AppSettingsEntity>
    implements _$$_AppSettingsEntityCopyWith<$Res> {
  __$$_AppSettingsEntityCopyWithImpl(
      _$_AppSettingsEntity _value, $Res Function(_$_AppSettingsEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? geolocationEnabled = null,
    Object? reversedMap = null,
    Object? mapUserCentering = null,
    Object? autoThemeChange = null,
    Object? darkTheme = null,
    Object? onboardingVisited = null,
  }) {
    return _then(_$_AppSettingsEntity(
      geolocationEnabled: null == geolocationEnabled
          ? _value.geolocationEnabled
          : geolocationEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      reversedMap: null == reversedMap
          ? _value.reversedMap
          : reversedMap // ignore: cast_nullable_to_non_nullable
              as bool,
      mapUserCentering: null == mapUserCentering
          ? _value.mapUserCentering
          : mapUserCentering // ignore: cast_nullable_to_non_nullable
              as bool,
      autoThemeChange: null == autoThemeChange
          ? _value.autoThemeChange
          : autoThemeChange // ignore: cast_nullable_to_non_nullable
              as bool,
      darkTheme: null == darkTheme
          ? _value.darkTheme
          : darkTheme // ignore: cast_nullable_to_non_nullable
              as bool,
      onboardingVisited: null == onboardingVisited
          ? _value.onboardingVisited
          : onboardingVisited // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_AppSettingsEntity implements _AppSettingsEntity {
  const _$_AppSettingsEntity(
      {required this.geolocationEnabled,
      required this.reversedMap,
      required this.mapUserCentering,
      required this.autoThemeChange,
      required this.darkTheme,
      required this.onboardingVisited});

  @override
  final bool geolocationEnabled;
  @override
  final bool reversedMap;
  @override
  final bool mapUserCentering;
  @override
  final bool autoThemeChange;
  @override
  final bool darkTheme;
  @override
  final bool onboardingVisited;

  @override
  String toString() {
    return 'AppSettingsEntity(geolocationEnabled: $geolocationEnabled, reversedMap: $reversedMap, mapUserCentering: $mapUserCentering, autoThemeChange: $autoThemeChange, darkTheme: $darkTheme, onboardingVisited: $onboardingVisited)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppSettingsEntity &&
            (identical(other.geolocationEnabled, geolocationEnabled) ||
                other.geolocationEnabled == geolocationEnabled) &&
            (identical(other.reversedMap, reversedMap) ||
                other.reversedMap == reversedMap) &&
            (identical(other.mapUserCentering, mapUserCentering) ||
                other.mapUserCentering == mapUserCentering) &&
            (identical(other.autoThemeChange, autoThemeChange) ||
                other.autoThemeChange == autoThemeChange) &&
            (identical(other.darkTheme, darkTheme) ||
                other.darkTheme == darkTheme) &&
            (identical(other.onboardingVisited, onboardingVisited) ||
                other.onboardingVisited == onboardingVisited));
  }

  @override
  int get hashCode => Object.hash(runtimeType, geolocationEnabled, reversedMap,
      mapUserCentering, autoThemeChange, darkTheme, onboardingVisited);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppSettingsEntityCopyWith<_$_AppSettingsEntity> get copyWith =>
      __$$_AppSettingsEntityCopyWithImpl<_$_AppSettingsEntity>(
          this, _$identity);
}

abstract class _AppSettingsEntity implements AppSettingsEntity {
  const factory _AppSettingsEntity(
      {required final bool geolocationEnabled,
      required final bool reversedMap,
      required final bool mapUserCentering,
      required final bool autoThemeChange,
      required final bool darkTheme,
      required final bool onboardingVisited}) = _$_AppSettingsEntity;

  @override
  bool get geolocationEnabled;
  @override
  bool get reversedMap;
  @override
  bool get mapUserCentering;
  @override
  bool get autoThemeChange;
  @override
  bool get darkTheme;
  @override
  bool get onboardingVisited;
  @override
  @JsonKey(ignore: true)
  _$$_AppSettingsEntityCopyWith<_$_AppSettingsEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

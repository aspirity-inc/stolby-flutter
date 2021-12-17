// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'location_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LocationEventTearOff {
  const _$LocationEventTearOff();

  _CheckedPermission checkedPermission() {
    return const _CheckedPermission();
  }

  _StartWatchingLocation startWatchingLocation() {
    return const _StartWatchingLocation();
  }

  _StopWatchingLocation stopWatchingLocation() {
    return const _StopWatchingLocation();
  }
}

/// @nodoc
const $LocationEvent = _$LocationEventTearOff();

/// @nodoc
mixin _$LocationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkedPermission,
    required TResult Function() startWatchingLocation,
    required TResult Function() stopWatchingLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? checkedPermission,
    TResult Function()? startWatchingLocation,
    TResult Function()? stopWatchingLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkedPermission,
    TResult Function()? startWatchingLocation,
    TResult Function()? stopWatchingLocation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckedPermission value) checkedPermission,
    required TResult Function(_StartWatchingLocation value)
        startWatchingLocation,
    required TResult Function(_StopWatchingLocation value) stopWatchingLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CheckedPermission value)? checkedPermission,
    TResult Function(_StartWatchingLocation value)? startWatchingLocation,
    TResult Function(_StopWatchingLocation value)? stopWatchingLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckedPermission value)? checkedPermission,
    TResult Function(_StartWatchingLocation value)? startWatchingLocation,
    TResult Function(_StopWatchingLocation value)? stopWatchingLocation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationEventCopyWith<$Res> {
  factory $LocationEventCopyWith(
          LocationEvent value, $Res Function(LocationEvent) then) =
      _$LocationEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LocationEventCopyWithImpl<$Res>
    implements $LocationEventCopyWith<$Res> {
  _$LocationEventCopyWithImpl(this._value, this._then);

  final LocationEvent _value;
  // ignore: unused_field
  final $Res Function(LocationEvent) _then;
}

/// @nodoc
abstract class _$CheckedPermissionCopyWith<$Res> {
  factory _$CheckedPermissionCopyWith(
          _CheckedPermission value, $Res Function(_CheckedPermission) then) =
      __$CheckedPermissionCopyWithImpl<$Res>;
}

/// @nodoc
class __$CheckedPermissionCopyWithImpl<$Res>
    extends _$LocationEventCopyWithImpl<$Res>
    implements _$CheckedPermissionCopyWith<$Res> {
  __$CheckedPermissionCopyWithImpl(
      _CheckedPermission _value, $Res Function(_CheckedPermission) _then)
      : super(_value, (v) => _then(v as _CheckedPermission));

  @override
  _CheckedPermission get _value => super._value as _CheckedPermission;
}

/// @nodoc

class _$_CheckedPermission implements _CheckedPermission {
  const _$_CheckedPermission();

  @override
  String toString() {
    return 'LocationEvent.checkedPermission()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _CheckedPermission);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkedPermission,
    required TResult Function() startWatchingLocation,
    required TResult Function() stopWatchingLocation,
  }) {
    return checkedPermission();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? checkedPermission,
    TResult Function()? startWatchingLocation,
    TResult Function()? stopWatchingLocation,
  }) {
    return checkedPermission?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkedPermission,
    TResult Function()? startWatchingLocation,
    TResult Function()? stopWatchingLocation,
    required TResult orElse(),
  }) {
    if (checkedPermission != null) {
      return checkedPermission();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckedPermission value) checkedPermission,
    required TResult Function(_StartWatchingLocation value)
        startWatchingLocation,
    required TResult Function(_StopWatchingLocation value) stopWatchingLocation,
  }) {
    return checkedPermission(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CheckedPermission value)? checkedPermission,
    TResult Function(_StartWatchingLocation value)? startWatchingLocation,
    TResult Function(_StopWatchingLocation value)? stopWatchingLocation,
  }) {
    return checkedPermission?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckedPermission value)? checkedPermission,
    TResult Function(_StartWatchingLocation value)? startWatchingLocation,
    TResult Function(_StopWatchingLocation value)? stopWatchingLocation,
    required TResult orElse(),
  }) {
    if (checkedPermission != null) {
      return checkedPermission(this);
    }
    return orElse();
  }
}

abstract class _CheckedPermission implements LocationEvent {
  const factory _CheckedPermission() = _$_CheckedPermission;
}

/// @nodoc
abstract class _$StartWatchingLocationCopyWith<$Res> {
  factory _$StartWatchingLocationCopyWith(_StartWatchingLocation value,
          $Res Function(_StartWatchingLocation) then) =
      __$StartWatchingLocationCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartWatchingLocationCopyWithImpl<$Res>
    extends _$LocationEventCopyWithImpl<$Res>
    implements _$StartWatchingLocationCopyWith<$Res> {
  __$StartWatchingLocationCopyWithImpl(_StartWatchingLocation _value,
      $Res Function(_StartWatchingLocation) _then)
      : super(_value, (v) => _then(v as _StartWatchingLocation));

  @override
  _StartWatchingLocation get _value => super._value as _StartWatchingLocation;
}

/// @nodoc

class _$_StartWatchingLocation implements _StartWatchingLocation {
  const _$_StartWatchingLocation();

  @override
  String toString() {
    return 'LocationEvent.startWatchingLocation()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _StartWatchingLocation);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkedPermission,
    required TResult Function() startWatchingLocation,
    required TResult Function() stopWatchingLocation,
  }) {
    return startWatchingLocation();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? checkedPermission,
    TResult Function()? startWatchingLocation,
    TResult Function()? stopWatchingLocation,
  }) {
    return startWatchingLocation?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkedPermission,
    TResult Function()? startWatchingLocation,
    TResult Function()? stopWatchingLocation,
    required TResult orElse(),
  }) {
    if (startWatchingLocation != null) {
      return startWatchingLocation();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckedPermission value) checkedPermission,
    required TResult Function(_StartWatchingLocation value)
        startWatchingLocation,
    required TResult Function(_StopWatchingLocation value) stopWatchingLocation,
  }) {
    return startWatchingLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CheckedPermission value)? checkedPermission,
    TResult Function(_StartWatchingLocation value)? startWatchingLocation,
    TResult Function(_StopWatchingLocation value)? stopWatchingLocation,
  }) {
    return startWatchingLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckedPermission value)? checkedPermission,
    TResult Function(_StartWatchingLocation value)? startWatchingLocation,
    TResult Function(_StopWatchingLocation value)? stopWatchingLocation,
    required TResult orElse(),
  }) {
    if (startWatchingLocation != null) {
      return startWatchingLocation(this);
    }
    return orElse();
  }
}

abstract class _StartWatchingLocation implements LocationEvent {
  const factory _StartWatchingLocation() = _$_StartWatchingLocation;
}

/// @nodoc
abstract class _$StopWatchingLocationCopyWith<$Res> {
  factory _$StopWatchingLocationCopyWith(_StopWatchingLocation value,
          $Res Function(_StopWatchingLocation) then) =
      __$StopWatchingLocationCopyWithImpl<$Res>;
}

/// @nodoc
class __$StopWatchingLocationCopyWithImpl<$Res>
    extends _$LocationEventCopyWithImpl<$Res>
    implements _$StopWatchingLocationCopyWith<$Res> {
  __$StopWatchingLocationCopyWithImpl(
      _StopWatchingLocation _value, $Res Function(_StopWatchingLocation) _then)
      : super(_value, (v) => _then(v as _StopWatchingLocation));

  @override
  _StopWatchingLocation get _value => super._value as _StopWatchingLocation;
}

/// @nodoc

class _$_StopWatchingLocation implements _StopWatchingLocation {
  const _$_StopWatchingLocation();

  @override
  String toString() {
    return 'LocationEvent.stopWatchingLocation()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _StopWatchingLocation);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkedPermission,
    required TResult Function() startWatchingLocation,
    required TResult Function() stopWatchingLocation,
  }) {
    return stopWatchingLocation();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? checkedPermission,
    TResult Function()? startWatchingLocation,
    TResult Function()? stopWatchingLocation,
  }) {
    return stopWatchingLocation?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkedPermission,
    TResult Function()? startWatchingLocation,
    TResult Function()? stopWatchingLocation,
    required TResult orElse(),
  }) {
    if (stopWatchingLocation != null) {
      return stopWatchingLocation();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckedPermission value) checkedPermission,
    required TResult Function(_StartWatchingLocation value)
        startWatchingLocation,
    required TResult Function(_StopWatchingLocation value) stopWatchingLocation,
  }) {
    return stopWatchingLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CheckedPermission value)? checkedPermission,
    TResult Function(_StartWatchingLocation value)? startWatchingLocation,
    TResult Function(_StopWatchingLocation value)? stopWatchingLocation,
  }) {
    return stopWatchingLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckedPermission value)? checkedPermission,
    TResult Function(_StartWatchingLocation value)? startWatchingLocation,
    TResult Function(_StopWatchingLocation value)? stopWatchingLocation,
    required TResult orElse(),
  }) {
    if (stopWatchingLocation != null) {
      return stopWatchingLocation(this);
    }
    return orElse();
  }
}

abstract class _StopWatchingLocation implements LocationEvent {
  const factory _StopWatchingLocation() = _$_StopWatchingLocation;
}

/// @nodoc
class _$LocationStateTearOff {
  const _$LocationStateTearOff();

  _LocationState call(
      {required bool hasPermission,
      required bool permissionAsked,
      required Option<LocationFailure> failureOption,
      required Option<UserLocationEntity> userLocation}) {
    return _LocationState(
      hasPermission: hasPermission,
      permissionAsked: permissionAsked,
      failureOption: failureOption,
      userLocation: userLocation,
    );
  }
}

/// @nodoc
const $LocationState = _$LocationStateTearOff();

/// @nodoc
mixin _$LocationState {
  bool get hasPermission => throw _privateConstructorUsedError;
  bool get permissionAsked => throw _privateConstructorUsedError;
  Option<LocationFailure> get failureOption =>
      throw _privateConstructorUsedError;
  Option<UserLocationEntity> get userLocation =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LocationStateCopyWith<LocationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationStateCopyWith<$Res> {
  factory $LocationStateCopyWith(
          LocationState value, $Res Function(LocationState) then) =
      _$LocationStateCopyWithImpl<$Res>;
  $Res call(
      {bool hasPermission,
      bool permissionAsked,
      Option<LocationFailure> failureOption,
      Option<UserLocationEntity> userLocation});
}

/// @nodoc
class _$LocationStateCopyWithImpl<$Res>
    implements $LocationStateCopyWith<$Res> {
  _$LocationStateCopyWithImpl(this._value, this._then);

  final LocationState _value;
  // ignore: unused_field
  final $Res Function(LocationState) _then;

  @override
  $Res call({
    Object? hasPermission = freezed,
    Object? permissionAsked = freezed,
    Object? failureOption = freezed,
    Object? userLocation = freezed,
  }) {
    return _then(_value.copyWith(
      hasPermission: hasPermission == freezed
          ? _value.hasPermission
          : hasPermission // ignore: cast_nullable_to_non_nullable
              as bool,
      permissionAsked: permissionAsked == freezed
          ? _value.permissionAsked
          : permissionAsked // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOption: failureOption == freezed
          ? _value.failureOption
          : failureOption // ignore: cast_nullable_to_non_nullable
              as Option<LocationFailure>,
      userLocation: userLocation == freezed
          ? _value.userLocation
          : userLocation // ignore: cast_nullable_to_non_nullable
              as Option<UserLocationEntity>,
    ));
  }
}

/// @nodoc
abstract class _$LocationStateCopyWith<$Res>
    implements $LocationStateCopyWith<$Res> {
  factory _$LocationStateCopyWith(
          _LocationState value, $Res Function(_LocationState) then) =
      __$LocationStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool hasPermission,
      bool permissionAsked,
      Option<LocationFailure> failureOption,
      Option<UserLocationEntity> userLocation});
}

/// @nodoc
class __$LocationStateCopyWithImpl<$Res>
    extends _$LocationStateCopyWithImpl<$Res>
    implements _$LocationStateCopyWith<$Res> {
  __$LocationStateCopyWithImpl(
      _LocationState _value, $Res Function(_LocationState) _then)
      : super(_value, (v) => _then(v as _LocationState));

  @override
  _LocationState get _value => super._value as _LocationState;

  @override
  $Res call({
    Object? hasPermission = freezed,
    Object? permissionAsked = freezed,
    Object? failureOption = freezed,
    Object? userLocation = freezed,
  }) {
    return _then(_LocationState(
      hasPermission: hasPermission == freezed
          ? _value.hasPermission
          : hasPermission // ignore: cast_nullable_to_non_nullable
              as bool,
      permissionAsked: permissionAsked == freezed
          ? _value.permissionAsked
          : permissionAsked // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOption: failureOption == freezed
          ? _value.failureOption
          : failureOption // ignore: cast_nullable_to_non_nullable
              as Option<LocationFailure>,
      userLocation: userLocation == freezed
          ? _value.userLocation
          : userLocation // ignore: cast_nullable_to_non_nullable
              as Option<UserLocationEntity>,
    ));
  }
}

/// @nodoc

class _$_LocationState implements _LocationState {
  const _$_LocationState(
      {required this.hasPermission,
      required this.permissionAsked,
      required this.failureOption,
      required this.userLocation});

  @override
  final bool hasPermission;
  @override
  final bool permissionAsked;
  @override
  final Option<LocationFailure> failureOption;
  @override
  final Option<UserLocationEntity> userLocation;

  @override
  String toString() {
    return 'LocationState(hasPermission: $hasPermission, permissionAsked: $permissionAsked, failureOption: $failureOption, userLocation: $userLocation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LocationState &&
            const DeepCollectionEquality()
                .equals(other.hasPermission, hasPermission) &&
            const DeepCollectionEquality()
                .equals(other.permissionAsked, permissionAsked) &&
            const DeepCollectionEquality()
                .equals(other.failureOption, failureOption) &&
            const DeepCollectionEquality()
                .equals(other.userLocation, userLocation));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(hasPermission),
      const DeepCollectionEquality().hash(permissionAsked),
      const DeepCollectionEquality().hash(failureOption),
      const DeepCollectionEquality().hash(userLocation));

  @JsonKey(ignore: true)
  @override
  _$LocationStateCopyWith<_LocationState> get copyWith =>
      __$LocationStateCopyWithImpl<_LocationState>(this, _$identity);
}

abstract class _LocationState implements LocationState {
  const factory _LocationState(
      {required bool hasPermission,
      required bool permissionAsked,
      required Option<LocationFailure> failureOption,
      required Option<UserLocationEntity> userLocation}) = _$_LocationState;

  @override
  bool get hasPermission;
  @override
  bool get permissionAsked;
  @override
  Option<LocationFailure> get failureOption;
  @override
  Option<UserLocationEntity> get userLocation;
  @override
  @JsonKey(ignore: true)
  _$LocationStateCopyWith<_LocationState> get copyWith =>
      throw _privateConstructorUsedError;
}

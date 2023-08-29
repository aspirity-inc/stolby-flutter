// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LocationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkedPermission,
    required TResult Function() startWatchingLocation,
    required TResult Function() stopWatchingLocation,
    required TResult Function(
            Either<LocationFailure, UserLocationEntity> location)
        locationReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkedPermission,
    TResult? Function()? startWatchingLocation,
    TResult? Function()? stopWatchingLocation,
    TResult? Function(Either<LocationFailure, UserLocationEntity> location)?
        locationReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkedPermission,
    TResult Function()? startWatchingLocation,
    TResult Function()? stopWatchingLocation,
    TResult Function(Either<LocationFailure, UserLocationEntity> location)?
        locationReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckedPermission value) checkedPermission,
    required TResult Function(_StartWatchingLocation value)
        startWatchingLocation,
    required TResult Function(_StopWatchingLocation value) stopWatchingLocation,
    required TResult Function(_LocationReceived value) locationReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckedPermission value)? checkedPermission,
    TResult? Function(_StartWatchingLocation value)? startWatchingLocation,
    TResult? Function(_StopWatchingLocation value)? stopWatchingLocation,
    TResult? Function(_LocationReceived value)? locationReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckedPermission value)? checkedPermission,
    TResult Function(_StartWatchingLocation value)? startWatchingLocation,
    TResult Function(_StopWatchingLocation value)? stopWatchingLocation,
    TResult Function(_LocationReceived value)? locationReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationEventCopyWith<$Res> {
  factory $LocationEventCopyWith(
          LocationEvent value, $Res Function(LocationEvent) then) =
      _$LocationEventCopyWithImpl<$Res, LocationEvent>;
}

/// @nodoc
class _$LocationEventCopyWithImpl<$Res, $Val extends LocationEvent>
    implements $LocationEventCopyWith<$Res> {
  _$LocationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_CheckedPermissionCopyWith<$Res> {
  factory _$$_CheckedPermissionCopyWith(_$_CheckedPermission value,
          $Res Function(_$_CheckedPermission) then) =
      __$$_CheckedPermissionCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CheckedPermissionCopyWithImpl<$Res>
    extends _$LocationEventCopyWithImpl<$Res, _$_CheckedPermission>
    implements _$$_CheckedPermissionCopyWith<$Res> {
  __$$_CheckedPermissionCopyWithImpl(
      _$_CheckedPermission _value, $Res Function(_$_CheckedPermission) _then)
      : super(_value, _then);
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
        (other.runtimeType == runtimeType && other is _$_CheckedPermission);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkedPermission,
    required TResult Function() startWatchingLocation,
    required TResult Function() stopWatchingLocation,
    required TResult Function(
            Either<LocationFailure, UserLocationEntity> location)
        locationReceived,
  }) {
    return checkedPermission();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkedPermission,
    TResult? Function()? startWatchingLocation,
    TResult? Function()? stopWatchingLocation,
    TResult? Function(Either<LocationFailure, UserLocationEntity> location)?
        locationReceived,
  }) {
    return checkedPermission?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkedPermission,
    TResult Function()? startWatchingLocation,
    TResult Function()? stopWatchingLocation,
    TResult Function(Either<LocationFailure, UserLocationEntity> location)?
        locationReceived,
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
    required TResult Function(_LocationReceived value) locationReceived,
  }) {
    return checkedPermission(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckedPermission value)? checkedPermission,
    TResult? Function(_StartWatchingLocation value)? startWatchingLocation,
    TResult? Function(_StopWatchingLocation value)? stopWatchingLocation,
    TResult? Function(_LocationReceived value)? locationReceived,
  }) {
    return checkedPermission?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckedPermission value)? checkedPermission,
    TResult Function(_StartWatchingLocation value)? startWatchingLocation,
    TResult Function(_StopWatchingLocation value)? stopWatchingLocation,
    TResult Function(_LocationReceived value)? locationReceived,
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
abstract class _$$_StartWatchingLocationCopyWith<$Res> {
  factory _$$_StartWatchingLocationCopyWith(_$_StartWatchingLocation value,
          $Res Function(_$_StartWatchingLocation) then) =
      __$$_StartWatchingLocationCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartWatchingLocationCopyWithImpl<$Res>
    extends _$LocationEventCopyWithImpl<$Res, _$_StartWatchingLocation>
    implements _$$_StartWatchingLocationCopyWith<$Res> {
  __$$_StartWatchingLocationCopyWithImpl(_$_StartWatchingLocation _value,
      $Res Function(_$_StartWatchingLocation) _then)
      : super(_value, _then);
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
        (other.runtimeType == runtimeType && other is _$_StartWatchingLocation);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkedPermission,
    required TResult Function() startWatchingLocation,
    required TResult Function() stopWatchingLocation,
    required TResult Function(
            Either<LocationFailure, UserLocationEntity> location)
        locationReceived,
  }) {
    return startWatchingLocation();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkedPermission,
    TResult? Function()? startWatchingLocation,
    TResult? Function()? stopWatchingLocation,
    TResult? Function(Either<LocationFailure, UserLocationEntity> location)?
        locationReceived,
  }) {
    return startWatchingLocation?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkedPermission,
    TResult Function()? startWatchingLocation,
    TResult Function()? stopWatchingLocation,
    TResult Function(Either<LocationFailure, UserLocationEntity> location)?
        locationReceived,
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
    required TResult Function(_LocationReceived value) locationReceived,
  }) {
    return startWatchingLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckedPermission value)? checkedPermission,
    TResult? Function(_StartWatchingLocation value)? startWatchingLocation,
    TResult? Function(_StopWatchingLocation value)? stopWatchingLocation,
    TResult? Function(_LocationReceived value)? locationReceived,
  }) {
    return startWatchingLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckedPermission value)? checkedPermission,
    TResult Function(_StartWatchingLocation value)? startWatchingLocation,
    TResult Function(_StopWatchingLocation value)? stopWatchingLocation,
    TResult Function(_LocationReceived value)? locationReceived,
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
abstract class _$$_StopWatchingLocationCopyWith<$Res> {
  factory _$$_StopWatchingLocationCopyWith(_$_StopWatchingLocation value,
          $Res Function(_$_StopWatchingLocation) then) =
      __$$_StopWatchingLocationCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StopWatchingLocationCopyWithImpl<$Res>
    extends _$LocationEventCopyWithImpl<$Res, _$_StopWatchingLocation>
    implements _$$_StopWatchingLocationCopyWith<$Res> {
  __$$_StopWatchingLocationCopyWithImpl(_$_StopWatchingLocation _value,
      $Res Function(_$_StopWatchingLocation) _then)
      : super(_value, _then);
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
        (other.runtimeType == runtimeType && other is _$_StopWatchingLocation);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkedPermission,
    required TResult Function() startWatchingLocation,
    required TResult Function() stopWatchingLocation,
    required TResult Function(
            Either<LocationFailure, UserLocationEntity> location)
        locationReceived,
  }) {
    return stopWatchingLocation();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkedPermission,
    TResult? Function()? startWatchingLocation,
    TResult? Function()? stopWatchingLocation,
    TResult? Function(Either<LocationFailure, UserLocationEntity> location)?
        locationReceived,
  }) {
    return stopWatchingLocation?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkedPermission,
    TResult Function()? startWatchingLocation,
    TResult Function()? stopWatchingLocation,
    TResult Function(Either<LocationFailure, UserLocationEntity> location)?
        locationReceived,
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
    required TResult Function(_LocationReceived value) locationReceived,
  }) {
    return stopWatchingLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckedPermission value)? checkedPermission,
    TResult? Function(_StartWatchingLocation value)? startWatchingLocation,
    TResult? Function(_StopWatchingLocation value)? stopWatchingLocation,
    TResult? Function(_LocationReceived value)? locationReceived,
  }) {
    return stopWatchingLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckedPermission value)? checkedPermission,
    TResult Function(_StartWatchingLocation value)? startWatchingLocation,
    TResult Function(_StopWatchingLocation value)? stopWatchingLocation,
    TResult Function(_LocationReceived value)? locationReceived,
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
abstract class _$$_LocationReceivedCopyWith<$Res> {
  factory _$$_LocationReceivedCopyWith(
          _$_LocationReceived value, $Res Function(_$_LocationReceived) then) =
      __$$_LocationReceivedCopyWithImpl<$Res>;
  @useResult
  $Res call({Either<LocationFailure, UserLocationEntity> location});
}

/// @nodoc
class __$$_LocationReceivedCopyWithImpl<$Res>
    extends _$LocationEventCopyWithImpl<$Res, _$_LocationReceived>
    implements _$$_LocationReceivedCopyWith<$Res> {
  __$$_LocationReceivedCopyWithImpl(
      _$_LocationReceived _value, $Res Function(_$_LocationReceived) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = null,
  }) {
    return _then(_$_LocationReceived(
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Either<LocationFailure, UserLocationEntity>,
    ));
  }
}

/// @nodoc

class _$_LocationReceived implements _LocationReceived {
  const _$_LocationReceived({required this.location});

  @override
  final Either<LocationFailure, UserLocationEntity> location;

  @override
  String toString() {
    return 'LocationEvent.locationReceived(location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LocationReceived &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @override
  int get hashCode => Object.hash(runtimeType, location);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LocationReceivedCopyWith<_$_LocationReceived> get copyWith =>
      __$$_LocationReceivedCopyWithImpl<_$_LocationReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkedPermission,
    required TResult Function() startWatchingLocation,
    required TResult Function() stopWatchingLocation,
    required TResult Function(
            Either<LocationFailure, UserLocationEntity> location)
        locationReceived,
  }) {
    return locationReceived(location);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkedPermission,
    TResult? Function()? startWatchingLocation,
    TResult? Function()? stopWatchingLocation,
    TResult? Function(Either<LocationFailure, UserLocationEntity> location)?
        locationReceived,
  }) {
    return locationReceived?.call(location);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkedPermission,
    TResult Function()? startWatchingLocation,
    TResult Function()? stopWatchingLocation,
    TResult Function(Either<LocationFailure, UserLocationEntity> location)?
        locationReceived,
    required TResult orElse(),
  }) {
    if (locationReceived != null) {
      return locationReceived(location);
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
    required TResult Function(_LocationReceived value) locationReceived,
  }) {
    return locationReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckedPermission value)? checkedPermission,
    TResult? Function(_StartWatchingLocation value)? startWatchingLocation,
    TResult? Function(_StopWatchingLocation value)? stopWatchingLocation,
    TResult? Function(_LocationReceived value)? locationReceived,
  }) {
    return locationReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckedPermission value)? checkedPermission,
    TResult Function(_StartWatchingLocation value)? startWatchingLocation,
    TResult Function(_StopWatchingLocation value)? stopWatchingLocation,
    TResult Function(_LocationReceived value)? locationReceived,
    required TResult orElse(),
  }) {
    if (locationReceived != null) {
      return locationReceived(this);
    }
    return orElse();
  }
}

abstract class _LocationReceived implements LocationEvent {
  const factory _LocationReceived(
      {required final Either<LocationFailure, UserLocationEntity>
          location}) = _$_LocationReceived;

  Either<LocationFailure, UserLocationEntity> get location;
  @JsonKey(ignore: true)
  _$$_LocationReceivedCopyWith<_$_LocationReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

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
      _$LocationStateCopyWithImpl<$Res, LocationState>;
  @useResult
  $Res call(
      {bool hasPermission,
      bool permissionAsked,
      Option<LocationFailure> failureOption,
      Option<UserLocationEntity> userLocation});
}

/// @nodoc
class _$LocationStateCopyWithImpl<$Res, $Val extends LocationState>
    implements $LocationStateCopyWith<$Res> {
  _$LocationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hasPermission = null,
    Object? permissionAsked = null,
    Object? failureOption = null,
    Object? userLocation = null,
  }) {
    return _then(_value.copyWith(
      hasPermission: null == hasPermission
          ? _value.hasPermission
          : hasPermission // ignore: cast_nullable_to_non_nullable
              as bool,
      permissionAsked: null == permissionAsked
          ? _value.permissionAsked
          : permissionAsked // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOption: null == failureOption
          ? _value.failureOption
          : failureOption // ignore: cast_nullable_to_non_nullable
              as Option<LocationFailure>,
      userLocation: null == userLocation
          ? _value.userLocation
          : userLocation // ignore: cast_nullable_to_non_nullable
              as Option<UserLocationEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LocationStateCopyWith<$Res>
    implements $LocationStateCopyWith<$Res> {
  factory _$$_LocationStateCopyWith(
          _$_LocationState value, $Res Function(_$_LocationState) then) =
      __$$_LocationStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool hasPermission,
      bool permissionAsked,
      Option<LocationFailure> failureOption,
      Option<UserLocationEntity> userLocation});
}

/// @nodoc
class __$$_LocationStateCopyWithImpl<$Res>
    extends _$LocationStateCopyWithImpl<$Res, _$_LocationState>
    implements _$$_LocationStateCopyWith<$Res> {
  __$$_LocationStateCopyWithImpl(
      _$_LocationState _value, $Res Function(_$_LocationState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hasPermission = null,
    Object? permissionAsked = null,
    Object? failureOption = null,
    Object? userLocation = null,
  }) {
    return _then(_$_LocationState(
      hasPermission: null == hasPermission
          ? _value.hasPermission
          : hasPermission // ignore: cast_nullable_to_non_nullable
              as bool,
      permissionAsked: null == permissionAsked
          ? _value.permissionAsked
          : permissionAsked // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOption: null == failureOption
          ? _value.failureOption
          : failureOption // ignore: cast_nullable_to_non_nullable
              as Option<LocationFailure>,
      userLocation: null == userLocation
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
            other is _$_LocationState &&
            (identical(other.hasPermission, hasPermission) ||
                other.hasPermission == hasPermission) &&
            (identical(other.permissionAsked, permissionAsked) ||
                other.permissionAsked == permissionAsked) &&
            (identical(other.failureOption, failureOption) ||
                other.failureOption == failureOption) &&
            (identical(other.userLocation, userLocation) ||
                other.userLocation == userLocation));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, hasPermission, permissionAsked, failureOption, userLocation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LocationStateCopyWith<_$_LocationState> get copyWith =>
      __$$_LocationStateCopyWithImpl<_$_LocationState>(this, _$identity);
}

abstract class _LocationState implements LocationState {
  const factory _LocationState(
          {required final bool hasPermission,
          required final bool permissionAsked,
          required final Option<LocationFailure> failureOption,
          required final Option<UserLocationEntity> userLocation}) =
      _$_LocationState;

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
  _$$_LocationStateCopyWith<_$_LocationState> get copyWith =>
      throw _privateConstructorUsedError;
}

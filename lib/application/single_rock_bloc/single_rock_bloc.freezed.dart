// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'single_rock_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SingleRockEventTearOff {
  const _$SingleRockEventTearOff();

  _Initialized initialized({required int id}) {
    return _Initialized(
      id: id,
    );
  }

  _LocationChanged locationChanged({required LatLng location}) {
    return _LocationChanged(
      location: location,
    );
  }
}

/// @nodoc
const $SingleRockEvent = _$SingleRockEventTearOff();

/// @nodoc
mixin _$SingleRockEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) initialized,
    required TResult Function(LatLng location) locationChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int id)? initialized,
    TResult Function(LatLng location)? locationChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? initialized,
    TResult Function(LatLng location)? locationChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_LocationChanged value) locationChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_LocationChanged value)? locationChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_LocationChanged value)? locationChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SingleRockEventCopyWith<$Res> {
  factory $SingleRockEventCopyWith(
          SingleRockEvent value, $Res Function(SingleRockEvent) then) =
      _$SingleRockEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SingleRockEventCopyWithImpl<$Res>
    implements $SingleRockEventCopyWith<$Res> {
  _$SingleRockEventCopyWithImpl(this._value, this._then);

  final SingleRockEvent _value;
  // ignore: unused_field
  final $Res Function(SingleRockEvent) _then;
}

/// @nodoc
abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
  $Res call({int id});
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res>
    extends _$SingleRockEventCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(
      _Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_Initialized(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Initialized implements _Initialized {
  const _$_Initialized({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'SingleRockEvent.initialized(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Initialized &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  _$InitializedCopyWith<_Initialized> get copyWith =>
      __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) initialized,
    required TResult Function(LatLng location) locationChanged,
  }) {
    return initialized(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int id)? initialized,
    TResult Function(LatLng location)? locationChanged,
  }) {
    return initialized?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? initialized,
    TResult Function(LatLng location)? locationChanged,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_LocationChanged value) locationChanged,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_LocationChanged value)? locationChanged,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_LocationChanged value)? locationChanged,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements SingleRockEvent {
  const factory _Initialized({required int id}) = _$_Initialized;

  int get id;
  @JsonKey(ignore: true)
  _$InitializedCopyWith<_Initialized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LocationChangedCopyWith<$Res> {
  factory _$LocationChangedCopyWith(
          _LocationChanged value, $Res Function(_LocationChanged) then) =
      __$LocationChangedCopyWithImpl<$Res>;
  $Res call({LatLng location});
}

/// @nodoc
class __$LocationChangedCopyWithImpl<$Res>
    extends _$SingleRockEventCopyWithImpl<$Res>
    implements _$LocationChangedCopyWith<$Res> {
  __$LocationChangedCopyWithImpl(
      _LocationChanged _value, $Res Function(_LocationChanged) _then)
      : super(_value, (v) => _then(v as _LocationChanged));

  @override
  _LocationChanged get _value => super._value as _LocationChanged;

  @override
  $Res call({
    Object? location = freezed,
  }) {
    return _then(_LocationChanged(
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LatLng,
    ));
  }
}

/// @nodoc

class _$_LocationChanged implements _LocationChanged {
  const _$_LocationChanged({required this.location});

  @override
  final LatLng location;

  @override
  String toString() {
    return 'SingleRockEvent.locationChanged(location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LocationChanged &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @override
  int get hashCode => Object.hash(runtimeType, location);

  @JsonKey(ignore: true)
  @override
  _$LocationChangedCopyWith<_LocationChanged> get copyWith =>
      __$LocationChangedCopyWithImpl<_LocationChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) initialized,
    required TResult Function(LatLng location) locationChanged,
  }) {
    return locationChanged(location);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int id)? initialized,
    TResult Function(LatLng location)? locationChanged,
  }) {
    return locationChanged?.call(location);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? initialized,
    TResult Function(LatLng location)? locationChanged,
    required TResult orElse(),
  }) {
    if (locationChanged != null) {
      return locationChanged(location);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_LocationChanged value) locationChanged,
  }) {
    return locationChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_LocationChanged value)? locationChanged,
  }) {
    return locationChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_LocationChanged value)? locationChanged,
    required TResult orElse(),
  }) {
    if (locationChanged != null) {
      return locationChanged(this);
    }
    return orElse();
  }
}

abstract class _LocationChanged implements SingleRockEvent {
  const factory _LocationChanged({required LatLng location}) =
      _$_LocationChanged;

  LatLng get location;
  @JsonKey(ignore: true)
  _$LocationChangedCopyWith<_LocationChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SingleRockStateTearOff {
  const _$SingleRockStateTearOff();

  _SingleRockState call(
      {required Option<DetailedRockEntity> rock,
      required Option<double> distance}) {
    return _SingleRockState(
      rock: rock,
      distance: distance,
    );
  }
}

/// @nodoc
const $SingleRockState = _$SingleRockStateTearOff();

/// @nodoc
mixin _$SingleRockState {
  Option<DetailedRockEntity> get rock => throw _privateConstructorUsedError;
  Option<double> get distance => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SingleRockStateCopyWith<SingleRockState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SingleRockStateCopyWith<$Res> {
  factory $SingleRockStateCopyWith(
          SingleRockState value, $Res Function(SingleRockState) then) =
      _$SingleRockStateCopyWithImpl<$Res>;
  $Res call({Option<DetailedRockEntity> rock, Option<double> distance});
}

/// @nodoc
class _$SingleRockStateCopyWithImpl<$Res>
    implements $SingleRockStateCopyWith<$Res> {
  _$SingleRockStateCopyWithImpl(this._value, this._then);

  final SingleRockState _value;
  // ignore: unused_field
  final $Res Function(SingleRockState) _then;

  @override
  $Res call({
    Object? rock = freezed,
    Object? distance = freezed,
  }) {
    return _then(_value.copyWith(
      rock: rock == freezed
          ? _value.rock
          : rock // ignore: cast_nullable_to_non_nullable
              as Option<DetailedRockEntity>,
      distance: distance == freezed
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as Option<double>,
    ));
  }
}

/// @nodoc
abstract class _$SingleRockStateCopyWith<$Res>
    implements $SingleRockStateCopyWith<$Res> {
  factory _$SingleRockStateCopyWith(
          _SingleRockState value, $Res Function(_SingleRockState) then) =
      __$SingleRockStateCopyWithImpl<$Res>;
  @override
  $Res call({Option<DetailedRockEntity> rock, Option<double> distance});
}

/// @nodoc
class __$SingleRockStateCopyWithImpl<$Res>
    extends _$SingleRockStateCopyWithImpl<$Res>
    implements _$SingleRockStateCopyWith<$Res> {
  __$SingleRockStateCopyWithImpl(
      _SingleRockState _value, $Res Function(_SingleRockState) _then)
      : super(_value, (v) => _then(v as _SingleRockState));

  @override
  _SingleRockState get _value => super._value as _SingleRockState;

  @override
  $Res call({
    Object? rock = freezed,
    Object? distance = freezed,
  }) {
    return _then(_SingleRockState(
      rock: rock == freezed
          ? _value.rock
          : rock // ignore: cast_nullable_to_non_nullable
              as Option<DetailedRockEntity>,
      distance: distance == freezed
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as Option<double>,
    ));
  }
}

/// @nodoc

class _$_SingleRockState implements _SingleRockState {
  const _$_SingleRockState({required this.rock, required this.distance});

  @override
  final Option<DetailedRockEntity> rock;
  @override
  final Option<double> distance;

  @override
  String toString() {
    return 'SingleRockState(rock: $rock, distance: $distance)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SingleRockState &&
            (identical(other.rock, rock) || other.rock == rock) &&
            (identical(other.distance, distance) ||
                other.distance == distance));
  }

  @override
  int get hashCode => Object.hash(runtimeType, rock, distance);

  @JsonKey(ignore: true)
  @override
  _$SingleRockStateCopyWith<_SingleRockState> get copyWith =>
      __$SingleRockStateCopyWithImpl<_SingleRockState>(this, _$identity);
}

abstract class _SingleRockState implements SingleRockState {
  const factory _SingleRockState(
      {required Option<DetailedRockEntity> rock,
      required Option<double> distance}) = _$_SingleRockState;

  @override
  Option<DetailedRockEntity> get rock;
  @override
  Option<double> get distance;
  @override
  @JsonKey(ignore: true)
  _$SingleRockStateCopyWith<_SingleRockState> get copyWith =>
      throw _privateConstructorUsedError;
}

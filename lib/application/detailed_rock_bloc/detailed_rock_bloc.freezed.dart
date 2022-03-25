// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'detailed_rock_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DetailedRockEventTearOff {
  const _$DetailedRockEventTearOff();

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
const $DetailedRockEvent = _$DetailedRockEventTearOff();

/// @nodoc
mixin _$DetailedRockEvent {
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
abstract class $DetailedRockEventCopyWith<$Res> {
  factory $DetailedRockEventCopyWith(
          DetailedRockEvent value, $Res Function(DetailedRockEvent) then) =
      _$DetailedRockEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$DetailedRockEventCopyWithImpl<$Res>
    implements $DetailedRockEventCopyWith<$Res> {
  _$DetailedRockEventCopyWithImpl(this._value, this._then);

  final DetailedRockEvent _value;
  // ignore: unused_field
  final $Res Function(DetailedRockEvent) _then;
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
    extends _$DetailedRockEventCopyWithImpl<$Res>
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
    return 'DetailedRockEvent.initialized(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Initialized &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(id));

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

abstract class _Initialized implements DetailedRockEvent {
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
    extends _$DetailedRockEventCopyWithImpl<$Res>
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
    return 'DetailedRockEvent.locationChanged(location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LocationChanged &&
            const DeepCollectionEquality().equals(other.location, location));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(location));

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

abstract class _LocationChanged implements DetailedRockEvent {
  const factory _LocationChanged({required LatLng location}) =
      _$_LocationChanged;

  LatLng get location;
  @JsonKey(ignore: true)
  _$LocationChangedCopyWith<_LocationChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$DetailedRockStateTearOff {
  const _$DetailedRockStateTearOff();

  _DetailedRockState call(
      {required Option<DetailedRockEntity> rock,
      required Option<double> distance}) {
    return _DetailedRockState(
      rock: rock,
      distance: distance,
    );
  }
}

/// @nodoc
const $DetailedRockState = _$DetailedRockStateTearOff();

/// @nodoc
mixin _$DetailedRockState {
  Option<DetailedRockEntity> get rock => throw _privateConstructorUsedError;
  Option<double> get distance => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DetailedRockStateCopyWith<DetailedRockState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailedRockStateCopyWith<$Res> {
  factory $DetailedRockStateCopyWith(
          DetailedRockState value, $Res Function(DetailedRockState) then) =
      _$DetailedRockStateCopyWithImpl<$Res>;
  $Res call({Option<DetailedRockEntity> rock, Option<double> distance});
}

/// @nodoc
class _$DetailedRockStateCopyWithImpl<$Res>
    implements $DetailedRockStateCopyWith<$Res> {
  _$DetailedRockStateCopyWithImpl(this._value, this._then);

  final DetailedRockState _value;
  // ignore: unused_field
  final $Res Function(DetailedRockState) _then;

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
abstract class _$DetailedRockStateCopyWith<$Res>
    implements $DetailedRockStateCopyWith<$Res> {
  factory _$DetailedRockStateCopyWith(
          _DetailedRockState value, $Res Function(_DetailedRockState) then) =
      __$DetailedRockStateCopyWithImpl<$Res>;
  @override
  $Res call({Option<DetailedRockEntity> rock, Option<double> distance});
}

/// @nodoc
class __$DetailedRockStateCopyWithImpl<$Res>
    extends _$DetailedRockStateCopyWithImpl<$Res>
    implements _$DetailedRockStateCopyWith<$Res> {
  __$DetailedRockStateCopyWithImpl(
      _DetailedRockState _value, $Res Function(_DetailedRockState) _then)
      : super(_value, (v) => _then(v as _DetailedRockState));

  @override
  _DetailedRockState get _value => super._value as _DetailedRockState;

  @override
  $Res call({
    Object? rock = freezed,
    Object? distance = freezed,
  }) {
    return _then(_DetailedRockState(
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

class _$_DetailedRockState implements _DetailedRockState {
  const _$_DetailedRockState({required this.rock, required this.distance});

  @override
  final Option<DetailedRockEntity> rock;
  @override
  final Option<double> distance;

  @override
  String toString() {
    return 'DetailedRockState(rock: $rock, distance: $distance)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DetailedRockState &&
            const DeepCollectionEquality().equals(other.rock, rock) &&
            const DeepCollectionEquality().equals(other.distance, distance));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(rock),
      const DeepCollectionEquality().hash(distance));

  @JsonKey(ignore: true)
  @override
  _$DetailedRockStateCopyWith<_DetailedRockState> get copyWith =>
      __$DetailedRockStateCopyWithImpl<_DetailedRockState>(this, _$identity);
}

abstract class _DetailedRockState implements DetailedRockState {
  const factory _DetailedRockState(
      {required Option<DetailedRockEntity> rock,
      required Option<double> distance}) = _$_DetailedRockState;

  @override
  Option<DetailedRockEntity> get rock;
  @override
  Option<double> get distance;
  @override
  @JsonKey(ignore: true)
  _$DetailedRockStateCopyWith<_DetailedRockState> get copyWith =>
      throw _privateConstructorUsedError;
}

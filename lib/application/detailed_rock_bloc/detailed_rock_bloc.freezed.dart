// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detailed_rock_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
    TResult? Function(int id)? initialized,
    TResult? Function(LatLng location)? locationChanged,
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
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_LocationChanged value)? locationChanged,
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
      _$DetailedRockEventCopyWithImpl<$Res, DetailedRockEvent>;
}

/// @nodoc
class _$DetailedRockEventCopyWithImpl<$Res, $Val extends DetailedRockEvent>
    implements $DetailedRockEventCopyWith<$Res> {
  _$DetailedRockEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitializedCopyWith<$Res> {
  factory _$$_InitializedCopyWith(
          _$_Initialized value, $Res Function(_$_Initialized) then) =
      __$$_InitializedCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$_InitializedCopyWithImpl<$Res>
    extends _$DetailedRockEventCopyWithImpl<$Res, _$_Initialized>
    implements _$$_InitializedCopyWith<$Res> {
  __$$_InitializedCopyWithImpl(
      _$_Initialized _value, $Res Function(_$_Initialized) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_Initialized(
      id: null == id
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
            other is _$_Initialized &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitializedCopyWith<_$_Initialized> get copyWith =>
      __$$_InitializedCopyWithImpl<_$_Initialized>(this, _$identity);

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
    TResult? Function(int id)? initialized,
    TResult? Function(LatLng location)? locationChanged,
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
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_LocationChanged value)? locationChanged,
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
  const factory _Initialized({required final int id}) = _$_Initialized;

  int get id;
  @JsonKey(ignore: true)
  _$$_InitializedCopyWith<_$_Initialized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LocationChangedCopyWith<$Res> {
  factory _$$_LocationChangedCopyWith(
          _$_LocationChanged value, $Res Function(_$_LocationChanged) then) =
      __$$_LocationChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({LatLng location});
}

/// @nodoc
class __$$_LocationChangedCopyWithImpl<$Res>
    extends _$DetailedRockEventCopyWithImpl<$Res, _$_LocationChanged>
    implements _$$_LocationChangedCopyWith<$Res> {
  __$$_LocationChangedCopyWithImpl(
      _$_LocationChanged _value, $Res Function(_$_LocationChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = null,
  }) {
    return _then(_$_LocationChanged(
      location: null == location
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
            other is _$_LocationChanged &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @override
  int get hashCode => Object.hash(runtimeType, location);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LocationChangedCopyWith<_$_LocationChanged> get copyWith =>
      __$$_LocationChangedCopyWithImpl<_$_LocationChanged>(this, _$identity);

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
    TResult? Function(int id)? initialized,
    TResult? Function(LatLng location)? locationChanged,
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
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_LocationChanged value)? locationChanged,
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
  const factory _LocationChanged({required final LatLng location}) =
      _$_LocationChanged;

  LatLng get location;
  @JsonKey(ignore: true)
  _$$_LocationChangedCopyWith<_$_LocationChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

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
      _$DetailedRockStateCopyWithImpl<$Res, DetailedRockState>;
  @useResult
  $Res call({Option<DetailedRockEntity> rock, Option<double> distance});
}

/// @nodoc
class _$DetailedRockStateCopyWithImpl<$Res, $Val extends DetailedRockState>
    implements $DetailedRockStateCopyWith<$Res> {
  _$DetailedRockStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rock = null,
    Object? distance = null,
  }) {
    return _then(_value.copyWith(
      rock: null == rock
          ? _value.rock
          : rock // ignore: cast_nullable_to_non_nullable
              as Option<DetailedRockEntity>,
      distance: null == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as Option<double>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DetailedRockStateCopyWith<$Res>
    implements $DetailedRockStateCopyWith<$Res> {
  factory _$$_DetailedRockStateCopyWith(_$_DetailedRockState value,
          $Res Function(_$_DetailedRockState) then) =
      __$$_DetailedRockStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Option<DetailedRockEntity> rock, Option<double> distance});
}

/// @nodoc
class __$$_DetailedRockStateCopyWithImpl<$Res>
    extends _$DetailedRockStateCopyWithImpl<$Res, _$_DetailedRockState>
    implements _$$_DetailedRockStateCopyWith<$Res> {
  __$$_DetailedRockStateCopyWithImpl(
      _$_DetailedRockState _value, $Res Function(_$_DetailedRockState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rock = null,
    Object? distance = null,
  }) {
    return _then(_$_DetailedRockState(
      rock: null == rock
          ? _value.rock
          : rock // ignore: cast_nullable_to_non_nullable
              as Option<DetailedRockEntity>,
      distance: null == distance
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
            other is _$_DetailedRockState &&
            (identical(other.rock, rock) || other.rock == rock) &&
            (identical(other.distance, distance) ||
                other.distance == distance));
  }

  @override
  int get hashCode => Object.hash(runtimeType, rock, distance);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DetailedRockStateCopyWith<_$_DetailedRockState> get copyWith =>
      __$$_DetailedRockStateCopyWithImpl<_$_DetailedRockState>(
          this, _$identity);
}

abstract class _DetailedRockState implements DetailedRockState {
  const factory _DetailedRockState(
      {required final Option<DetailedRockEntity> rock,
      required final Option<double> distance}) = _$_DetailedRockState;

  @override
  Option<DetailedRockEntity> get rock;
  @override
  Option<double> get distance;
  @override
  @JsonKey(ignore: true)
  _$$_DetailedRockStateCopyWith<_$_DetailedRockState> get copyWith =>
      throw _privateConstructorUsedError;
}

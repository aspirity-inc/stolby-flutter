// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'map_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MapEventTearOff {
  const _$MapEventTearOff();

  _Initialized initialized() {
    return const _Initialized();
  }

  _ZoomChanged zoomChanged(double zoom) {
    return _ZoomChanged(
      zoom,
    );
  }

  _AngleChanged angleChanged(double angle) {
    return _AngleChanged(
      angle,
    );
  }
}

/// @nodoc
const $MapEvent = _$MapEventTearOff();

/// @nodoc
mixin _$MapEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(double zoom) zoomChanged,
    required TResult Function(double angle) angleChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(double zoom)? zoomChanged,
    TResult Function(double angle)? angleChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(double zoom)? zoomChanged,
    TResult Function(double angle)? angleChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_ZoomChanged value) zoomChanged,
    required TResult Function(_AngleChanged value) angleChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_ZoomChanged value)? zoomChanged,
    TResult Function(_AngleChanged value)? angleChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_ZoomChanged value)? zoomChanged,
    TResult Function(_AngleChanged value)? angleChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapEventCopyWith<$Res> {
  factory $MapEventCopyWith(MapEvent value, $Res Function(MapEvent) then) =
      _$MapEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$MapEventCopyWithImpl<$Res> implements $MapEventCopyWith<$Res> {
  _$MapEventCopyWithImpl(this._value, this._then);

  final MapEvent _value;
  // ignore: unused_field
  final $Res Function(MapEvent) _then;
}

/// @nodoc
abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res> extends _$MapEventCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(
      _Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;
}

/// @nodoc

class _$_Initialized implements _Initialized {
  const _$_Initialized();

  @override
  String toString() {
    return 'MapEvent.initialized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initialized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(double zoom) zoomChanged,
    required TResult Function(double angle) angleChanged,
  }) {
    return initialized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(double zoom)? zoomChanged,
    TResult Function(double angle)? angleChanged,
  }) {
    return initialized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(double zoom)? zoomChanged,
    TResult Function(double angle)? angleChanged,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_ZoomChanged value) zoomChanged,
    required TResult Function(_AngleChanged value) angleChanged,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_ZoomChanged value)? zoomChanged,
    TResult Function(_AngleChanged value)? angleChanged,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_ZoomChanged value)? zoomChanged,
    TResult Function(_AngleChanged value)? angleChanged,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements MapEvent {
  const factory _Initialized() = _$_Initialized;
}

/// @nodoc
abstract class _$ZoomChangedCopyWith<$Res> {
  factory _$ZoomChangedCopyWith(
          _ZoomChanged value, $Res Function(_ZoomChanged) then) =
      __$ZoomChangedCopyWithImpl<$Res>;
  $Res call({double zoom});
}

/// @nodoc
class __$ZoomChangedCopyWithImpl<$Res> extends _$MapEventCopyWithImpl<$Res>
    implements _$ZoomChangedCopyWith<$Res> {
  __$ZoomChangedCopyWithImpl(
      _ZoomChanged _value, $Res Function(_ZoomChanged) _then)
      : super(_value, (v) => _then(v as _ZoomChanged));

  @override
  _ZoomChanged get _value => super._value as _ZoomChanged;

  @override
  $Res call({
    Object? zoom = freezed,
  }) {
    return _then(_ZoomChanged(
      zoom == freezed
          ? _value.zoom
          : zoom // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_ZoomChanged implements _ZoomChanged {
  const _$_ZoomChanged(this.zoom);

  @override
  final double zoom;

  @override
  String toString() {
    return 'MapEvent.zoomChanged(zoom: $zoom)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ZoomChanged &&
            const DeepCollectionEquality().equals(other.zoom, zoom));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(zoom));

  @JsonKey(ignore: true)
  @override
  _$ZoomChangedCopyWith<_ZoomChanged> get copyWith =>
      __$ZoomChangedCopyWithImpl<_ZoomChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(double zoom) zoomChanged,
    required TResult Function(double angle) angleChanged,
  }) {
    return zoomChanged(zoom);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(double zoom)? zoomChanged,
    TResult Function(double angle)? angleChanged,
  }) {
    return zoomChanged?.call(zoom);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(double zoom)? zoomChanged,
    TResult Function(double angle)? angleChanged,
    required TResult orElse(),
  }) {
    if (zoomChanged != null) {
      return zoomChanged(zoom);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_ZoomChanged value) zoomChanged,
    required TResult Function(_AngleChanged value) angleChanged,
  }) {
    return zoomChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_ZoomChanged value)? zoomChanged,
    TResult Function(_AngleChanged value)? angleChanged,
  }) {
    return zoomChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_ZoomChanged value)? zoomChanged,
    TResult Function(_AngleChanged value)? angleChanged,
    required TResult orElse(),
  }) {
    if (zoomChanged != null) {
      return zoomChanged(this);
    }
    return orElse();
  }
}

abstract class _ZoomChanged implements MapEvent {
  const factory _ZoomChanged(double zoom) = _$_ZoomChanged;

  double get zoom;
  @JsonKey(ignore: true)
  _$ZoomChangedCopyWith<_ZoomChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AngleChangedCopyWith<$Res> {
  factory _$AngleChangedCopyWith(
          _AngleChanged value, $Res Function(_AngleChanged) then) =
      __$AngleChangedCopyWithImpl<$Res>;
  $Res call({double angle});
}

/// @nodoc
class __$AngleChangedCopyWithImpl<$Res> extends _$MapEventCopyWithImpl<$Res>
    implements _$AngleChangedCopyWith<$Res> {
  __$AngleChangedCopyWithImpl(
      _AngleChanged _value, $Res Function(_AngleChanged) _then)
      : super(_value, (v) => _then(v as _AngleChanged));

  @override
  _AngleChanged get _value => super._value as _AngleChanged;

  @override
  $Res call({
    Object? angle = freezed,
  }) {
    return _then(_AngleChanged(
      angle == freezed
          ? _value.angle
          : angle // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_AngleChanged implements _AngleChanged {
  const _$_AngleChanged(this.angle);

  @override
  final double angle;

  @override
  String toString() {
    return 'MapEvent.angleChanged(angle: $angle)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AngleChanged &&
            const DeepCollectionEquality().equals(other.angle, angle));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(angle));

  @JsonKey(ignore: true)
  @override
  _$AngleChangedCopyWith<_AngleChanged> get copyWith =>
      __$AngleChangedCopyWithImpl<_AngleChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(double zoom) zoomChanged,
    required TResult Function(double angle) angleChanged,
  }) {
    return angleChanged(angle);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(double zoom)? zoomChanged,
    TResult Function(double angle)? angleChanged,
  }) {
    return angleChanged?.call(angle);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(double zoom)? zoomChanged,
    TResult Function(double angle)? angleChanged,
    required TResult orElse(),
  }) {
    if (angleChanged != null) {
      return angleChanged(angle);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_ZoomChanged value) zoomChanged,
    required TResult Function(_AngleChanged value) angleChanged,
  }) {
    return angleChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_ZoomChanged value)? zoomChanged,
    TResult Function(_AngleChanged value)? angleChanged,
  }) {
    return angleChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_ZoomChanged value)? zoomChanged,
    TResult Function(_AngleChanged value)? angleChanged,
    required TResult orElse(),
  }) {
    if (angleChanged != null) {
      return angleChanged(this);
    }
    return orElse();
  }
}

abstract class _AngleChanged implements MapEvent {
  const factory _AngleChanged(double angle) = _$_AngleChanged;

  double get angle;
  @JsonKey(ignore: true)
  _$AngleChangedCopyWith<_AngleChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$MapStateTearOff {
  const _$MapStateTearOff();

  _MapState call(
      {required List<RockEntity> rocks,
      required bool loading,
      required double zoom,
      required double angle}) {
    return _MapState(
      rocks: rocks,
      loading: loading,
      zoom: zoom,
      angle: angle,
    );
  }
}

/// @nodoc
const $MapState = _$MapStateTearOff();

/// @nodoc
mixin _$MapState {
  List<RockEntity> get rocks => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  double get zoom => throw _privateConstructorUsedError;
  double get angle => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MapStateCopyWith<MapState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapStateCopyWith<$Res> {
  factory $MapStateCopyWith(MapState value, $Res Function(MapState) then) =
      _$MapStateCopyWithImpl<$Res>;
  $Res call({List<RockEntity> rocks, bool loading, double zoom, double angle});
}

/// @nodoc
class _$MapStateCopyWithImpl<$Res> implements $MapStateCopyWith<$Res> {
  _$MapStateCopyWithImpl(this._value, this._then);

  final MapState _value;
  // ignore: unused_field
  final $Res Function(MapState) _then;

  @override
  $Res call({
    Object? rocks = freezed,
    Object? loading = freezed,
    Object? zoom = freezed,
    Object? angle = freezed,
  }) {
    return _then(_value.copyWith(
      rocks: rocks == freezed
          ? _value.rocks
          : rocks // ignore: cast_nullable_to_non_nullable
              as List<RockEntity>,
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      zoom: zoom == freezed
          ? _value.zoom
          : zoom // ignore: cast_nullable_to_non_nullable
              as double,
      angle: angle == freezed
          ? _value.angle
          : angle // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$MapStateCopyWith<$Res> implements $MapStateCopyWith<$Res> {
  factory _$MapStateCopyWith(_MapState value, $Res Function(_MapState) then) =
      __$MapStateCopyWithImpl<$Res>;
  @override
  $Res call({List<RockEntity> rocks, bool loading, double zoom, double angle});
}

/// @nodoc
class __$MapStateCopyWithImpl<$Res> extends _$MapStateCopyWithImpl<$Res>
    implements _$MapStateCopyWith<$Res> {
  __$MapStateCopyWithImpl(_MapState _value, $Res Function(_MapState) _then)
      : super(_value, (v) => _then(v as _MapState));

  @override
  _MapState get _value => super._value as _MapState;

  @override
  $Res call({
    Object? rocks = freezed,
    Object? loading = freezed,
    Object? zoom = freezed,
    Object? angle = freezed,
  }) {
    return _then(_MapState(
      rocks: rocks == freezed
          ? _value.rocks
          : rocks // ignore: cast_nullable_to_non_nullable
              as List<RockEntity>,
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      zoom: zoom == freezed
          ? _value.zoom
          : zoom // ignore: cast_nullable_to_non_nullable
              as double,
      angle: angle == freezed
          ? _value.angle
          : angle // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_MapState implements _MapState {
  const _$_MapState(
      {required this.rocks,
      required this.loading,
      required this.zoom,
      required this.angle});

  @override
  final List<RockEntity> rocks;
  @override
  final bool loading;
  @override
  final double zoom;
  @override
  final double angle;

  @override
  String toString() {
    return 'MapState(rocks: $rocks, loading: $loading, zoom: $zoom, angle: $angle)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MapState &&
            const DeepCollectionEquality().equals(other.rocks, rocks) &&
            const DeepCollectionEquality().equals(other.loading, loading) &&
            const DeepCollectionEquality().equals(other.zoom, zoom) &&
            const DeepCollectionEquality().equals(other.angle, angle));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(rocks),
      const DeepCollectionEquality().hash(loading),
      const DeepCollectionEquality().hash(zoom),
      const DeepCollectionEquality().hash(angle));

  @JsonKey(ignore: true)
  @override
  _$MapStateCopyWith<_MapState> get copyWith =>
      __$MapStateCopyWithImpl<_MapState>(this, _$identity);
}

abstract class _MapState implements MapState {
  const factory _MapState(
      {required List<RockEntity> rocks,
      required bool loading,
      required double zoom,
      required double angle}) = _$_MapState;

  @override
  List<RockEntity> get rocks;
  @override
  bool get loading;
  @override
  double get zoom;
  @override
  double get angle;
  @override
  @JsonKey(ignore: true)
  _$MapStateCopyWith<_MapState> get copyWith =>
      throw _privateConstructorUsedError;
}

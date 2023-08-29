// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'map_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
    TResult? Function()? initialized,
    TResult? Function(double zoom)? zoomChanged,
    TResult? Function(double angle)? angleChanged,
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
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_ZoomChanged value)? zoomChanged,
    TResult? Function(_AngleChanged value)? angleChanged,
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
      _$MapEventCopyWithImpl<$Res, MapEvent>;
}

/// @nodoc
class _$MapEventCopyWithImpl<$Res, $Val extends MapEvent>
    implements $MapEventCopyWith<$Res> {
  _$MapEventCopyWithImpl(this._value, this._then);

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
}

/// @nodoc
class __$$_InitializedCopyWithImpl<$Res>
    extends _$MapEventCopyWithImpl<$Res, _$_Initialized>
    implements _$$_InitializedCopyWith<$Res> {
  __$$_InitializedCopyWithImpl(
      _$_Initialized _value, $Res Function(_$_Initialized) _then)
      : super(_value, _then);
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
        (other.runtimeType == runtimeType && other is _$_Initialized);
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
    TResult? Function()? initialized,
    TResult? Function(double zoom)? zoomChanged,
    TResult? Function(double angle)? angleChanged,
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
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_ZoomChanged value)? zoomChanged,
    TResult? Function(_AngleChanged value)? angleChanged,
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
abstract class _$$_ZoomChangedCopyWith<$Res> {
  factory _$$_ZoomChangedCopyWith(
          _$_ZoomChanged value, $Res Function(_$_ZoomChanged) then) =
      __$$_ZoomChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({double zoom});
}

/// @nodoc
class __$$_ZoomChangedCopyWithImpl<$Res>
    extends _$MapEventCopyWithImpl<$Res, _$_ZoomChanged>
    implements _$$_ZoomChangedCopyWith<$Res> {
  __$$_ZoomChangedCopyWithImpl(
      _$_ZoomChanged _value, $Res Function(_$_ZoomChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? zoom = null,
  }) {
    return _then(_$_ZoomChanged(
      null == zoom
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
            other is _$_ZoomChanged &&
            (identical(other.zoom, zoom) || other.zoom == zoom));
  }

  @override
  int get hashCode => Object.hash(runtimeType, zoom);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ZoomChangedCopyWith<_$_ZoomChanged> get copyWith =>
      __$$_ZoomChangedCopyWithImpl<_$_ZoomChanged>(this, _$identity);

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
    TResult? Function()? initialized,
    TResult? Function(double zoom)? zoomChanged,
    TResult? Function(double angle)? angleChanged,
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
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_ZoomChanged value)? zoomChanged,
    TResult? Function(_AngleChanged value)? angleChanged,
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
  const factory _ZoomChanged(final double zoom) = _$_ZoomChanged;

  double get zoom;
  @JsonKey(ignore: true)
  _$$_ZoomChangedCopyWith<_$_ZoomChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AngleChangedCopyWith<$Res> {
  factory _$$_AngleChangedCopyWith(
          _$_AngleChanged value, $Res Function(_$_AngleChanged) then) =
      __$$_AngleChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({double angle});
}

/// @nodoc
class __$$_AngleChangedCopyWithImpl<$Res>
    extends _$MapEventCopyWithImpl<$Res, _$_AngleChanged>
    implements _$$_AngleChangedCopyWith<$Res> {
  __$$_AngleChangedCopyWithImpl(
      _$_AngleChanged _value, $Res Function(_$_AngleChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? angle = null,
  }) {
    return _then(_$_AngleChanged(
      null == angle
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
            other is _$_AngleChanged &&
            (identical(other.angle, angle) || other.angle == angle));
  }

  @override
  int get hashCode => Object.hash(runtimeType, angle);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AngleChangedCopyWith<_$_AngleChanged> get copyWith =>
      __$$_AngleChangedCopyWithImpl<_$_AngleChanged>(this, _$identity);

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
    TResult? Function()? initialized,
    TResult? Function(double zoom)? zoomChanged,
    TResult? Function(double angle)? angleChanged,
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
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_ZoomChanged value)? zoomChanged,
    TResult? Function(_AngleChanged value)? angleChanged,
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
  const factory _AngleChanged(final double angle) = _$_AngleChanged;

  double get angle;
  @JsonKey(ignore: true)
  _$$_AngleChangedCopyWith<_$_AngleChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

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
      _$MapStateCopyWithImpl<$Res, MapState>;
  @useResult
  $Res call({List<RockEntity> rocks, bool loading, double zoom, double angle});
}

/// @nodoc
class _$MapStateCopyWithImpl<$Res, $Val extends MapState>
    implements $MapStateCopyWith<$Res> {
  _$MapStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rocks = null,
    Object? loading = null,
    Object? zoom = null,
    Object? angle = null,
  }) {
    return _then(_value.copyWith(
      rocks: null == rocks
          ? _value.rocks
          : rocks // ignore: cast_nullable_to_non_nullable
              as List<RockEntity>,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      zoom: null == zoom
          ? _value.zoom
          : zoom // ignore: cast_nullable_to_non_nullable
              as double,
      angle: null == angle
          ? _value.angle
          : angle // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MapStateCopyWith<$Res> implements $MapStateCopyWith<$Res> {
  factory _$$_MapStateCopyWith(
          _$_MapState value, $Res Function(_$_MapState) then) =
      __$$_MapStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<RockEntity> rocks, bool loading, double zoom, double angle});
}

/// @nodoc
class __$$_MapStateCopyWithImpl<$Res>
    extends _$MapStateCopyWithImpl<$Res, _$_MapState>
    implements _$$_MapStateCopyWith<$Res> {
  __$$_MapStateCopyWithImpl(
      _$_MapState _value, $Res Function(_$_MapState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rocks = null,
    Object? loading = null,
    Object? zoom = null,
    Object? angle = null,
  }) {
    return _then(_$_MapState(
      rocks: null == rocks
          ? _value._rocks
          : rocks // ignore: cast_nullable_to_non_nullable
              as List<RockEntity>,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      zoom: null == zoom
          ? _value.zoom
          : zoom // ignore: cast_nullable_to_non_nullable
              as double,
      angle: null == angle
          ? _value.angle
          : angle // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_MapState implements _MapState {
  const _$_MapState(
      {required final List<RockEntity> rocks,
      required this.loading,
      required this.zoom,
      required this.angle})
      : _rocks = rocks;

  final List<RockEntity> _rocks;
  @override
  List<RockEntity> get rocks {
    if (_rocks is EqualUnmodifiableListView) return _rocks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rocks);
  }

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
            other is _$_MapState &&
            const DeepCollectionEquality().equals(other._rocks, _rocks) &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.zoom, zoom) || other.zoom == zoom) &&
            (identical(other.angle, angle) || other.angle == angle));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_rocks), loading, zoom, angle);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MapStateCopyWith<_$_MapState> get copyWith =>
      __$$_MapStateCopyWithImpl<_$_MapState>(this, _$identity);
}

abstract class _MapState implements MapState {
  const factory _MapState(
      {required final List<RockEntity> rocks,
      required final bool loading,
      required final double zoom,
      required final double angle}) = _$_MapState;

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
  _$$_MapStateCopyWith<_$_MapState> get copyWith =>
      throw _privateConstructorUsedError;
}

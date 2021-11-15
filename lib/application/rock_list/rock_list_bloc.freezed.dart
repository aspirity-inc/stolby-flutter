// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'rock_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RockListEventTearOff {
  const _$RockListEventTearOff();

  _Initialized initialized() {
    return const _Initialized();
  }

  _SearchLineChanged searchLineChanged(String searchLineString) {
    return _SearchLineChanged(
      searchLineString,
    );
  }

  _Filtered filtered(int difficulty) {
    return _Filtered(
      difficulty,
    );
  }

  _Sorted sorted(LatLng location) {
    return _Sorted(
      location,
    );
  }

  _LocationChanged locationChanged(LatLng location) {
    return _LocationChanged(
      location,
    );
  }

  _SearchLineCleared searchLineCleared() {
    return const _SearchLineCleared();
  }
}

/// @nodoc
const $RockListEvent = _$RockListEventTearOff();

/// @nodoc
mixin _$RockListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(String searchLineString) searchLineChanged,
    required TResult Function(int difficulty) filtered,
    required TResult Function(LatLng location) sorted,
    required TResult Function(LatLng location) locationChanged,
    required TResult Function() searchLineCleared,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(String searchLineString)? searchLineChanged,
    TResult Function(int difficulty)? filtered,
    TResult Function(LatLng location)? sorted,
    TResult Function(LatLng location)? locationChanged,
    TResult Function()? searchLineCleared,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(String searchLineString)? searchLineChanged,
    TResult Function(int difficulty)? filtered,
    TResult Function(LatLng location)? sorted,
    TResult Function(LatLng location)? locationChanged,
    TResult Function()? searchLineCleared,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_SearchLineChanged value) searchLineChanged,
    required TResult Function(_Filtered value) filtered,
    required TResult Function(_Sorted value) sorted,
    required TResult Function(_LocationChanged value) locationChanged,
    required TResult Function(_SearchLineCleared value) searchLineCleared,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SearchLineChanged value)? searchLineChanged,
    TResult Function(_Filtered value)? filtered,
    TResult Function(_Sorted value)? sorted,
    TResult Function(_LocationChanged value)? locationChanged,
    TResult Function(_SearchLineCleared value)? searchLineCleared,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SearchLineChanged value)? searchLineChanged,
    TResult Function(_Filtered value)? filtered,
    TResult Function(_Sorted value)? sorted,
    TResult Function(_LocationChanged value)? locationChanged,
    TResult Function(_SearchLineCleared value)? searchLineCleared,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RockListEventCopyWith<$Res> {
  factory $RockListEventCopyWith(
          RockListEvent value, $Res Function(RockListEvent) then) =
      _$RockListEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$RockListEventCopyWithImpl<$Res>
    implements $RockListEventCopyWith<$Res> {
  _$RockListEventCopyWithImpl(this._value, this._then);

  final RockListEvent _value;
  // ignore: unused_field
  final $Res Function(RockListEvent) _then;
}

/// @nodoc
abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res> extends _$RockListEventCopyWithImpl<$Res>
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
    return 'RockListEvent.initialized()';
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
    required TResult Function(String searchLineString) searchLineChanged,
    required TResult Function(int difficulty) filtered,
    required TResult Function(LatLng location) sorted,
    required TResult Function(LatLng location) locationChanged,
    required TResult Function() searchLineCleared,
  }) {
    return initialized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(String searchLineString)? searchLineChanged,
    TResult Function(int difficulty)? filtered,
    TResult Function(LatLng location)? sorted,
    TResult Function(LatLng location)? locationChanged,
    TResult Function()? searchLineCleared,
  }) {
    return initialized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(String searchLineString)? searchLineChanged,
    TResult Function(int difficulty)? filtered,
    TResult Function(LatLng location)? sorted,
    TResult Function(LatLng location)? locationChanged,
    TResult Function()? searchLineCleared,
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
    required TResult Function(_SearchLineChanged value) searchLineChanged,
    required TResult Function(_Filtered value) filtered,
    required TResult Function(_Sorted value) sorted,
    required TResult Function(_LocationChanged value) locationChanged,
    required TResult Function(_SearchLineCleared value) searchLineCleared,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SearchLineChanged value)? searchLineChanged,
    TResult Function(_Filtered value)? filtered,
    TResult Function(_Sorted value)? sorted,
    TResult Function(_LocationChanged value)? locationChanged,
    TResult Function(_SearchLineCleared value)? searchLineCleared,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SearchLineChanged value)? searchLineChanged,
    TResult Function(_Filtered value)? filtered,
    TResult Function(_Sorted value)? sorted,
    TResult Function(_LocationChanged value)? locationChanged,
    TResult Function(_SearchLineCleared value)? searchLineCleared,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements RockListEvent {
  const factory _Initialized() = _$_Initialized;
}

/// @nodoc
abstract class _$SearchLineChangedCopyWith<$Res> {
  factory _$SearchLineChangedCopyWith(
          _SearchLineChanged value, $Res Function(_SearchLineChanged) then) =
      __$SearchLineChangedCopyWithImpl<$Res>;
  $Res call({String searchLineString});
}

/// @nodoc
class __$SearchLineChangedCopyWithImpl<$Res>
    extends _$RockListEventCopyWithImpl<$Res>
    implements _$SearchLineChangedCopyWith<$Res> {
  __$SearchLineChangedCopyWithImpl(
      _SearchLineChanged _value, $Res Function(_SearchLineChanged) _then)
      : super(_value, (v) => _then(v as _SearchLineChanged));

  @override
  _SearchLineChanged get _value => super._value as _SearchLineChanged;

  @override
  $Res call({
    Object? searchLineString = freezed,
  }) {
    return _then(_SearchLineChanged(
      searchLineString == freezed
          ? _value.searchLineString
          : searchLineString // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SearchLineChanged implements _SearchLineChanged {
  const _$_SearchLineChanged(this.searchLineString);

  @override
  final String searchLineString;

  @override
  String toString() {
    return 'RockListEvent.searchLineChanged(searchLineString: $searchLineString)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SearchLineChanged &&
            (identical(other.searchLineString, searchLineString) ||
                other.searchLineString == searchLineString));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchLineString);

  @JsonKey(ignore: true)
  @override
  _$SearchLineChangedCopyWith<_SearchLineChanged> get copyWith =>
      __$SearchLineChangedCopyWithImpl<_SearchLineChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(String searchLineString) searchLineChanged,
    required TResult Function(int difficulty) filtered,
    required TResult Function(LatLng location) sorted,
    required TResult Function(LatLng location) locationChanged,
    required TResult Function() searchLineCleared,
  }) {
    return searchLineChanged(searchLineString);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(String searchLineString)? searchLineChanged,
    TResult Function(int difficulty)? filtered,
    TResult Function(LatLng location)? sorted,
    TResult Function(LatLng location)? locationChanged,
    TResult Function()? searchLineCleared,
  }) {
    return searchLineChanged?.call(searchLineString);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(String searchLineString)? searchLineChanged,
    TResult Function(int difficulty)? filtered,
    TResult Function(LatLng location)? sorted,
    TResult Function(LatLng location)? locationChanged,
    TResult Function()? searchLineCleared,
    required TResult orElse(),
  }) {
    if (searchLineChanged != null) {
      return searchLineChanged(searchLineString);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_SearchLineChanged value) searchLineChanged,
    required TResult Function(_Filtered value) filtered,
    required TResult Function(_Sorted value) sorted,
    required TResult Function(_LocationChanged value) locationChanged,
    required TResult Function(_SearchLineCleared value) searchLineCleared,
  }) {
    return searchLineChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SearchLineChanged value)? searchLineChanged,
    TResult Function(_Filtered value)? filtered,
    TResult Function(_Sorted value)? sorted,
    TResult Function(_LocationChanged value)? locationChanged,
    TResult Function(_SearchLineCleared value)? searchLineCleared,
  }) {
    return searchLineChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SearchLineChanged value)? searchLineChanged,
    TResult Function(_Filtered value)? filtered,
    TResult Function(_Sorted value)? sorted,
    TResult Function(_LocationChanged value)? locationChanged,
    TResult Function(_SearchLineCleared value)? searchLineCleared,
    required TResult orElse(),
  }) {
    if (searchLineChanged != null) {
      return searchLineChanged(this);
    }
    return orElse();
  }
}

abstract class _SearchLineChanged implements RockListEvent {
  const factory _SearchLineChanged(String searchLineString) =
      _$_SearchLineChanged;

  String get searchLineString;
  @JsonKey(ignore: true)
  _$SearchLineChangedCopyWith<_SearchLineChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FilteredCopyWith<$Res> {
  factory _$FilteredCopyWith(_Filtered value, $Res Function(_Filtered) then) =
      __$FilteredCopyWithImpl<$Res>;
  $Res call({int difficulty});
}

/// @nodoc
class __$FilteredCopyWithImpl<$Res> extends _$RockListEventCopyWithImpl<$Res>
    implements _$FilteredCopyWith<$Res> {
  __$FilteredCopyWithImpl(_Filtered _value, $Res Function(_Filtered) _then)
      : super(_value, (v) => _then(v as _Filtered));

  @override
  _Filtered get _value => super._value as _Filtered;

  @override
  $Res call({
    Object? difficulty = freezed,
  }) {
    return _then(_Filtered(
      difficulty == freezed
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Filtered implements _Filtered {
  const _$_Filtered(this.difficulty);

  @override
  final int difficulty;

  @override
  String toString() {
    return 'RockListEvent.filtered(difficulty: $difficulty)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Filtered &&
            (identical(other.difficulty, difficulty) ||
                other.difficulty == difficulty));
  }

  @override
  int get hashCode => Object.hash(runtimeType, difficulty);

  @JsonKey(ignore: true)
  @override
  _$FilteredCopyWith<_Filtered> get copyWith =>
      __$FilteredCopyWithImpl<_Filtered>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(String searchLineString) searchLineChanged,
    required TResult Function(int difficulty) filtered,
    required TResult Function(LatLng location) sorted,
    required TResult Function(LatLng location) locationChanged,
    required TResult Function() searchLineCleared,
  }) {
    return filtered(difficulty);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(String searchLineString)? searchLineChanged,
    TResult Function(int difficulty)? filtered,
    TResult Function(LatLng location)? sorted,
    TResult Function(LatLng location)? locationChanged,
    TResult Function()? searchLineCleared,
  }) {
    return filtered?.call(difficulty);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(String searchLineString)? searchLineChanged,
    TResult Function(int difficulty)? filtered,
    TResult Function(LatLng location)? sorted,
    TResult Function(LatLng location)? locationChanged,
    TResult Function()? searchLineCleared,
    required TResult orElse(),
  }) {
    if (filtered != null) {
      return filtered(difficulty);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_SearchLineChanged value) searchLineChanged,
    required TResult Function(_Filtered value) filtered,
    required TResult Function(_Sorted value) sorted,
    required TResult Function(_LocationChanged value) locationChanged,
    required TResult Function(_SearchLineCleared value) searchLineCleared,
  }) {
    return filtered(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SearchLineChanged value)? searchLineChanged,
    TResult Function(_Filtered value)? filtered,
    TResult Function(_Sorted value)? sorted,
    TResult Function(_LocationChanged value)? locationChanged,
    TResult Function(_SearchLineCleared value)? searchLineCleared,
  }) {
    return filtered?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SearchLineChanged value)? searchLineChanged,
    TResult Function(_Filtered value)? filtered,
    TResult Function(_Sorted value)? sorted,
    TResult Function(_LocationChanged value)? locationChanged,
    TResult Function(_SearchLineCleared value)? searchLineCleared,
    required TResult orElse(),
  }) {
    if (filtered != null) {
      return filtered(this);
    }
    return orElse();
  }
}

abstract class _Filtered implements RockListEvent {
  const factory _Filtered(int difficulty) = _$_Filtered;

  int get difficulty;
  @JsonKey(ignore: true)
  _$FilteredCopyWith<_Filtered> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SortedCopyWith<$Res> {
  factory _$SortedCopyWith(_Sorted value, $Res Function(_Sorted) then) =
      __$SortedCopyWithImpl<$Res>;
  $Res call({LatLng location});
}

/// @nodoc
class __$SortedCopyWithImpl<$Res> extends _$RockListEventCopyWithImpl<$Res>
    implements _$SortedCopyWith<$Res> {
  __$SortedCopyWithImpl(_Sorted _value, $Res Function(_Sorted) _then)
      : super(_value, (v) => _then(v as _Sorted));

  @override
  _Sorted get _value => super._value as _Sorted;

  @override
  $Res call({
    Object? location = freezed,
  }) {
    return _then(_Sorted(
      location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LatLng,
    ));
  }
}

/// @nodoc

class _$_Sorted implements _Sorted {
  const _$_Sorted(this.location);

  @override
  final LatLng location;

  @override
  String toString() {
    return 'RockListEvent.sorted(location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Sorted &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @override
  int get hashCode => Object.hash(runtimeType, location);

  @JsonKey(ignore: true)
  @override
  _$SortedCopyWith<_Sorted> get copyWith =>
      __$SortedCopyWithImpl<_Sorted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(String searchLineString) searchLineChanged,
    required TResult Function(int difficulty) filtered,
    required TResult Function(LatLng location) sorted,
    required TResult Function(LatLng location) locationChanged,
    required TResult Function() searchLineCleared,
  }) {
    return sorted(location);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(String searchLineString)? searchLineChanged,
    TResult Function(int difficulty)? filtered,
    TResult Function(LatLng location)? sorted,
    TResult Function(LatLng location)? locationChanged,
    TResult Function()? searchLineCleared,
  }) {
    return sorted?.call(location);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(String searchLineString)? searchLineChanged,
    TResult Function(int difficulty)? filtered,
    TResult Function(LatLng location)? sorted,
    TResult Function(LatLng location)? locationChanged,
    TResult Function()? searchLineCleared,
    required TResult orElse(),
  }) {
    if (sorted != null) {
      return sorted(location);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_SearchLineChanged value) searchLineChanged,
    required TResult Function(_Filtered value) filtered,
    required TResult Function(_Sorted value) sorted,
    required TResult Function(_LocationChanged value) locationChanged,
    required TResult Function(_SearchLineCleared value) searchLineCleared,
  }) {
    return sorted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SearchLineChanged value)? searchLineChanged,
    TResult Function(_Filtered value)? filtered,
    TResult Function(_Sorted value)? sorted,
    TResult Function(_LocationChanged value)? locationChanged,
    TResult Function(_SearchLineCleared value)? searchLineCleared,
  }) {
    return sorted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SearchLineChanged value)? searchLineChanged,
    TResult Function(_Filtered value)? filtered,
    TResult Function(_Sorted value)? sorted,
    TResult Function(_LocationChanged value)? locationChanged,
    TResult Function(_SearchLineCleared value)? searchLineCleared,
    required TResult orElse(),
  }) {
    if (sorted != null) {
      return sorted(this);
    }
    return orElse();
  }
}

abstract class _Sorted implements RockListEvent {
  const factory _Sorted(LatLng location) = _$_Sorted;

  LatLng get location;
  @JsonKey(ignore: true)
  _$SortedCopyWith<_Sorted> get copyWith => throw _privateConstructorUsedError;
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
    extends _$RockListEventCopyWithImpl<$Res>
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
      location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LatLng,
    ));
  }
}

/// @nodoc

class _$_LocationChanged implements _LocationChanged {
  const _$_LocationChanged(this.location);

  @override
  final LatLng location;

  @override
  String toString() {
    return 'RockListEvent.locationChanged(location: $location)';
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
    required TResult Function() initialized,
    required TResult Function(String searchLineString) searchLineChanged,
    required TResult Function(int difficulty) filtered,
    required TResult Function(LatLng location) sorted,
    required TResult Function(LatLng location) locationChanged,
    required TResult Function() searchLineCleared,
  }) {
    return locationChanged(location);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(String searchLineString)? searchLineChanged,
    TResult Function(int difficulty)? filtered,
    TResult Function(LatLng location)? sorted,
    TResult Function(LatLng location)? locationChanged,
    TResult Function()? searchLineCleared,
  }) {
    return locationChanged?.call(location);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(String searchLineString)? searchLineChanged,
    TResult Function(int difficulty)? filtered,
    TResult Function(LatLng location)? sorted,
    TResult Function(LatLng location)? locationChanged,
    TResult Function()? searchLineCleared,
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
    required TResult Function(_SearchLineChanged value) searchLineChanged,
    required TResult Function(_Filtered value) filtered,
    required TResult Function(_Sorted value) sorted,
    required TResult Function(_LocationChanged value) locationChanged,
    required TResult Function(_SearchLineCleared value) searchLineCleared,
  }) {
    return locationChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SearchLineChanged value)? searchLineChanged,
    TResult Function(_Filtered value)? filtered,
    TResult Function(_Sorted value)? sorted,
    TResult Function(_LocationChanged value)? locationChanged,
    TResult Function(_SearchLineCleared value)? searchLineCleared,
  }) {
    return locationChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SearchLineChanged value)? searchLineChanged,
    TResult Function(_Filtered value)? filtered,
    TResult Function(_Sorted value)? sorted,
    TResult Function(_LocationChanged value)? locationChanged,
    TResult Function(_SearchLineCleared value)? searchLineCleared,
    required TResult orElse(),
  }) {
    if (locationChanged != null) {
      return locationChanged(this);
    }
    return orElse();
  }
}

abstract class _LocationChanged implements RockListEvent {
  const factory _LocationChanged(LatLng location) = _$_LocationChanged;

  LatLng get location;
  @JsonKey(ignore: true)
  _$LocationChangedCopyWith<_LocationChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SearchLineClearedCopyWith<$Res> {
  factory _$SearchLineClearedCopyWith(
          _SearchLineCleared value, $Res Function(_SearchLineCleared) then) =
      __$SearchLineClearedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SearchLineClearedCopyWithImpl<$Res>
    extends _$RockListEventCopyWithImpl<$Res>
    implements _$SearchLineClearedCopyWith<$Res> {
  __$SearchLineClearedCopyWithImpl(
      _SearchLineCleared _value, $Res Function(_SearchLineCleared) _then)
      : super(_value, (v) => _then(v as _SearchLineCleared));

  @override
  _SearchLineCleared get _value => super._value as _SearchLineCleared;
}

/// @nodoc

class _$_SearchLineCleared implements _SearchLineCleared {
  const _$_SearchLineCleared();

  @override
  String toString() {
    return 'RockListEvent.searchLineCleared()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _SearchLineCleared);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(String searchLineString) searchLineChanged,
    required TResult Function(int difficulty) filtered,
    required TResult Function(LatLng location) sorted,
    required TResult Function(LatLng location) locationChanged,
    required TResult Function() searchLineCleared,
  }) {
    return searchLineCleared();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(String searchLineString)? searchLineChanged,
    TResult Function(int difficulty)? filtered,
    TResult Function(LatLng location)? sorted,
    TResult Function(LatLng location)? locationChanged,
    TResult Function()? searchLineCleared,
  }) {
    return searchLineCleared?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(String searchLineString)? searchLineChanged,
    TResult Function(int difficulty)? filtered,
    TResult Function(LatLng location)? sorted,
    TResult Function(LatLng location)? locationChanged,
    TResult Function()? searchLineCleared,
    required TResult orElse(),
  }) {
    if (searchLineCleared != null) {
      return searchLineCleared();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_SearchLineChanged value) searchLineChanged,
    required TResult Function(_Filtered value) filtered,
    required TResult Function(_Sorted value) sorted,
    required TResult Function(_LocationChanged value) locationChanged,
    required TResult Function(_SearchLineCleared value) searchLineCleared,
  }) {
    return searchLineCleared(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SearchLineChanged value)? searchLineChanged,
    TResult Function(_Filtered value)? filtered,
    TResult Function(_Sorted value)? sorted,
    TResult Function(_LocationChanged value)? locationChanged,
    TResult Function(_SearchLineCleared value)? searchLineCleared,
  }) {
    return searchLineCleared?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SearchLineChanged value)? searchLineChanged,
    TResult Function(_Filtered value)? filtered,
    TResult Function(_Sorted value)? sorted,
    TResult Function(_LocationChanged value)? locationChanged,
    TResult Function(_SearchLineCleared value)? searchLineCleared,
    required TResult orElse(),
  }) {
    if (searchLineCleared != null) {
      return searchLineCleared(this);
    }
    return orElse();
  }
}

abstract class _SearchLineCleared implements RockListEvent {
  const factory _SearchLineCleared() = _$_SearchLineCleared;
}

/// @nodoc
class _$RockListStateTearOff {
  const _$RockListStateTearOff();

  _RockListState call(
      {required List<RockListItemEntity> allRocks,
      required List<RockListItemEntity> rocksToShow,
      required String searchString,
      required Option<LatLng> userLocation,
      required bool loading}) {
    return _RockListState(
      allRocks: allRocks,
      rocksToShow: rocksToShow,
      searchString: searchString,
      userLocation: userLocation,
      loading: loading,
    );
  }
}

/// @nodoc
const $RockListState = _$RockListStateTearOff();

/// @nodoc
mixin _$RockListState {
  List<RockListItemEntity> get allRocks => throw _privateConstructorUsedError;
  List<RockListItemEntity> get rocksToShow =>
      throw _privateConstructorUsedError;
  String get searchString => throw _privateConstructorUsedError;
  Option<LatLng> get userLocation => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RockListStateCopyWith<RockListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RockListStateCopyWith<$Res> {
  factory $RockListStateCopyWith(
          RockListState value, $Res Function(RockListState) then) =
      _$RockListStateCopyWithImpl<$Res>;
  $Res call(
      {List<RockListItemEntity> allRocks,
      List<RockListItemEntity> rocksToShow,
      String searchString,
      Option<LatLng> userLocation,
      bool loading});
}

/// @nodoc
class _$RockListStateCopyWithImpl<$Res>
    implements $RockListStateCopyWith<$Res> {
  _$RockListStateCopyWithImpl(this._value, this._then);

  final RockListState _value;
  // ignore: unused_field
  final $Res Function(RockListState) _then;

  @override
  $Res call({
    Object? allRocks = freezed,
    Object? rocksToShow = freezed,
    Object? searchString = freezed,
    Object? userLocation = freezed,
    Object? loading = freezed,
  }) {
    return _then(_value.copyWith(
      allRocks: allRocks == freezed
          ? _value.allRocks
          : allRocks // ignore: cast_nullable_to_non_nullable
              as List<RockListItemEntity>,
      rocksToShow: rocksToShow == freezed
          ? _value.rocksToShow
          : rocksToShow // ignore: cast_nullable_to_non_nullable
              as List<RockListItemEntity>,
      searchString: searchString == freezed
          ? _value.searchString
          : searchString // ignore: cast_nullable_to_non_nullable
              as String,
      userLocation: userLocation == freezed
          ? _value.userLocation
          : userLocation // ignore: cast_nullable_to_non_nullable
              as Option<LatLng>,
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$RockListStateCopyWith<$Res>
    implements $RockListStateCopyWith<$Res> {
  factory _$RockListStateCopyWith(
          _RockListState value, $Res Function(_RockListState) then) =
      __$RockListStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<RockListItemEntity> allRocks,
      List<RockListItemEntity> rocksToShow,
      String searchString,
      Option<LatLng> userLocation,
      bool loading});
}

/// @nodoc
class __$RockListStateCopyWithImpl<$Res>
    extends _$RockListStateCopyWithImpl<$Res>
    implements _$RockListStateCopyWith<$Res> {
  __$RockListStateCopyWithImpl(
      _RockListState _value, $Res Function(_RockListState) _then)
      : super(_value, (v) => _then(v as _RockListState));

  @override
  _RockListState get _value => super._value as _RockListState;

  @override
  $Res call({
    Object? allRocks = freezed,
    Object? rocksToShow = freezed,
    Object? searchString = freezed,
    Object? userLocation = freezed,
    Object? loading = freezed,
  }) {
    return _then(_RockListState(
      allRocks: allRocks == freezed
          ? _value.allRocks
          : allRocks // ignore: cast_nullable_to_non_nullable
              as List<RockListItemEntity>,
      rocksToShow: rocksToShow == freezed
          ? _value.rocksToShow
          : rocksToShow // ignore: cast_nullable_to_non_nullable
              as List<RockListItemEntity>,
      searchString: searchString == freezed
          ? _value.searchString
          : searchString // ignore: cast_nullable_to_non_nullable
              as String,
      userLocation: userLocation == freezed
          ? _value.userLocation
          : userLocation // ignore: cast_nullable_to_non_nullable
              as Option<LatLng>,
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_RockListState implements _RockListState {
  const _$_RockListState(
      {required this.allRocks,
      required this.rocksToShow,
      required this.searchString,
      required this.userLocation,
      required this.loading});

  @override
  final List<RockListItemEntity> allRocks;
  @override
  final List<RockListItemEntity> rocksToShow;
  @override
  final String searchString;
  @override
  final Option<LatLng> userLocation;
  @override
  final bool loading;

  @override
  String toString() {
    return 'RockListState(allRocks: $allRocks, rocksToShow: $rocksToShow, searchString: $searchString, userLocation: $userLocation, loading: $loading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RockListState &&
            const DeepCollectionEquality().equals(other.allRocks, allRocks) &&
            const DeepCollectionEquality()
                .equals(other.rocksToShow, rocksToShow) &&
            (identical(other.searchString, searchString) ||
                other.searchString == searchString) &&
            (identical(other.userLocation, userLocation) ||
                other.userLocation == userLocation) &&
            (identical(other.loading, loading) || other.loading == loading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(allRocks),
      const DeepCollectionEquality().hash(rocksToShow),
      searchString,
      userLocation,
      loading);

  @JsonKey(ignore: true)
  @override
  _$RockListStateCopyWith<_RockListState> get copyWith =>
      __$RockListStateCopyWithImpl<_RockListState>(this, _$identity);
}

abstract class _RockListState implements RockListState {
  const factory _RockListState(
      {required List<RockListItemEntity> allRocks,
      required List<RockListItemEntity> rocksToShow,
      required String searchString,
      required Option<LatLng> userLocation,
      required bool loading}) = _$_RockListState;

  @override
  List<RockListItemEntity> get allRocks;
  @override
  List<RockListItemEntity> get rocksToShow;
  @override
  String get searchString;
  @override
  Option<LatLng> get userLocation;
  @override
  bool get loading;
  @override
  @JsonKey(ignore: true)
  _$RockListStateCopyWith<_RockListState> get copyWith =>
      throw _privateConstructorUsedError;
}

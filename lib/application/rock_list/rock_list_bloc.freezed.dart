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

  _SearchStringChanged searchStringChanged({required String searchString}) {
    return _SearchStringChanged(
      searchString: searchString,
    );
  }

  _Filtered filtered() {
    return const _Filtered();
  }

  _Sorted sorted({required LatLng location}) {
    return _Sorted(
      location: location,
    );
  }

  _LocationChanged locationChanged({required LatLng location}) {
    return _LocationChanged(
      location: location,
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
    required TResult Function(String searchString) searchStringChanged,
    required TResult Function() filtered,
    required TResult Function(LatLng location) sorted,
    required TResult Function(LatLng location) locationChanged,
    required TResult Function() searchLineCleared,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(String searchString)? searchStringChanged,
    TResult Function()? filtered,
    TResult Function(LatLng location)? sorted,
    TResult Function(LatLng location)? locationChanged,
    TResult Function()? searchLineCleared,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(String searchString)? searchStringChanged,
    TResult Function()? filtered,
    TResult Function(LatLng location)? sorted,
    TResult Function(LatLng location)? locationChanged,
    TResult Function()? searchLineCleared,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_SearchStringChanged value) searchStringChanged,
    required TResult Function(_Filtered value) filtered,
    required TResult Function(_Sorted value) sorted,
    required TResult Function(_LocationChanged value) locationChanged,
    required TResult Function(_SearchLineCleared value) searchLineCleared,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SearchStringChanged value)? searchStringChanged,
    TResult Function(_Filtered value)? filtered,
    TResult Function(_Sorted value)? sorted,
    TResult Function(_LocationChanged value)? locationChanged,
    TResult Function(_SearchLineCleared value)? searchLineCleared,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SearchStringChanged value)? searchStringChanged,
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
    required TResult Function(String searchString) searchStringChanged,
    required TResult Function() filtered,
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
    TResult Function(String searchString)? searchStringChanged,
    TResult Function()? filtered,
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
    TResult Function(String searchString)? searchStringChanged,
    TResult Function()? filtered,
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
    required TResult Function(_SearchStringChanged value) searchStringChanged,
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
    TResult Function(_SearchStringChanged value)? searchStringChanged,
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
    TResult Function(_SearchStringChanged value)? searchStringChanged,
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
abstract class _$SearchStringChangedCopyWith<$Res> {
  factory _$SearchStringChangedCopyWith(_SearchStringChanged value,
          $Res Function(_SearchStringChanged) then) =
      __$SearchStringChangedCopyWithImpl<$Res>;
  $Res call({String searchString});
}

/// @nodoc
class __$SearchStringChangedCopyWithImpl<$Res>
    extends _$RockListEventCopyWithImpl<$Res>
    implements _$SearchStringChangedCopyWith<$Res> {
  __$SearchStringChangedCopyWithImpl(
      _SearchStringChanged _value, $Res Function(_SearchStringChanged) _then)
      : super(_value, (v) => _then(v as _SearchStringChanged));

  @override
  _SearchStringChanged get _value => super._value as _SearchStringChanged;

  @override
  $Res call({
    Object? searchString = freezed,
  }) {
    return _then(_SearchStringChanged(
      searchString: searchString == freezed
          ? _value.searchString
          : searchString // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SearchStringChanged implements _SearchStringChanged {
  const _$_SearchStringChanged({required this.searchString});

  @override
  final String searchString;

  @override
  String toString() {
    return 'RockListEvent.searchStringChanged(searchString: $searchString)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SearchStringChanged &&
            (identical(other.searchString, searchString) ||
                other.searchString == searchString));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchString);

  @JsonKey(ignore: true)
  @override
  _$SearchStringChangedCopyWith<_SearchStringChanged> get copyWith =>
      __$SearchStringChangedCopyWithImpl<_SearchStringChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(String searchString) searchStringChanged,
    required TResult Function() filtered,
    required TResult Function(LatLng location) sorted,
    required TResult Function(LatLng location) locationChanged,
    required TResult Function() searchLineCleared,
  }) {
    return searchStringChanged(searchString);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(String searchString)? searchStringChanged,
    TResult Function()? filtered,
    TResult Function(LatLng location)? sorted,
    TResult Function(LatLng location)? locationChanged,
    TResult Function()? searchLineCleared,
  }) {
    return searchStringChanged?.call(searchString);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(String searchString)? searchStringChanged,
    TResult Function()? filtered,
    TResult Function(LatLng location)? sorted,
    TResult Function(LatLng location)? locationChanged,
    TResult Function()? searchLineCleared,
    required TResult orElse(),
  }) {
    if (searchStringChanged != null) {
      return searchStringChanged(searchString);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_SearchStringChanged value) searchStringChanged,
    required TResult Function(_Filtered value) filtered,
    required TResult Function(_Sorted value) sorted,
    required TResult Function(_LocationChanged value) locationChanged,
    required TResult Function(_SearchLineCleared value) searchLineCleared,
  }) {
    return searchStringChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SearchStringChanged value)? searchStringChanged,
    TResult Function(_Filtered value)? filtered,
    TResult Function(_Sorted value)? sorted,
    TResult Function(_LocationChanged value)? locationChanged,
    TResult Function(_SearchLineCleared value)? searchLineCleared,
  }) {
    return searchStringChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SearchStringChanged value)? searchStringChanged,
    TResult Function(_Filtered value)? filtered,
    TResult Function(_Sorted value)? sorted,
    TResult Function(_LocationChanged value)? locationChanged,
    TResult Function(_SearchLineCleared value)? searchLineCleared,
    required TResult orElse(),
  }) {
    if (searchStringChanged != null) {
      return searchStringChanged(this);
    }
    return orElse();
  }
}

abstract class _SearchStringChanged implements RockListEvent {
  const factory _SearchStringChanged({required String searchString}) =
      _$_SearchStringChanged;

  String get searchString;
  @JsonKey(ignore: true)
  _$SearchStringChangedCopyWith<_SearchStringChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FilteredCopyWith<$Res> {
  factory _$FilteredCopyWith(_Filtered value, $Res Function(_Filtered) then) =
      __$FilteredCopyWithImpl<$Res>;
}

/// @nodoc
class __$FilteredCopyWithImpl<$Res> extends _$RockListEventCopyWithImpl<$Res>
    implements _$FilteredCopyWith<$Res> {
  __$FilteredCopyWithImpl(_Filtered _value, $Res Function(_Filtered) _then)
      : super(_value, (v) => _then(v as _Filtered));

  @override
  _Filtered get _value => super._value as _Filtered;
}

/// @nodoc

class _$_Filtered implements _Filtered {
  const _$_Filtered();

  @override
  String toString() {
    return 'RockListEvent.filtered()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Filtered);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(String searchString) searchStringChanged,
    required TResult Function() filtered,
    required TResult Function(LatLng location) sorted,
    required TResult Function(LatLng location) locationChanged,
    required TResult Function() searchLineCleared,
  }) {
    return filtered();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(String searchString)? searchStringChanged,
    TResult Function()? filtered,
    TResult Function(LatLng location)? sorted,
    TResult Function(LatLng location)? locationChanged,
    TResult Function()? searchLineCleared,
  }) {
    return filtered?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(String searchString)? searchStringChanged,
    TResult Function()? filtered,
    TResult Function(LatLng location)? sorted,
    TResult Function(LatLng location)? locationChanged,
    TResult Function()? searchLineCleared,
    required TResult orElse(),
  }) {
    if (filtered != null) {
      return filtered();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_SearchStringChanged value) searchStringChanged,
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
    TResult Function(_SearchStringChanged value)? searchStringChanged,
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
    TResult Function(_SearchStringChanged value)? searchStringChanged,
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
  const factory _Filtered() = _$_Filtered;
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
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LatLng,
    ));
  }
}

/// @nodoc

class _$_Sorted implements _Sorted {
  const _$_Sorted({required this.location});

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
    required TResult Function(String searchString) searchStringChanged,
    required TResult Function() filtered,
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
    TResult Function(String searchString)? searchStringChanged,
    TResult Function()? filtered,
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
    TResult Function(String searchString)? searchStringChanged,
    TResult Function()? filtered,
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
    required TResult Function(_SearchStringChanged value) searchStringChanged,
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
    TResult Function(_SearchStringChanged value)? searchStringChanged,
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
    TResult Function(_SearchStringChanged value)? searchStringChanged,
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
  const factory _Sorted({required LatLng location}) = _$_Sorted;

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
    required TResult Function(String searchString) searchStringChanged,
    required TResult Function() filtered,
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
    TResult Function(String searchString)? searchStringChanged,
    TResult Function()? filtered,
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
    TResult Function(String searchString)? searchStringChanged,
    TResult Function()? filtered,
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
    required TResult Function(_SearchStringChanged value) searchStringChanged,
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
    TResult Function(_SearchStringChanged value)? searchStringChanged,
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
    TResult Function(_SearchStringChanged value)? searchStringChanged,
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
  const factory _LocationChanged({required LatLng location}) =
      _$_LocationChanged;

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
    required TResult Function(String searchString) searchStringChanged,
    required TResult Function() filtered,
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
    TResult Function(String searchString)? searchStringChanged,
    TResult Function()? filtered,
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
    TResult Function(String searchString)? searchStringChanged,
    TResult Function()? filtered,
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
    required TResult Function(_SearchStringChanged value) searchStringChanged,
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
    TResult Function(_SearchStringChanged value)? searchStringChanged,
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
    TResult Function(_SearchStringChanged value)? searchStringChanged,
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

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rock_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RockListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(String searchString) searchStringChanged,
    required TResult Function() filtered,
    required TResult Function() sorted,
    required TResult Function(LatLng location) locationChanged,
    required TResult Function() searchLineCleared,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function(String searchString)? searchStringChanged,
    TResult? Function()? filtered,
    TResult? Function()? sorted,
    TResult? Function(LatLng location)? locationChanged,
    TResult? Function()? searchLineCleared,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(String searchString)? searchStringChanged,
    TResult Function()? filtered,
    TResult Function()? sorted,
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
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_SearchStringChanged value)? searchStringChanged,
    TResult? Function(_Filtered value)? filtered,
    TResult? Function(_Sorted value)? sorted,
    TResult? Function(_LocationChanged value)? locationChanged,
    TResult? Function(_SearchLineCleared value)? searchLineCleared,
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
      _$RockListEventCopyWithImpl<$Res, RockListEvent>;
}

/// @nodoc
class _$RockListEventCopyWithImpl<$Res, $Val extends RockListEvent>
    implements $RockListEventCopyWith<$Res> {
  _$RockListEventCopyWithImpl(this._value, this._then);

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
    extends _$RockListEventCopyWithImpl<$Res, _$_Initialized>
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
    return 'RockListEvent.initialized()';
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
    required TResult Function(String searchString) searchStringChanged,
    required TResult Function() filtered,
    required TResult Function() sorted,
    required TResult Function(LatLng location) locationChanged,
    required TResult Function() searchLineCleared,
  }) {
    return initialized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function(String searchString)? searchStringChanged,
    TResult? Function()? filtered,
    TResult? Function()? sorted,
    TResult? Function(LatLng location)? locationChanged,
    TResult? Function()? searchLineCleared,
  }) {
    return initialized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(String searchString)? searchStringChanged,
    TResult Function()? filtered,
    TResult Function()? sorted,
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
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_SearchStringChanged value)? searchStringChanged,
    TResult? Function(_Filtered value)? filtered,
    TResult? Function(_Sorted value)? sorted,
    TResult? Function(_LocationChanged value)? locationChanged,
    TResult? Function(_SearchLineCleared value)? searchLineCleared,
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
abstract class _$$_SearchStringChangedCopyWith<$Res> {
  factory _$$_SearchStringChangedCopyWith(_$_SearchStringChanged value,
          $Res Function(_$_SearchStringChanged) then) =
      __$$_SearchStringChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String searchString});
}

/// @nodoc
class __$$_SearchStringChangedCopyWithImpl<$Res>
    extends _$RockListEventCopyWithImpl<$Res, _$_SearchStringChanged>
    implements _$$_SearchStringChangedCopyWith<$Res> {
  __$$_SearchStringChangedCopyWithImpl(_$_SearchStringChanged _value,
      $Res Function(_$_SearchStringChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchString = null,
  }) {
    return _then(_$_SearchStringChanged(
      searchString: null == searchString
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
            other is _$_SearchStringChanged &&
            (identical(other.searchString, searchString) ||
                other.searchString == searchString));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchString);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchStringChangedCopyWith<_$_SearchStringChanged> get copyWith =>
      __$$_SearchStringChangedCopyWithImpl<_$_SearchStringChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(String searchString) searchStringChanged,
    required TResult Function() filtered,
    required TResult Function() sorted,
    required TResult Function(LatLng location) locationChanged,
    required TResult Function() searchLineCleared,
  }) {
    return searchStringChanged(searchString);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function(String searchString)? searchStringChanged,
    TResult? Function()? filtered,
    TResult? Function()? sorted,
    TResult? Function(LatLng location)? locationChanged,
    TResult? Function()? searchLineCleared,
  }) {
    return searchStringChanged?.call(searchString);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(String searchString)? searchStringChanged,
    TResult Function()? filtered,
    TResult Function()? sorted,
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
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_SearchStringChanged value)? searchStringChanged,
    TResult? Function(_Filtered value)? filtered,
    TResult? Function(_Sorted value)? sorted,
    TResult? Function(_LocationChanged value)? locationChanged,
    TResult? Function(_SearchLineCleared value)? searchLineCleared,
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
  const factory _SearchStringChanged({required final String searchString}) =
      _$_SearchStringChanged;

  String get searchString;
  @JsonKey(ignore: true)
  _$$_SearchStringChangedCopyWith<_$_SearchStringChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FilteredCopyWith<$Res> {
  factory _$$_FilteredCopyWith(
          _$_Filtered value, $Res Function(_$_Filtered) then) =
      __$$_FilteredCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FilteredCopyWithImpl<$Res>
    extends _$RockListEventCopyWithImpl<$Res, _$_Filtered>
    implements _$$_FilteredCopyWith<$Res> {
  __$$_FilteredCopyWithImpl(
      _$_Filtered _value, $Res Function(_$_Filtered) _then)
      : super(_value, _then);
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
        (other.runtimeType == runtimeType && other is _$_Filtered);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(String searchString) searchStringChanged,
    required TResult Function() filtered,
    required TResult Function() sorted,
    required TResult Function(LatLng location) locationChanged,
    required TResult Function() searchLineCleared,
  }) {
    return filtered();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function(String searchString)? searchStringChanged,
    TResult? Function()? filtered,
    TResult? Function()? sorted,
    TResult? Function(LatLng location)? locationChanged,
    TResult? Function()? searchLineCleared,
  }) {
    return filtered?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(String searchString)? searchStringChanged,
    TResult Function()? filtered,
    TResult Function()? sorted,
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
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_SearchStringChanged value)? searchStringChanged,
    TResult? Function(_Filtered value)? filtered,
    TResult? Function(_Sorted value)? sorted,
    TResult? Function(_LocationChanged value)? locationChanged,
    TResult? Function(_SearchLineCleared value)? searchLineCleared,
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
abstract class _$$_SortedCopyWith<$Res> {
  factory _$$_SortedCopyWith(_$_Sorted value, $Res Function(_$_Sorted) then) =
      __$$_SortedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SortedCopyWithImpl<$Res>
    extends _$RockListEventCopyWithImpl<$Res, _$_Sorted>
    implements _$$_SortedCopyWith<$Res> {
  __$$_SortedCopyWithImpl(_$_Sorted _value, $Res Function(_$_Sorted) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Sorted implements _Sorted {
  const _$_Sorted();

  @override
  String toString() {
    return 'RockListEvent.sorted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Sorted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(String searchString) searchStringChanged,
    required TResult Function() filtered,
    required TResult Function() sorted,
    required TResult Function(LatLng location) locationChanged,
    required TResult Function() searchLineCleared,
  }) {
    return sorted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function(String searchString)? searchStringChanged,
    TResult? Function()? filtered,
    TResult? Function()? sorted,
    TResult? Function(LatLng location)? locationChanged,
    TResult? Function()? searchLineCleared,
  }) {
    return sorted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(String searchString)? searchStringChanged,
    TResult Function()? filtered,
    TResult Function()? sorted,
    TResult Function(LatLng location)? locationChanged,
    TResult Function()? searchLineCleared,
    required TResult orElse(),
  }) {
    if (sorted != null) {
      return sorted();
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
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_SearchStringChanged value)? searchStringChanged,
    TResult? Function(_Filtered value)? filtered,
    TResult? Function(_Sorted value)? sorted,
    TResult? Function(_LocationChanged value)? locationChanged,
    TResult? Function(_SearchLineCleared value)? searchLineCleared,
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
  const factory _Sorted() = _$_Sorted;
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
    extends _$RockListEventCopyWithImpl<$Res, _$_LocationChanged>
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
    return 'RockListEvent.locationChanged(location: $location)';
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
    required TResult Function() initialized,
    required TResult Function(String searchString) searchStringChanged,
    required TResult Function() filtered,
    required TResult Function() sorted,
    required TResult Function(LatLng location) locationChanged,
    required TResult Function() searchLineCleared,
  }) {
    return locationChanged(location);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function(String searchString)? searchStringChanged,
    TResult? Function()? filtered,
    TResult? Function()? sorted,
    TResult? Function(LatLng location)? locationChanged,
    TResult? Function()? searchLineCleared,
  }) {
    return locationChanged?.call(location);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(String searchString)? searchStringChanged,
    TResult Function()? filtered,
    TResult Function()? sorted,
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
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_SearchStringChanged value)? searchStringChanged,
    TResult? Function(_Filtered value)? filtered,
    TResult? Function(_Sorted value)? sorted,
    TResult? Function(_LocationChanged value)? locationChanged,
    TResult? Function(_SearchLineCleared value)? searchLineCleared,
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
  const factory _LocationChanged({required final LatLng location}) =
      _$_LocationChanged;

  LatLng get location;
  @JsonKey(ignore: true)
  _$$_LocationChangedCopyWith<_$_LocationChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SearchLineClearedCopyWith<$Res> {
  factory _$$_SearchLineClearedCopyWith(_$_SearchLineCleared value,
          $Res Function(_$_SearchLineCleared) then) =
      __$$_SearchLineClearedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SearchLineClearedCopyWithImpl<$Res>
    extends _$RockListEventCopyWithImpl<$Res, _$_SearchLineCleared>
    implements _$$_SearchLineClearedCopyWith<$Res> {
  __$$_SearchLineClearedCopyWithImpl(
      _$_SearchLineCleared _value, $Res Function(_$_SearchLineCleared) _then)
      : super(_value, _then);
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
        (other.runtimeType == runtimeType && other is _$_SearchLineCleared);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(String searchString) searchStringChanged,
    required TResult Function() filtered,
    required TResult Function() sorted,
    required TResult Function(LatLng location) locationChanged,
    required TResult Function() searchLineCleared,
  }) {
    return searchLineCleared();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function(String searchString)? searchStringChanged,
    TResult? Function()? filtered,
    TResult? Function()? sorted,
    TResult? Function(LatLng location)? locationChanged,
    TResult? Function()? searchLineCleared,
  }) {
    return searchLineCleared?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(String searchString)? searchStringChanged,
    TResult Function()? filtered,
    TResult Function()? sorted,
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
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_SearchStringChanged value)? searchStringChanged,
    TResult? Function(_Filtered value)? filtered,
    TResult? Function(_Sorted value)? sorted,
    TResult? Function(_LocationChanged value)? locationChanged,
    TResult? Function(_SearchLineCleared value)? searchLineCleared,
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
mixin _$RockListState {
  List<RockEntity> get allRocks => throw _privateConstructorUsedError;
  List<RockEntity> get rocksToShow => throw _privateConstructorUsedError;
  List<RockPhoto> get rockPhotos => throw _privateConstructorUsedError;
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
      _$RockListStateCopyWithImpl<$Res, RockListState>;
  @useResult
  $Res call(
      {List<RockEntity> allRocks,
      List<RockEntity> rocksToShow,
      List<RockPhoto> rockPhotos,
      String searchString,
      Option<LatLng> userLocation,
      bool loading});
}

/// @nodoc
class _$RockListStateCopyWithImpl<$Res, $Val extends RockListState>
    implements $RockListStateCopyWith<$Res> {
  _$RockListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allRocks = null,
    Object? rocksToShow = null,
    Object? rockPhotos = null,
    Object? searchString = null,
    Object? userLocation = null,
    Object? loading = null,
  }) {
    return _then(_value.copyWith(
      allRocks: null == allRocks
          ? _value.allRocks
          : allRocks // ignore: cast_nullable_to_non_nullable
              as List<RockEntity>,
      rocksToShow: null == rocksToShow
          ? _value.rocksToShow
          : rocksToShow // ignore: cast_nullable_to_non_nullable
              as List<RockEntity>,
      rockPhotos: null == rockPhotos
          ? _value.rockPhotos
          : rockPhotos // ignore: cast_nullable_to_non_nullable
              as List<RockPhoto>,
      searchString: null == searchString
          ? _value.searchString
          : searchString // ignore: cast_nullable_to_non_nullable
              as String,
      userLocation: null == userLocation
          ? _value.userLocation
          : userLocation // ignore: cast_nullable_to_non_nullable
              as Option<LatLng>,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RockListStateCopyWith<$Res>
    implements $RockListStateCopyWith<$Res> {
  factory _$$_RockListStateCopyWith(
          _$_RockListState value, $Res Function(_$_RockListState) then) =
      __$$_RockListStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<RockEntity> allRocks,
      List<RockEntity> rocksToShow,
      List<RockPhoto> rockPhotos,
      String searchString,
      Option<LatLng> userLocation,
      bool loading});
}

/// @nodoc
class __$$_RockListStateCopyWithImpl<$Res>
    extends _$RockListStateCopyWithImpl<$Res, _$_RockListState>
    implements _$$_RockListStateCopyWith<$Res> {
  __$$_RockListStateCopyWithImpl(
      _$_RockListState _value, $Res Function(_$_RockListState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allRocks = null,
    Object? rocksToShow = null,
    Object? rockPhotos = null,
    Object? searchString = null,
    Object? userLocation = null,
    Object? loading = null,
  }) {
    return _then(_$_RockListState(
      allRocks: null == allRocks
          ? _value._allRocks
          : allRocks // ignore: cast_nullable_to_non_nullable
              as List<RockEntity>,
      rocksToShow: null == rocksToShow
          ? _value._rocksToShow
          : rocksToShow // ignore: cast_nullable_to_non_nullable
              as List<RockEntity>,
      rockPhotos: null == rockPhotos
          ? _value._rockPhotos
          : rockPhotos // ignore: cast_nullable_to_non_nullable
              as List<RockPhoto>,
      searchString: null == searchString
          ? _value.searchString
          : searchString // ignore: cast_nullable_to_non_nullable
              as String,
      userLocation: null == userLocation
          ? _value.userLocation
          : userLocation // ignore: cast_nullable_to_non_nullable
              as Option<LatLng>,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_RockListState implements _RockListState {
  const _$_RockListState(
      {required final List<RockEntity> allRocks,
      required final List<RockEntity> rocksToShow,
      required final List<RockPhoto> rockPhotos,
      required this.searchString,
      required this.userLocation,
      required this.loading})
      : _allRocks = allRocks,
        _rocksToShow = rocksToShow,
        _rockPhotos = rockPhotos;

  final List<RockEntity> _allRocks;
  @override
  List<RockEntity> get allRocks {
    if (_allRocks is EqualUnmodifiableListView) return _allRocks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allRocks);
  }

  final List<RockEntity> _rocksToShow;
  @override
  List<RockEntity> get rocksToShow {
    if (_rocksToShow is EqualUnmodifiableListView) return _rocksToShow;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rocksToShow);
  }

  final List<RockPhoto> _rockPhotos;
  @override
  List<RockPhoto> get rockPhotos {
    if (_rockPhotos is EqualUnmodifiableListView) return _rockPhotos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rockPhotos);
  }

  @override
  final String searchString;
  @override
  final Option<LatLng> userLocation;
  @override
  final bool loading;

  @override
  String toString() {
    return 'RockListState(allRocks: $allRocks, rocksToShow: $rocksToShow, rockPhotos: $rockPhotos, searchString: $searchString, userLocation: $userLocation, loading: $loading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RockListState &&
            const DeepCollectionEquality().equals(other._allRocks, _allRocks) &&
            const DeepCollectionEquality()
                .equals(other._rocksToShow, _rocksToShow) &&
            const DeepCollectionEquality()
                .equals(other._rockPhotos, _rockPhotos) &&
            (identical(other.searchString, searchString) ||
                other.searchString == searchString) &&
            (identical(other.userLocation, userLocation) ||
                other.userLocation == userLocation) &&
            (identical(other.loading, loading) || other.loading == loading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_allRocks),
      const DeepCollectionEquality().hash(_rocksToShow),
      const DeepCollectionEquality().hash(_rockPhotos),
      searchString,
      userLocation,
      loading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RockListStateCopyWith<_$_RockListState> get copyWith =>
      __$$_RockListStateCopyWithImpl<_$_RockListState>(this, _$identity);
}

abstract class _RockListState implements RockListState {
  const factory _RockListState(
      {required final List<RockEntity> allRocks,
      required final List<RockEntity> rocksToShow,
      required final List<RockPhoto> rockPhotos,
      required final String searchString,
      required final Option<LatLng> userLocation,
      required final bool loading}) = _$_RockListState;

  @override
  List<RockEntity> get allRocks;
  @override
  List<RockEntity> get rocksToShow;
  @override
  List<RockPhoto> get rockPhotos;
  @override
  String get searchString;
  @override
  Option<LatLng> get userLocation;
  @override
  bool get loading;
  @override
  @JsonKey(ignore: true)
  _$$_RockListStateCopyWith<_$_RockListState> get copyWith =>
      throw _privateConstructorUsedError;
}

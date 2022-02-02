// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'map_control_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MapControlEventTearOff {
  const _$MapControlEventTearOff();

  _RockMarkerPut rockMarkerPut(RockEntity rock) {
    return _RockMarkerPut(
      rock,
    );
  }

  _RockMarkerRemoved rockMarkerRemoved() {
    return const _RockMarkerRemoved();
  }

  _RockClicked rockClicked(RockEntity rock) {
    return _RockClicked(
      rock,
    );
  }

  _ClickedRockRemoved clickedRockRemoved() {
    return const _ClickedRockRemoved();
  }

  _HandleMarkerSelection handleMarkerSelection(RockEntity rock) {
    return _HandleMarkerSelection(
      rock,
    );
  }
}

/// @nodoc
const $MapControlEvent = _$MapControlEventTearOff();

/// @nodoc
mixin _$MapControlEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RockEntity rock) rockMarkerPut,
    required TResult Function() rockMarkerRemoved,
    required TResult Function(RockEntity rock) rockClicked,
    required TResult Function() clickedRockRemoved,
    required TResult Function(RockEntity rock) handleMarkerSelection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(RockEntity rock)? rockMarkerPut,
    TResult Function()? rockMarkerRemoved,
    TResult Function(RockEntity rock)? rockClicked,
    TResult Function()? clickedRockRemoved,
    TResult Function(RockEntity rock)? handleMarkerSelection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RockEntity rock)? rockMarkerPut,
    TResult Function()? rockMarkerRemoved,
    TResult Function(RockEntity rock)? rockClicked,
    TResult Function()? clickedRockRemoved,
    TResult Function(RockEntity rock)? handleMarkerSelection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RockMarkerPut value) rockMarkerPut,
    required TResult Function(_RockMarkerRemoved value) rockMarkerRemoved,
    required TResult Function(_RockClicked value) rockClicked,
    required TResult Function(_ClickedRockRemoved value) clickedRockRemoved,
    required TResult Function(_HandleMarkerSelection value)
        handleMarkerSelection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RockMarkerPut value)? rockMarkerPut,
    TResult Function(_RockMarkerRemoved value)? rockMarkerRemoved,
    TResult Function(_RockClicked value)? rockClicked,
    TResult Function(_ClickedRockRemoved value)? clickedRockRemoved,
    TResult Function(_HandleMarkerSelection value)? handleMarkerSelection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RockMarkerPut value)? rockMarkerPut,
    TResult Function(_RockMarkerRemoved value)? rockMarkerRemoved,
    TResult Function(_RockClicked value)? rockClicked,
    TResult Function(_ClickedRockRemoved value)? clickedRockRemoved,
    TResult Function(_HandleMarkerSelection value)? handleMarkerSelection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapControlEventCopyWith<$Res> {
  factory $MapControlEventCopyWith(
          MapControlEvent value, $Res Function(MapControlEvent) then) =
      _$MapControlEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$MapControlEventCopyWithImpl<$Res>
    implements $MapControlEventCopyWith<$Res> {
  _$MapControlEventCopyWithImpl(this._value, this._then);

  final MapControlEvent _value;
  // ignore: unused_field
  final $Res Function(MapControlEvent) _then;
}

/// @nodoc
abstract class _$RockMarkerPutCopyWith<$Res> {
  factory _$RockMarkerPutCopyWith(
          _RockMarkerPut value, $Res Function(_RockMarkerPut) then) =
      __$RockMarkerPutCopyWithImpl<$Res>;
  $Res call({RockEntity rock});

  $RockEntityCopyWith<$Res> get rock;
}

/// @nodoc
class __$RockMarkerPutCopyWithImpl<$Res>
    extends _$MapControlEventCopyWithImpl<$Res>
    implements _$RockMarkerPutCopyWith<$Res> {
  __$RockMarkerPutCopyWithImpl(
      _RockMarkerPut _value, $Res Function(_RockMarkerPut) _then)
      : super(_value, (v) => _then(v as _RockMarkerPut));

  @override
  _RockMarkerPut get _value => super._value as _RockMarkerPut;

  @override
  $Res call({
    Object? rock = freezed,
  }) {
    return _then(_RockMarkerPut(
      rock == freezed
          ? _value.rock
          : rock // ignore: cast_nullable_to_non_nullable
              as RockEntity,
    ));
  }

  @override
  $RockEntityCopyWith<$Res> get rock {
    return $RockEntityCopyWith<$Res>(_value.rock, (value) {
      return _then(_value.copyWith(rock: value));
    });
  }
}

/// @nodoc

class _$_RockMarkerPut implements _RockMarkerPut {
  const _$_RockMarkerPut(this.rock);

  @override
  final RockEntity rock;

  @override
  String toString() {
    return 'MapControlEvent.rockMarkerPut(rock: $rock)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RockMarkerPut &&
            const DeepCollectionEquality().equals(other.rock, rock));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(rock));

  @JsonKey(ignore: true)
  @override
  _$RockMarkerPutCopyWith<_RockMarkerPut> get copyWith =>
      __$RockMarkerPutCopyWithImpl<_RockMarkerPut>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RockEntity rock) rockMarkerPut,
    required TResult Function() rockMarkerRemoved,
    required TResult Function(RockEntity rock) rockClicked,
    required TResult Function() clickedRockRemoved,
    required TResult Function(RockEntity rock) handleMarkerSelection,
  }) {
    return rockMarkerPut(rock);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(RockEntity rock)? rockMarkerPut,
    TResult Function()? rockMarkerRemoved,
    TResult Function(RockEntity rock)? rockClicked,
    TResult Function()? clickedRockRemoved,
    TResult Function(RockEntity rock)? handleMarkerSelection,
  }) {
    return rockMarkerPut?.call(rock);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RockEntity rock)? rockMarkerPut,
    TResult Function()? rockMarkerRemoved,
    TResult Function(RockEntity rock)? rockClicked,
    TResult Function()? clickedRockRemoved,
    TResult Function(RockEntity rock)? handleMarkerSelection,
    required TResult orElse(),
  }) {
    if (rockMarkerPut != null) {
      return rockMarkerPut(rock);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RockMarkerPut value) rockMarkerPut,
    required TResult Function(_RockMarkerRemoved value) rockMarkerRemoved,
    required TResult Function(_RockClicked value) rockClicked,
    required TResult Function(_ClickedRockRemoved value) clickedRockRemoved,
    required TResult Function(_HandleMarkerSelection value)
        handleMarkerSelection,
  }) {
    return rockMarkerPut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RockMarkerPut value)? rockMarkerPut,
    TResult Function(_RockMarkerRemoved value)? rockMarkerRemoved,
    TResult Function(_RockClicked value)? rockClicked,
    TResult Function(_ClickedRockRemoved value)? clickedRockRemoved,
    TResult Function(_HandleMarkerSelection value)? handleMarkerSelection,
  }) {
    return rockMarkerPut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RockMarkerPut value)? rockMarkerPut,
    TResult Function(_RockMarkerRemoved value)? rockMarkerRemoved,
    TResult Function(_RockClicked value)? rockClicked,
    TResult Function(_ClickedRockRemoved value)? clickedRockRemoved,
    TResult Function(_HandleMarkerSelection value)? handleMarkerSelection,
    required TResult orElse(),
  }) {
    if (rockMarkerPut != null) {
      return rockMarkerPut(this);
    }
    return orElse();
  }
}

abstract class _RockMarkerPut implements MapControlEvent {
  const factory _RockMarkerPut(RockEntity rock) = _$_RockMarkerPut;

  RockEntity get rock;
  @JsonKey(ignore: true)
  _$RockMarkerPutCopyWith<_RockMarkerPut> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$RockMarkerRemovedCopyWith<$Res> {
  factory _$RockMarkerRemovedCopyWith(
          _RockMarkerRemoved value, $Res Function(_RockMarkerRemoved) then) =
      __$RockMarkerRemovedCopyWithImpl<$Res>;
}

/// @nodoc
class __$RockMarkerRemovedCopyWithImpl<$Res>
    extends _$MapControlEventCopyWithImpl<$Res>
    implements _$RockMarkerRemovedCopyWith<$Res> {
  __$RockMarkerRemovedCopyWithImpl(
      _RockMarkerRemoved _value, $Res Function(_RockMarkerRemoved) _then)
      : super(_value, (v) => _then(v as _RockMarkerRemoved));

  @override
  _RockMarkerRemoved get _value => super._value as _RockMarkerRemoved;
}

/// @nodoc

class _$_RockMarkerRemoved implements _RockMarkerRemoved {
  const _$_RockMarkerRemoved();

  @override
  String toString() {
    return 'MapControlEvent.rockMarkerRemoved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _RockMarkerRemoved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RockEntity rock) rockMarkerPut,
    required TResult Function() rockMarkerRemoved,
    required TResult Function(RockEntity rock) rockClicked,
    required TResult Function() clickedRockRemoved,
    required TResult Function(RockEntity rock) handleMarkerSelection,
  }) {
    return rockMarkerRemoved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(RockEntity rock)? rockMarkerPut,
    TResult Function()? rockMarkerRemoved,
    TResult Function(RockEntity rock)? rockClicked,
    TResult Function()? clickedRockRemoved,
    TResult Function(RockEntity rock)? handleMarkerSelection,
  }) {
    return rockMarkerRemoved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RockEntity rock)? rockMarkerPut,
    TResult Function()? rockMarkerRemoved,
    TResult Function(RockEntity rock)? rockClicked,
    TResult Function()? clickedRockRemoved,
    TResult Function(RockEntity rock)? handleMarkerSelection,
    required TResult orElse(),
  }) {
    if (rockMarkerRemoved != null) {
      return rockMarkerRemoved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RockMarkerPut value) rockMarkerPut,
    required TResult Function(_RockMarkerRemoved value) rockMarkerRemoved,
    required TResult Function(_RockClicked value) rockClicked,
    required TResult Function(_ClickedRockRemoved value) clickedRockRemoved,
    required TResult Function(_HandleMarkerSelection value)
        handleMarkerSelection,
  }) {
    return rockMarkerRemoved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RockMarkerPut value)? rockMarkerPut,
    TResult Function(_RockMarkerRemoved value)? rockMarkerRemoved,
    TResult Function(_RockClicked value)? rockClicked,
    TResult Function(_ClickedRockRemoved value)? clickedRockRemoved,
    TResult Function(_HandleMarkerSelection value)? handleMarkerSelection,
  }) {
    return rockMarkerRemoved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RockMarkerPut value)? rockMarkerPut,
    TResult Function(_RockMarkerRemoved value)? rockMarkerRemoved,
    TResult Function(_RockClicked value)? rockClicked,
    TResult Function(_ClickedRockRemoved value)? clickedRockRemoved,
    TResult Function(_HandleMarkerSelection value)? handleMarkerSelection,
    required TResult orElse(),
  }) {
    if (rockMarkerRemoved != null) {
      return rockMarkerRemoved(this);
    }
    return orElse();
  }
}

abstract class _RockMarkerRemoved implements MapControlEvent {
  const factory _RockMarkerRemoved() = _$_RockMarkerRemoved;
}

/// @nodoc
abstract class _$RockClickedCopyWith<$Res> {
  factory _$RockClickedCopyWith(
          _RockClicked value, $Res Function(_RockClicked) then) =
      __$RockClickedCopyWithImpl<$Res>;
  $Res call({RockEntity rock});

  $RockEntityCopyWith<$Res> get rock;
}

/// @nodoc
class __$RockClickedCopyWithImpl<$Res>
    extends _$MapControlEventCopyWithImpl<$Res>
    implements _$RockClickedCopyWith<$Res> {
  __$RockClickedCopyWithImpl(
      _RockClicked _value, $Res Function(_RockClicked) _then)
      : super(_value, (v) => _then(v as _RockClicked));

  @override
  _RockClicked get _value => super._value as _RockClicked;

  @override
  $Res call({
    Object? rock = freezed,
  }) {
    return _then(_RockClicked(
      rock == freezed
          ? _value.rock
          : rock // ignore: cast_nullable_to_non_nullable
              as RockEntity,
    ));
  }

  @override
  $RockEntityCopyWith<$Res> get rock {
    return $RockEntityCopyWith<$Res>(_value.rock, (value) {
      return _then(_value.copyWith(rock: value));
    });
  }
}

/// @nodoc

class _$_RockClicked implements _RockClicked {
  const _$_RockClicked(this.rock);

  @override
  final RockEntity rock;

  @override
  String toString() {
    return 'MapControlEvent.rockClicked(rock: $rock)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RockClicked &&
            const DeepCollectionEquality().equals(other.rock, rock));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(rock));

  @JsonKey(ignore: true)
  @override
  _$RockClickedCopyWith<_RockClicked> get copyWith =>
      __$RockClickedCopyWithImpl<_RockClicked>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RockEntity rock) rockMarkerPut,
    required TResult Function() rockMarkerRemoved,
    required TResult Function(RockEntity rock) rockClicked,
    required TResult Function() clickedRockRemoved,
    required TResult Function(RockEntity rock) handleMarkerSelection,
  }) {
    return rockClicked(rock);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(RockEntity rock)? rockMarkerPut,
    TResult Function()? rockMarkerRemoved,
    TResult Function(RockEntity rock)? rockClicked,
    TResult Function()? clickedRockRemoved,
    TResult Function(RockEntity rock)? handleMarkerSelection,
  }) {
    return rockClicked?.call(rock);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RockEntity rock)? rockMarkerPut,
    TResult Function()? rockMarkerRemoved,
    TResult Function(RockEntity rock)? rockClicked,
    TResult Function()? clickedRockRemoved,
    TResult Function(RockEntity rock)? handleMarkerSelection,
    required TResult orElse(),
  }) {
    if (rockClicked != null) {
      return rockClicked(rock);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RockMarkerPut value) rockMarkerPut,
    required TResult Function(_RockMarkerRemoved value) rockMarkerRemoved,
    required TResult Function(_RockClicked value) rockClicked,
    required TResult Function(_ClickedRockRemoved value) clickedRockRemoved,
    required TResult Function(_HandleMarkerSelection value)
        handleMarkerSelection,
  }) {
    return rockClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RockMarkerPut value)? rockMarkerPut,
    TResult Function(_RockMarkerRemoved value)? rockMarkerRemoved,
    TResult Function(_RockClicked value)? rockClicked,
    TResult Function(_ClickedRockRemoved value)? clickedRockRemoved,
    TResult Function(_HandleMarkerSelection value)? handleMarkerSelection,
  }) {
    return rockClicked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RockMarkerPut value)? rockMarkerPut,
    TResult Function(_RockMarkerRemoved value)? rockMarkerRemoved,
    TResult Function(_RockClicked value)? rockClicked,
    TResult Function(_ClickedRockRemoved value)? clickedRockRemoved,
    TResult Function(_HandleMarkerSelection value)? handleMarkerSelection,
    required TResult orElse(),
  }) {
    if (rockClicked != null) {
      return rockClicked(this);
    }
    return orElse();
  }
}

abstract class _RockClicked implements MapControlEvent {
  const factory _RockClicked(RockEntity rock) = _$_RockClicked;

  RockEntity get rock;
  @JsonKey(ignore: true)
  _$RockClickedCopyWith<_RockClicked> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ClickedRockRemovedCopyWith<$Res> {
  factory _$ClickedRockRemovedCopyWith(
          _ClickedRockRemoved value, $Res Function(_ClickedRockRemoved) then) =
      __$ClickedRockRemovedCopyWithImpl<$Res>;
}

/// @nodoc
class __$ClickedRockRemovedCopyWithImpl<$Res>
    extends _$MapControlEventCopyWithImpl<$Res>
    implements _$ClickedRockRemovedCopyWith<$Res> {
  __$ClickedRockRemovedCopyWithImpl(
      _ClickedRockRemoved _value, $Res Function(_ClickedRockRemoved) _then)
      : super(_value, (v) => _then(v as _ClickedRockRemoved));

  @override
  _ClickedRockRemoved get _value => super._value as _ClickedRockRemoved;
}

/// @nodoc

class _$_ClickedRockRemoved implements _ClickedRockRemoved {
  const _$_ClickedRockRemoved();

  @override
  String toString() {
    return 'MapControlEvent.clickedRockRemoved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ClickedRockRemoved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RockEntity rock) rockMarkerPut,
    required TResult Function() rockMarkerRemoved,
    required TResult Function(RockEntity rock) rockClicked,
    required TResult Function() clickedRockRemoved,
    required TResult Function(RockEntity rock) handleMarkerSelection,
  }) {
    return clickedRockRemoved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(RockEntity rock)? rockMarkerPut,
    TResult Function()? rockMarkerRemoved,
    TResult Function(RockEntity rock)? rockClicked,
    TResult Function()? clickedRockRemoved,
    TResult Function(RockEntity rock)? handleMarkerSelection,
  }) {
    return clickedRockRemoved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RockEntity rock)? rockMarkerPut,
    TResult Function()? rockMarkerRemoved,
    TResult Function(RockEntity rock)? rockClicked,
    TResult Function()? clickedRockRemoved,
    TResult Function(RockEntity rock)? handleMarkerSelection,
    required TResult orElse(),
  }) {
    if (clickedRockRemoved != null) {
      return clickedRockRemoved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RockMarkerPut value) rockMarkerPut,
    required TResult Function(_RockMarkerRemoved value) rockMarkerRemoved,
    required TResult Function(_RockClicked value) rockClicked,
    required TResult Function(_ClickedRockRemoved value) clickedRockRemoved,
    required TResult Function(_HandleMarkerSelection value)
        handleMarkerSelection,
  }) {
    return clickedRockRemoved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RockMarkerPut value)? rockMarkerPut,
    TResult Function(_RockMarkerRemoved value)? rockMarkerRemoved,
    TResult Function(_RockClicked value)? rockClicked,
    TResult Function(_ClickedRockRemoved value)? clickedRockRemoved,
    TResult Function(_HandleMarkerSelection value)? handleMarkerSelection,
  }) {
    return clickedRockRemoved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RockMarkerPut value)? rockMarkerPut,
    TResult Function(_RockMarkerRemoved value)? rockMarkerRemoved,
    TResult Function(_RockClicked value)? rockClicked,
    TResult Function(_ClickedRockRemoved value)? clickedRockRemoved,
    TResult Function(_HandleMarkerSelection value)? handleMarkerSelection,
    required TResult orElse(),
  }) {
    if (clickedRockRemoved != null) {
      return clickedRockRemoved(this);
    }
    return orElse();
  }
}

abstract class _ClickedRockRemoved implements MapControlEvent {
  const factory _ClickedRockRemoved() = _$_ClickedRockRemoved;
}

/// @nodoc
abstract class _$HandleMarkerSelectionCopyWith<$Res> {
  factory _$HandleMarkerSelectionCopyWith(_HandleMarkerSelection value,
          $Res Function(_HandleMarkerSelection) then) =
      __$HandleMarkerSelectionCopyWithImpl<$Res>;
  $Res call({RockEntity rock});

  $RockEntityCopyWith<$Res> get rock;
}

/// @nodoc
class __$HandleMarkerSelectionCopyWithImpl<$Res>
    extends _$MapControlEventCopyWithImpl<$Res>
    implements _$HandleMarkerSelectionCopyWith<$Res> {
  __$HandleMarkerSelectionCopyWithImpl(_HandleMarkerSelection _value,
      $Res Function(_HandleMarkerSelection) _then)
      : super(_value, (v) => _then(v as _HandleMarkerSelection));

  @override
  _HandleMarkerSelection get _value => super._value as _HandleMarkerSelection;

  @override
  $Res call({
    Object? rock = freezed,
  }) {
    return _then(_HandleMarkerSelection(
      rock == freezed
          ? _value.rock
          : rock // ignore: cast_nullable_to_non_nullable
              as RockEntity,
    ));
  }

  @override
  $RockEntityCopyWith<$Res> get rock {
    return $RockEntityCopyWith<$Res>(_value.rock, (value) {
      return _then(_value.copyWith(rock: value));
    });
  }
}

/// @nodoc

class _$_HandleMarkerSelection implements _HandleMarkerSelection {
  const _$_HandleMarkerSelection(this.rock);

  @override
  final RockEntity rock;

  @override
  String toString() {
    return 'MapControlEvent.handleMarkerSelection(rock: $rock)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HandleMarkerSelection &&
            const DeepCollectionEquality().equals(other.rock, rock));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(rock));

  @JsonKey(ignore: true)
  @override
  _$HandleMarkerSelectionCopyWith<_HandleMarkerSelection> get copyWith =>
      __$HandleMarkerSelectionCopyWithImpl<_HandleMarkerSelection>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RockEntity rock) rockMarkerPut,
    required TResult Function() rockMarkerRemoved,
    required TResult Function(RockEntity rock) rockClicked,
    required TResult Function() clickedRockRemoved,
    required TResult Function(RockEntity rock) handleMarkerSelection,
  }) {
    return handleMarkerSelection(rock);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(RockEntity rock)? rockMarkerPut,
    TResult Function()? rockMarkerRemoved,
    TResult Function(RockEntity rock)? rockClicked,
    TResult Function()? clickedRockRemoved,
    TResult Function(RockEntity rock)? handleMarkerSelection,
  }) {
    return handleMarkerSelection?.call(rock);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RockEntity rock)? rockMarkerPut,
    TResult Function()? rockMarkerRemoved,
    TResult Function(RockEntity rock)? rockClicked,
    TResult Function()? clickedRockRemoved,
    TResult Function(RockEntity rock)? handleMarkerSelection,
    required TResult orElse(),
  }) {
    if (handleMarkerSelection != null) {
      return handleMarkerSelection(rock);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RockMarkerPut value) rockMarkerPut,
    required TResult Function(_RockMarkerRemoved value) rockMarkerRemoved,
    required TResult Function(_RockClicked value) rockClicked,
    required TResult Function(_ClickedRockRemoved value) clickedRockRemoved,
    required TResult Function(_HandleMarkerSelection value)
        handleMarkerSelection,
  }) {
    return handleMarkerSelection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RockMarkerPut value)? rockMarkerPut,
    TResult Function(_RockMarkerRemoved value)? rockMarkerRemoved,
    TResult Function(_RockClicked value)? rockClicked,
    TResult Function(_ClickedRockRemoved value)? clickedRockRemoved,
    TResult Function(_HandleMarkerSelection value)? handleMarkerSelection,
  }) {
    return handleMarkerSelection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RockMarkerPut value)? rockMarkerPut,
    TResult Function(_RockMarkerRemoved value)? rockMarkerRemoved,
    TResult Function(_RockClicked value)? rockClicked,
    TResult Function(_ClickedRockRemoved value)? clickedRockRemoved,
    TResult Function(_HandleMarkerSelection value)? handleMarkerSelection,
    required TResult orElse(),
  }) {
    if (handleMarkerSelection != null) {
      return handleMarkerSelection(this);
    }
    return orElse();
  }
}

abstract class _HandleMarkerSelection implements MapControlEvent {
  const factory _HandleMarkerSelection(RockEntity rock) =
      _$_HandleMarkerSelection;

  RockEntity get rock;
  @JsonKey(ignore: true)
  _$HandleMarkerSelectionCopyWith<_HandleMarkerSelection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$MapControlStateTearOff {
  const _$MapControlStateTearOff();

  _MapControlState call(
      {required Option<RockEntity> setMarkerRock,
      required Option<RockEntity> clickedRock}) {
    return _MapControlState(
      setMarkerRock: setMarkerRock,
      clickedRock: clickedRock,
    );
  }
}

/// @nodoc
const $MapControlState = _$MapControlStateTearOff();

/// @nodoc
mixin _$MapControlState {
  Option<RockEntity> get setMarkerRock => throw _privateConstructorUsedError;
  Option<RockEntity> get clickedRock => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MapControlStateCopyWith<MapControlState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapControlStateCopyWith<$Res> {
  factory $MapControlStateCopyWith(
          MapControlState value, $Res Function(MapControlState) then) =
      _$MapControlStateCopyWithImpl<$Res>;
  $Res call({Option<RockEntity> setMarkerRock, Option<RockEntity> clickedRock});
}

/// @nodoc
class _$MapControlStateCopyWithImpl<$Res>
    implements $MapControlStateCopyWith<$Res> {
  _$MapControlStateCopyWithImpl(this._value, this._then);

  final MapControlState _value;
  // ignore: unused_field
  final $Res Function(MapControlState) _then;

  @override
  $Res call({
    Object? setMarkerRock = freezed,
    Object? clickedRock = freezed,
  }) {
    return _then(_value.copyWith(
      setMarkerRock: setMarkerRock == freezed
          ? _value.setMarkerRock
          : setMarkerRock // ignore: cast_nullable_to_non_nullable
              as Option<RockEntity>,
      clickedRock: clickedRock == freezed
          ? _value.clickedRock
          : clickedRock // ignore: cast_nullable_to_non_nullable
              as Option<RockEntity>,
    ));
  }
}

/// @nodoc
abstract class _$MapControlStateCopyWith<$Res>
    implements $MapControlStateCopyWith<$Res> {
  factory _$MapControlStateCopyWith(
          _MapControlState value, $Res Function(_MapControlState) then) =
      __$MapControlStateCopyWithImpl<$Res>;
  @override
  $Res call({Option<RockEntity> setMarkerRock, Option<RockEntity> clickedRock});
}

/// @nodoc
class __$MapControlStateCopyWithImpl<$Res>
    extends _$MapControlStateCopyWithImpl<$Res>
    implements _$MapControlStateCopyWith<$Res> {
  __$MapControlStateCopyWithImpl(
      _MapControlState _value, $Res Function(_MapControlState) _then)
      : super(_value, (v) => _then(v as _MapControlState));

  @override
  _MapControlState get _value => super._value as _MapControlState;

  @override
  $Res call({
    Object? setMarkerRock = freezed,
    Object? clickedRock = freezed,
  }) {
    return _then(_MapControlState(
      setMarkerRock: setMarkerRock == freezed
          ? _value.setMarkerRock
          : setMarkerRock // ignore: cast_nullable_to_non_nullable
              as Option<RockEntity>,
      clickedRock: clickedRock == freezed
          ? _value.clickedRock
          : clickedRock // ignore: cast_nullable_to_non_nullable
              as Option<RockEntity>,
    ));
  }
}

/// @nodoc

class _$_MapControlState implements _MapControlState {
  const _$_MapControlState(
      {required this.setMarkerRock, required this.clickedRock});

  @override
  final Option<RockEntity> setMarkerRock;
  @override
  final Option<RockEntity> clickedRock;

  @override
  String toString() {
    return 'MapControlState(setMarkerRock: $setMarkerRock, clickedRock: $clickedRock)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MapControlState &&
            const DeepCollectionEquality()
                .equals(other.setMarkerRock, setMarkerRock) &&
            const DeepCollectionEquality()
                .equals(other.clickedRock, clickedRock));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(setMarkerRock),
      const DeepCollectionEquality().hash(clickedRock));

  @JsonKey(ignore: true)
  @override
  _$MapControlStateCopyWith<_MapControlState> get copyWith =>
      __$MapControlStateCopyWithImpl<_MapControlState>(this, _$identity);
}

abstract class _MapControlState implements MapControlState {
  const factory _MapControlState(
      {required Option<RockEntity> setMarkerRock,
      required Option<RockEntity> clickedRock}) = _$_MapControlState;

  @override
  Option<RockEntity> get setMarkerRock;
  @override
  Option<RockEntity> get clickedRock;
  @override
  @JsonKey(ignore: true)
  _$MapControlStateCopyWith<_MapControlState> get copyWith =>
      throw _privateConstructorUsedError;
}

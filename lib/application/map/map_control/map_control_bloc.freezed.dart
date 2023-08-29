// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'map_control_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
    TResult? Function(RockEntity rock)? rockMarkerPut,
    TResult? Function()? rockMarkerRemoved,
    TResult? Function(RockEntity rock)? rockClicked,
    TResult? Function()? clickedRockRemoved,
    TResult? Function(RockEntity rock)? handleMarkerSelection,
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
    TResult? Function(_RockMarkerPut value)? rockMarkerPut,
    TResult? Function(_RockMarkerRemoved value)? rockMarkerRemoved,
    TResult? Function(_RockClicked value)? rockClicked,
    TResult? Function(_ClickedRockRemoved value)? clickedRockRemoved,
    TResult? Function(_HandleMarkerSelection value)? handleMarkerSelection,
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
      _$MapControlEventCopyWithImpl<$Res, MapControlEvent>;
}

/// @nodoc
class _$MapControlEventCopyWithImpl<$Res, $Val extends MapControlEvent>
    implements $MapControlEventCopyWith<$Res> {
  _$MapControlEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_RockMarkerPutCopyWith<$Res> {
  factory _$$_RockMarkerPutCopyWith(
          _$_RockMarkerPut value, $Res Function(_$_RockMarkerPut) then) =
      __$$_RockMarkerPutCopyWithImpl<$Res>;
  @useResult
  $Res call({RockEntity rock});

  $RockEntityCopyWith<$Res> get rock;
}

/// @nodoc
class __$$_RockMarkerPutCopyWithImpl<$Res>
    extends _$MapControlEventCopyWithImpl<$Res, _$_RockMarkerPut>
    implements _$$_RockMarkerPutCopyWith<$Res> {
  __$$_RockMarkerPutCopyWithImpl(
      _$_RockMarkerPut _value, $Res Function(_$_RockMarkerPut) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rock = null,
  }) {
    return _then(_$_RockMarkerPut(
      null == rock
          ? _value.rock
          : rock // ignore: cast_nullable_to_non_nullable
              as RockEntity,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
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
            other is _$_RockMarkerPut &&
            (identical(other.rock, rock) || other.rock == rock));
  }

  @override
  int get hashCode => Object.hash(runtimeType, rock);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RockMarkerPutCopyWith<_$_RockMarkerPut> get copyWith =>
      __$$_RockMarkerPutCopyWithImpl<_$_RockMarkerPut>(this, _$identity);

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
    TResult? Function(RockEntity rock)? rockMarkerPut,
    TResult? Function()? rockMarkerRemoved,
    TResult? Function(RockEntity rock)? rockClicked,
    TResult? Function()? clickedRockRemoved,
    TResult? Function(RockEntity rock)? handleMarkerSelection,
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
    TResult? Function(_RockMarkerPut value)? rockMarkerPut,
    TResult? Function(_RockMarkerRemoved value)? rockMarkerRemoved,
    TResult? Function(_RockClicked value)? rockClicked,
    TResult? Function(_ClickedRockRemoved value)? clickedRockRemoved,
    TResult? Function(_HandleMarkerSelection value)? handleMarkerSelection,
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
  const factory _RockMarkerPut(final RockEntity rock) = _$_RockMarkerPut;

  RockEntity get rock;
  @JsonKey(ignore: true)
  _$$_RockMarkerPutCopyWith<_$_RockMarkerPut> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RockMarkerRemovedCopyWith<$Res> {
  factory _$$_RockMarkerRemovedCopyWith(_$_RockMarkerRemoved value,
          $Res Function(_$_RockMarkerRemoved) then) =
      __$$_RockMarkerRemovedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RockMarkerRemovedCopyWithImpl<$Res>
    extends _$MapControlEventCopyWithImpl<$Res, _$_RockMarkerRemoved>
    implements _$$_RockMarkerRemovedCopyWith<$Res> {
  __$$_RockMarkerRemovedCopyWithImpl(
      _$_RockMarkerRemoved _value, $Res Function(_$_RockMarkerRemoved) _then)
      : super(_value, _then);
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
        (other.runtimeType == runtimeType && other is _$_RockMarkerRemoved);
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
    TResult? Function(RockEntity rock)? rockMarkerPut,
    TResult? Function()? rockMarkerRemoved,
    TResult? Function(RockEntity rock)? rockClicked,
    TResult? Function()? clickedRockRemoved,
    TResult? Function(RockEntity rock)? handleMarkerSelection,
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
    TResult? Function(_RockMarkerPut value)? rockMarkerPut,
    TResult? Function(_RockMarkerRemoved value)? rockMarkerRemoved,
    TResult? Function(_RockClicked value)? rockClicked,
    TResult? Function(_ClickedRockRemoved value)? clickedRockRemoved,
    TResult? Function(_HandleMarkerSelection value)? handleMarkerSelection,
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
abstract class _$$_RockClickedCopyWith<$Res> {
  factory _$$_RockClickedCopyWith(
          _$_RockClicked value, $Res Function(_$_RockClicked) then) =
      __$$_RockClickedCopyWithImpl<$Res>;
  @useResult
  $Res call({RockEntity rock});

  $RockEntityCopyWith<$Res> get rock;
}

/// @nodoc
class __$$_RockClickedCopyWithImpl<$Res>
    extends _$MapControlEventCopyWithImpl<$Res, _$_RockClicked>
    implements _$$_RockClickedCopyWith<$Res> {
  __$$_RockClickedCopyWithImpl(
      _$_RockClicked _value, $Res Function(_$_RockClicked) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rock = null,
  }) {
    return _then(_$_RockClicked(
      null == rock
          ? _value.rock
          : rock // ignore: cast_nullable_to_non_nullable
              as RockEntity,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
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
            other is _$_RockClicked &&
            (identical(other.rock, rock) || other.rock == rock));
  }

  @override
  int get hashCode => Object.hash(runtimeType, rock);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RockClickedCopyWith<_$_RockClicked> get copyWith =>
      __$$_RockClickedCopyWithImpl<_$_RockClicked>(this, _$identity);

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
    TResult? Function(RockEntity rock)? rockMarkerPut,
    TResult? Function()? rockMarkerRemoved,
    TResult? Function(RockEntity rock)? rockClicked,
    TResult? Function()? clickedRockRemoved,
    TResult? Function(RockEntity rock)? handleMarkerSelection,
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
    TResult? Function(_RockMarkerPut value)? rockMarkerPut,
    TResult? Function(_RockMarkerRemoved value)? rockMarkerRemoved,
    TResult? Function(_RockClicked value)? rockClicked,
    TResult? Function(_ClickedRockRemoved value)? clickedRockRemoved,
    TResult? Function(_HandleMarkerSelection value)? handleMarkerSelection,
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
  const factory _RockClicked(final RockEntity rock) = _$_RockClicked;

  RockEntity get rock;
  @JsonKey(ignore: true)
  _$$_RockClickedCopyWith<_$_RockClicked> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ClickedRockRemovedCopyWith<$Res> {
  factory _$$_ClickedRockRemovedCopyWith(_$_ClickedRockRemoved value,
          $Res Function(_$_ClickedRockRemoved) then) =
      __$$_ClickedRockRemovedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ClickedRockRemovedCopyWithImpl<$Res>
    extends _$MapControlEventCopyWithImpl<$Res, _$_ClickedRockRemoved>
    implements _$$_ClickedRockRemovedCopyWith<$Res> {
  __$$_ClickedRockRemovedCopyWithImpl(
      _$_ClickedRockRemoved _value, $Res Function(_$_ClickedRockRemoved) _then)
      : super(_value, _then);
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
        (other.runtimeType == runtimeType && other is _$_ClickedRockRemoved);
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
    TResult? Function(RockEntity rock)? rockMarkerPut,
    TResult? Function()? rockMarkerRemoved,
    TResult? Function(RockEntity rock)? rockClicked,
    TResult? Function()? clickedRockRemoved,
    TResult? Function(RockEntity rock)? handleMarkerSelection,
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
    TResult? Function(_RockMarkerPut value)? rockMarkerPut,
    TResult? Function(_RockMarkerRemoved value)? rockMarkerRemoved,
    TResult? Function(_RockClicked value)? rockClicked,
    TResult? Function(_ClickedRockRemoved value)? clickedRockRemoved,
    TResult? Function(_HandleMarkerSelection value)? handleMarkerSelection,
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
abstract class _$$_HandleMarkerSelectionCopyWith<$Res> {
  factory _$$_HandleMarkerSelectionCopyWith(_$_HandleMarkerSelection value,
          $Res Function(_$_HandleMarkerSelection) then) =
      __$$_HandleMarkerSelectionCopyWithImpl<$Res>;
  @useResult
  $Res call({RockEntity rock});

  $RockEntityCopyWith<$Res> get rock;
}

/// @nodoc
class __$$_HandleMarkerSelectionCopyWithImpl<$Res>
    extends _$MapControlEventCopyWithImpl<$Res, _$_HandleMarkerSelection>
    implements _$$_HandleMarkerSelectionCopyWith<$Res> {
  __$$_HandleMarkerSelectionCopyWithImpl(_$_HandleMarkerSelection _value,
      $Res Function(_$_HandleMarkerSelection) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rock = null,
  }) {
    return _then(_$_HandleMarkerSelection(
      null == rock
          ? _value.rock
          : rock // ignore: cast_nullable_to_non_nullable
              as RockEntity,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
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
            other is _$_HandleMarkerSelection &&
            (identical(other.rock, rock) || other.rock == rock));
  }

  @override
  int get hashCode => Object.hash(runtimeType, rock);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HandleMarkerSelectionCopyWith<_$_HandleMarkerSelection> get copyWith =>
      __$$_HandleMarkerSelectionCopyWithImpl<_$_HandleMarkerSelection>(
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
    TResult? Function(RockEntity rock)? rockMarkerPut,
    TResult? Function()? rockMarkerRemoved,
    TResult? Function(RockEntity rock)? rockClicked,
    TResult? Function()? clickedRockRemoved,
    TResult? Function(RockEntity rock)? handleMarkerSelection,
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
    TResult? Function(_RockMarkerPut value)? rockMarkerPut,
    TResult? Function(_RockMarkerRemoved value)? rockMarkerRemoved,
    TResult? Function(_RockClicked value)? rockClicked,
    TResult? Function(_ClickedRockRemoved value)? clickedRockRemoved,
    TResult? Function(_HandleMarkerSelection value)? handleMarkerSelection,
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
  const factory _HandleMarkerSelection(final RockEntity rock) =
      _$_HandleMarkerSelection;

  RockEntity get rock;
  @JsonKey(ignore: true)
  _$$_HandleMarkerSelectionCopyWith<_$_HandleMarkerSelection> get copyWith =>
      throw _privateConstructorUsedError;
}

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
      _$MapControlStateCopyWithImpl<$Res, MapControlState>;
  @useResult
  $Res call({Option<RockEntity> setMarkerRock, Option<RockEntity> clickedRock});
}

/// @nodoc
class _$MapControlStateCopyWithImpl<$Res, $Val extends MapControlState>
    implements $MapControlStateCopyWith<$Res> {
  _$MapControlStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? setMarkerRock = null,
    Object? clickedRock = null,
  }) {
    return _then(_value.copyWith(
      setMarkerRock: null == setMarkerRock
          ? _value.setMarkerRock
          : setMarkerRock // ignore: cast_nullable_to_non_nullable
              as Option<RockEntity>,
      clickedRock: null == clickedRock
          ? _value.clickedRock
          : clickedRock // ignore: cast_nullable_to_non_nullable
              as Option<RockEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MapControlStateCopyWith<$Res>
    implements $MapControlStateCopyWith<$Res> {
  factory _$$_MapControlStateCopyWith(
          _$_MapControlState value, $Res Function(_$_MapControlState) then) =
      __$$_MapControlStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Option<RockEntity> setMarkerRock, Option<RockEntity> clickedRock});
}

/// @nodoc
class __$$_MapControlStateCopyWithImpl<$Res>
    extends _$MapControlStateCopyWithImpl<$Res, _$_MapControlState>
    implements _$$_MapControlStateCopyWith<$Res> {
  __$$_MapControlStateCopyWithImpl(
      _$_MapControlState _value, $Res Function(_$_MapControlState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? setMarkerRock = null,
    Object? clickedRock = null,
  }) {
    return _then(_$_MapControlState(
      setMarkerRock: null == setMarkerRock
          ? _value.setMarkerRock
          : setMarkerRock // ignore: cast_nullable_to_non_nullable
              as Option<RockEntity>,
      clickedRock: null == clickedRock
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
            other is _$_MapControlState &&
            (identical(other.setMarkerRock, setMarkerRock) ||
                other.setMarkerRock == setMarkerRock) &&
            (identical(other.clickedRock, clickedRock) ||
                other.clickedRock == clickedRock));
  }

  @override
  int get hashCode => Object.hash(runtimeType, setMarkerRock, clickedRock);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MapControlStateCopyWith<_$_MapControlState> get copyWith =>
      __$$_MapControlStateCopyWithImpl<_$_MapControlState>(this, _$identity);
}

abstract class _MapControlState implements MapControlState {
  const factory _MapControlState(
      {required final Option<RockEntity> setMarkerRock,
      required final Option<RockEntity> clickedRock}) = _$_MapControlState;

  @override
  Option<RockEntity> get setMarkerRock;
  @override
  Option<RockEntity> get clickedRock;
  @override
  @JsonKey(ignore: true)
  _$$_MapControlStateCopyWith<_$_MapControlState> get copyWith =>
      throw _privateConstructorUsedError;
}

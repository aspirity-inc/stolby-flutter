// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'images_viewer_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ImagesViewerEventTearOff {
  const _$ImagesViewerEventTearOff();

  _Initialized initialized({required String picName}) {
    return _Initialized(
      picName: picName,
    );
  }
}

/// @nodoc
const $ImagesViewerEvent = _$ImagesViewerEventTearOff();

/// @nodoc
mixin _$ImagesViewerEvent {
  String get picName => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String picName) initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String picName)? initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String picName)? initialized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ImagesViewerEventCopyWith<ImagesViewerEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImagesViewerEventCopyWith<$Res> {
  factory $ImagesViewerEventCopyWith(
          ImagesViewerEvent value, $Res Function(ImagesViewerEvent) then) =
      _$ImagesViewerEventCopyWithImpl<$Res>;
  $Res call({String picName});
}

/// @nodoc
class _$ImagesViewerEventCopyWithImpl<$Res>
    implements $ImagesViewerEventCopyWith<$Res> {
  _$ImagesViewerEventCopyWithImpl(this._value, this._then);

  final ImagesViewerEvent _value;
  // ignore: unused_field
  final $Res Function(ImagesViewerEvent) _then;

  @override
  $Res call({
    Object? picName = freezed,
  }) {
    return _then(_value.copyWith(
      picName: picName == freezed
          ? _value.picName
          : picName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$InitializedCopyWith<$Res>
    implements $ImagesViewerEventCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
  @override
  $Res call({String picName});
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res>
    extends _$ImagesViewerEventCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(
      _Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object? picName = freezed,
  }) {
    return _then(_Initialized(
      picName: picName == freezed
          ? _value.picName
          : picName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Initialized implements _Initialized {
  const _$_Initialized({required this.picName});

  @override
  final String picName;

  @override
  String toString() {
    return 'ImagesViewerEvent.initialized(picName: $picName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Initialized &&
            const DeepCollectionEquality().equals(other.picName, picName));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(picName));

  @JsonKey(ignore: true)
  @override
  _$InitializedCopyWith<_Initialized> get copyWith =>
      __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String picName) initialized,
  }) {
    return initialized(picName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String picName)? initialized,
  }) {
    return initialized?.call(picName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String picName)? initialized,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(picName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements ImagesViewerEvent {
  const factory _Initialized({required String picName}) = _$_Initialized;

  @override
  String get picName;
  @override
  @JsonKey(ignore: true)
  _$InitializedCopyWith<_Initialized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ImagesViewerStateTearOff {
  const _$ImagesViewerStateTearOff();

  _ImagesViewerState call(
      {required Option<String> mainImage, required List<String> imagesNames}) {
    return _ImagesViewerState(
      mainImage: mainImage,
      imagesNames: imagesNames,
    );
  }
}

/// @nodoc
const $ImagesViewerState = _$ImagesViewerStateTearOff();

/// @nodoc
mixin _$ImagesViewerState {
  Option<String> get mainImage => throw _privateConstructorUsedError;
  List<String> get imagesNames => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ImagesViewerStateCopyWith<ImagesViewerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImagesViewerStateCopyWith<$Res> {
  factory $ImagesViewerStateCopyWith(
          ImagesViewerState value, $Res Function(ImagesViewerState) then) =
      _$ImagesViewerStateCopyWithImpl<$Res>;
  $Res call({Option<String> mainImage, List<String> imagesNames});
}

/// @nodoc
class _$ImagesViewerStateCopyWithImpl<$Res>
    implements $ImagesViewerStateCopyWith<$Res> {
  _$ImagesViewerStateCopyWithImpl(this._value, this._then);

  final ImagesViewerState _value;
  // ignore: unused_field
  final $Res Function(ImagesViewerState) _then;

  @override
  $Res call({
    Object? mainImage = freezed,
    Object? imagesNames = freezed,
  }) {
    return _then(_value.copyWith(
      mainImage: mainImage == freezed
          ? _value.mainImage
          : mainImage // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      imagesNames: imagesNames == freezed
          ? _value.imagesNames
          : imagesNames // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$ImagesViewerStateCopyWith<$Res>
    implements $ImagesViewerStateCopyWith<$Res> {
  factory _$ImagesViewerStateCopyWith(
          _ImagesViewerState value, $Res Function(_ImagesViewerState) then) =
      __$ImagesViewerStateCopyWithImpl<$Res>;
  @override
  $Res call({Option<String> mainImage, List<String> imagesNames});
}

/// @nodoc
class __$ImagesViewerStateCopyWithImpl<$Res>
    extends _$ImagesViewerStateCopyWithImpl<$Res>
    implements _$ImagesViewerStateCopyWith<$Res> {
  __$ImagesViewerStateCopyWithImpl(
      _ImagesViewerState _value, $Res Function(_ImagesViewerState) _then)
      : super(_value, (v) => _then(v as _ImagesViewerState));

  @override
  _ImagesViewerState get _value => super._value as _ImagesViewerState;

  @override
  $Res call({
    Object? mainImage = freezed,
    Object? imagesNames = freezed,
  }) {
    return _then(_ImagesViewerState(
      mainImage: mainImage == freezed
          ? _value.mainImage
          : mainImage // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      imagesNames: imagesNames == freezed
          ? _value.imagesNames
          : imagesNames // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_ImagesViewerState implements _ImagesViewerState {
  const _$_ImagesViewerState(
      {required this.mainImage, required this.imagesNames});

  @override
  final Option<String> mainImage;
  @override
  final List<String> imagesNames;

  @override
  String toString() {
    return 'ImagesViewerState(mainImage: $mainImage, imagesNames: $imagesNames)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ImagesViewerState &&
            const DeepCollectionEquality().equals(other.mainImage, mainImage) &&
            const DeepCollectionEquality()
                .equals(other.imagesNames, imagesNames));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(mainImage),
      const DeepCollectionEquality().hash(imagesNames));

  @JsonKey(ignore: true)
  @override
  _$ImagesViewerStateCopyWith<_ImagesViewerState> get copyWith =>
      __$ImagesViewerStateCopyWithImpl<_ImagesViewerState>(this, _$identity);
}

abstract class _ImagesViewerState implements ImagesViewerState {
  const factory _ImagesViewerState(
      {required Option<String> mainImage,
      required List<String> imagesNames}) = _$_ImagesViewerState;

  @override
  Option<String> get mainImage;
  @override
  List<String> get imagesNames;
  @override
  @JsonKey(ignore: true)
  _$ImagesViewerStateCopyWith<_ImagesViewerState> get copyWith =>
      throw _privateConstructorUsedError;
}

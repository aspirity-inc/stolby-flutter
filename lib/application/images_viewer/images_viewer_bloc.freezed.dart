// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'images_viewer_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
    TResult? Function(String picName)? initialized,
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
    TResult? Function(_Initialized value)? initialized,
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
      _$ImagesViewerEventCopyWithImpl<$Res, ImagesViewerEvent>;
  @useResult
  $Res call({String picName});
}

/// @nodoc
class _$ImagesViewerEventCopyWithImpl<$Res, $Val extends ImagesViewerEvent>
    implements $ImagesViewerEventCopyWith<$Res> {
  _$ImagesViewerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? picName = null,
  }) {
    return _then(_value.copyWith(
      picName: null == picName
          ? _value.picName
          : picName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitializedCopyWith<$Res>
    implements $ImagesViewerEventCopyWith<$Res> {
  factory _$$_InitializedCopyWith(
          _$_Initialized value, $Res Function(_$_Initialized) then) =
      __$$_InitializedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String picName});
}

/// @nodoc
class __$$_InitializedCopyWithImpl<$Res>
    extends _$ImagesViewerEventCopyWithImpl<$Res, _$_Initialized>
    implements _$$_InitializedCopyWith<$Res> {
  __$$_InitializedCopyWithImpl(
      _$_Initialized _value, $Res Function(_$_Initialized) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? picName = null,
  }) {
    return _then(_$_Initialized(
      picName: null == picName
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
            other is _$_Initialized &&
            (identical(other.picName, picName) || other.picName == picName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, picName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitializedCopyWith<_$_Initialized> get copyWith =>
      __$$_InitializedCopyWithImpl<_$_Initialized>(this, _$identity);

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
    TResult? Function(String picName)? initialized,
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
    TResult? Function(_Initialized value)? initialized,
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
  const factory _Initialized({required final String picName}) = _$_Initialized;

  @override
  String get picName;
  @override
  @JsonKey(ignore: true)
  _$$_InitializedCopyWith<_$_Initialized> get copyWith =>
      throw _privateConstructorUsedError;
}

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
      _$ImagesViewerStateCopyWithImpl<$Res, ImagesViewerState>;
  @useResult
  $Res call({Option<String> mainImage, List<String> imagesNames});
}

/// @nodoc
class _$ImagesViewerStateCopyWithImpl<$Res, $Val extends ImagesViewerState>
    implements $ImagesViewerStateCopyWith<$Res> {
  _$ImagesViewerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mainImage = null,
    Object? imagesNames = null,
  }) {
    return _then(_value.copyWith(
      mainImage: null == mainImage
          ? _value.mainImage
          : mainImage // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      imagesNames: null == imagesNames
          ? _value.imagesNames
          : imagesNames // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ImagesViewerStateCopyWith<$Res>
    implements $ImagesViewerStateCopyWith<$Res> {
  factory _$$_ImagesViewerStateCopyWith(_$_ImagesViewerState value,
          $Res Function(_$_ImagesViewerState) then) =
      __$$_ImagesViewerStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Option<String> mainImage, List<String> imagesNames});
}

/// @nodoc
class __$$_ImagesViewerStateCopyWithImpl<$Res>
    extends _$ImagesViewerStateCopyWithImpl<$Res, _$_ImagesViewerState>
    implements _$$_ImagesViewerStateCopyWith<$Res> {
  __$$_ImagesViewerStateCopyWithImpl(
      _$_ImagesViewerState _value, $Res Function(_$_ImagesViewerState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mainImage = null,
    Object? imagesNames = null,
  }) {
    return _then(_$_ImagesViewerState(
      mainImage: null == mainImage
          ? _value.mainImage
          : mainImage // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      imagesNames: null == imagesNames
          ? _value._imagesNames
          : imagesNames // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_ImagesViewerState implements _ImagesViewerState {
  const _$_ImagesViewerState(
      {required this.mainImage, required final List<String> imagesNames})
      : _imagesNames = imagesNames;

  @override
  final Option<String> mainImage;
  final List<String> _imagesNames;
  @override
  List<String> get imagesNames {
    if (_imagesNames is EqualUnmodifiableListView) return _imagesNames;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_imagesNames);
  }

  @override
  String toString() {
    return 'ImagesViewerState(mainImage: $mainImage, imagesNames: $imagesNames)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ImagesViewerState &&
            (identical(other.mainImage, mainImage) ||
                other.mainImage == mainImage) &&
            const DeepCollectionEquality()
                .equals(other._imagesNames, _imagesNames));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mainImage,
      const DeepCollectionEquality().hash(_imagesNames));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ImagesViewerStateCopyWith<_$_ImagesViewerState> get copyWith =>
      __$$_ImagesViewerStateCopyWithImpl<_$_ImagesViewerState>(
          this, _$identity);
}

abstract class _ImagesViewerState implements ImagesViewerState {
  const factory _ImagesViewerState(
      {required final Option<String> mainImage,
      required final List<String> imagesNames}) = _$_ImagesViewerState;

  @override
  Option<String> get mainImage;
  @override
  List<String> get imagesNames;
  @override
  @JsonKey(ignore: true)
  _$$_ImagesViewerStateCopyWith<_$_ImagesViewerState> get copyWith =>
      throw _privateConstructorUsedError;
}

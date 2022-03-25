// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'rock_photo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RockPhotoTearOff {
  const _$RockPhotoTearOff();

  _RockPhoto call({required ui.Image image, required String imageName}) {
    return _RockPhoto(
      image: image,
      imageName: imageName,
    );
  }
}

/// @nodoc
const $RockPhoto = _$RockPhotoTearOff();

/// @nodoc
mixin _$RockPhoto {
  ui.Image get image => throw _privateConstructorUsedError;
  String get imageName => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RockPhotoCopyWith<RockPhoto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RockPhotoCopyWith<$Res> {
  factory $RockPhotoCopyWith(RockPhoto value, $Res Function(RockPhoto) then) =
      _$RockPhotoCopyWithImpl<$Res>;
  $Res call({ui.Image image, String imageName});
}

/// @nodoc
class _$RockPhotoCopyWithImpl<$Res> implements $RockPhotoCopyWith<$Res> {
  _$RockPhotoCopyWithImpl(this._value, this._then);

  final RockPhoto _value;
  // ignore: unused_field
  final $Res Function(RockPhoto) _then;

  @override
  $Res call({
    Object? image = freezed,
    Object? imageName = freezed,
  }) {
    return _then(_value.copyWith(
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as ui.Image,
      imageName: imageName == freezed
          ? _value.imageName
          : imageName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$RockPhotoCopyWith<$Res> implements $RockPhotoCopyWith<$Res> {
  factory _$RockPhotoCopyWith(
          _RockPhoto value, $Res Function(_RockPhoto) then) =
      __$RockPhotoCopyWithImpl<$Res>;
  @override
  $Res call({ui.Image image, String imageName});
}

/// @nodoc
class __$RockPhotoCopyWithImpl<$Res> extends _$RockPhotoCopyWithImpl<$Res>
    implements _$RockPhotoCopyWith<$Res> {
  __$RockPhotoCopyWithImpl(_RockPhoto _value, $Res Function(_RockPhoto) _then)
      : super(_value, (v) => _then(v as _RockPhoto));

  @override
  _RockPhoto get _value => super._value as _RockPhoto;

  @override
  $Res call({
    Object? image = freezed,
    Object? imageName = freezed,
  }) {
    return _then(_RockPhoto(
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as ui.Image,
      imageName: imageName == freezed
          ? _value.imageName
          : imageName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_RockPhoto implements _RockPhoto {
  const _$_RockPhoto({required this.image, required this.imageName});

  @override
  final ui.Image image;
  @override
  final String imageName;

  @override
  String toString() {
    return 'RockPhoto(image: $image, imageName: $imageName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RockPhoto &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality().equals(other.imageName, imageName));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(imageName));

  @JsonKey(ignore: true)
  @override
  _$RockPhotoCopyWith<_RockPhoto> get copyWith =>
      __$RockPhotoCopyWithImpl<_RockPhoto>(this, _$identity);
}

abstract class _RockPhoto implements RockPhoto {
  const factory _RockPhoto(
      {required ui.Image image, required String imageName}) = _$_RockPhoto;

  @override
  ui.Image get image;
  @override
  String get imageName;
  @override
  @JsonKey(ignore: true)
  _$RockPhotoCopyWith<_RockPhoto> get copyWith =>
      throw _privateConstructorUsedError;
}

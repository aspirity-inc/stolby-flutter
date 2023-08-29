// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rock_photo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
      _$RockPhotoCopyWithImpl<$Res, RockPhoto>;
  @useResult
  $Res call({ui.Image image, String imageName});
}

/// @nodoc
class _$RockPhotoCopyWithImpl<$Res, $Val extends RockPhoto>
    implements $RockPhotoCopyWith<$Res> {
  _$RockPhotoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
    Object? imageName = null,
  }) {
    return _then(_value.copyWith(
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as ui.Image,
      imageName: null == imageName
          ? _value.imageName
          : imageName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RockPhotoCopyWith<$Res> implements $RockPhotoCopyWith<$Res> {
  factory _$$_RockPhotoCopyWith(
          _$_RockPhoto value, $Res Function(_$_RockPhoto) then) =
      __$$_RockPhotoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ui.Image image, String imageName});
}

/// @nodoc
class __$$_RockPhotoCopyWithImpl<$Res>
    extends _$RockPhotoCopyWithImpl<$Res, _$_RockPhoto>
    implements _$$_RockPhotoCopyWith<$Res> {
  __$$_RockPhotoCopyWithImpl(
      _$_RockPhoto _value, $Res Function(_$_RockPhoto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
    Object? imageName = null,
  }) {
    return _then(_$_RockPhoto(
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as ui.Image,
      imageName: null == imageName
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
            other is _$_RockPhoto &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.imageName, imageName) ||
                other.imageName == imageName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, image, imageName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RockPhotoCopyWith<_$_RockPhoto> get copyWith =>
      __$$_RockPhotoCopyWithImpl<_$_RockPhoto>(this, _$identity);
}

abstract class _RockPhoto implements RockPhoto {
  const factory _RockPhoto(
      {required final ui.Image image,
      required final String imageName}) = _$_RockPhoto;

  @override
  ui.Image get image;
  @override
  String get imageName;
  @override
  @JsonKey(ignore: true)
  _$$_RockPhotoCopyWith<_$_RockPhoto> get copyWith =>
      throw _privateConstructorUsedError;
}

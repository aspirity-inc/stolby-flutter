// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DatabaseFailureTearOff {
  const _$DatabaseFailureTearOff();

  NotFound notFound() {
    return const NotFound();
  }
}

/// @nodoc
const $DatabaseFailure = _$DatabaseFailureTearOff();

/// @nodoc
mixin _$DatabaseFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notFound,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotFound value) notFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NotFound value)? notFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotFound value)? notFound,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DatabaseFailureCopyWith<$Res> {
  factory $DatabaseFailureCopyWith(
          DatabaseFailure value, $Res Function(DatabaseFailure) then) =
      _$DatabaseFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$DatabaseFailureCopyWithImpl<$Res>
    implements $DatabaseFailureCopyWith<$Res> {
  _$DatabaseFailureCopyWithImpl(this._value, this._then);

  final DatabaseFailure _value;
  // ignore: unused_field
  final $Res Function(DatabaseFailure) _then;
}

/// @nodoc
abstract class $NotFoundCopyWith<$Res> {
  factory $NotFoundCopyWith(NotFound value, $Res Function(NotFound) then) =
      _$NotFoundCopyWithImpl<$Res>;
}

/// @nodoc
class _$NotFoundCopyWithImpl<$Res> extends _$DatabaseFailureCopyWithImpl<$Res>
    implements $NotFoundCopyWith<$Res> {
  _$NotFoundCopyWithImpl(NotFound _value, $Res Function(NotFound) _then)
      : super(_value, (v) => _then(v as NotFound));

  @override
  NotFound get _value => super._value as NotFound;
}

/// @nodoc

class _$NotFound implements NotFound {
  const _$NotFound();

  @override
  String toString() {
    return 'DatabaseFailure.notFound()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is NotFound);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notFound,
  }) {
    return notFound();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notFound,
  }) {
    return notFound?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notFound,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotFound value) notFound,
  }) {
    return notFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NotFound value)? notFound,
  }) {
    return notFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotFound value)? notFound,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(this);
    }
    return orElse();
  }
}

abstract class NotFound implements DatabaseFailure {
  const factory NotFound() = _$NotFound;
}

/// @nodoc
class _$LocationFailureTearOff {
  const _$LocationFailureTearOff();

  NotGranted notGranted() {
    return const NotGranted();
  }

  Disabled disabled() {
    return const Disabled();
  }

  ServiceDisabled serviceDisabled() {
    return const ServiceDisabled();
  }
}

/// @nodoc
const $LocationFailure = _$LocationFailureTearOff();

/// @nodoc
mixin _$LocationFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notGranted,
    required TResult Function() disabled,
    required TResult Function() serviceDisabled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notGranted,
    TResult Function()? disabled,
    TResult Function()? serviceDisabled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notGranted,
    TResult Function()? disabled,
    TResult Function()? serviceDisabled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotGranted value) notGranted,
    required TResult Function(Disabled value) disabled,
    required TResult Function(ServiceDisabled value) serviceDisabled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NotGranted value)? notGranted,
    TResult Function(Disabled value)? disabled,
    TResult Function(ServiceDisabled value)? serviceDisabled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotGranted value)? notGranted,
    TResult Function(Disabled value)? disabled,
    TResult Function(ServiceDisabled value)? serviceDisabled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationFailureCopyWith<$Res> {
  factory $LocationFailureCopyWith(
          LocationFailure value, $Res Function(LocationFailure) then) =
      _$LocationFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$LocationFailureCopyWithImpl<$Res>
    implements $LocationFailureCopyWith<$Res> {
  _$LocationFailureCopyWithImpl(this._value, this._then);

  final LocationFailure _value;
  // ignore: unused_field
  final $Res Function(LocationFailure) _then;
}

/// @nodoc
abstract class $NotGrantedCopyWith<$Res> {
  factory $NotGrantedCopyWith(
          NotGranted value, $Res Function(NotGranted) then) =
      _$NotGrantedCopyWithImpl<$Res>;
}

/// @nodoc
class _$NotGrantedCopyWithImpl<$Res> extends _$LocationFailureCopyWithImpl<$Res>
    implements $NotGrantedCopyWith<$Res> {
  _$NotGrantedCopyWithImpl(NotGranted _value, $Res Function(NotGranted) _then)
      : super(_value, (v) => _then(v as NotGranted));

  @override
  NotGranted get _value => super._value as NotGranted;
}

/// @nodoc

class _$NotGranted implements NotGranted {
  const _$NotGranted();

  @override
  String toString() {
    return 'LocationFailure.notGranted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is NotGranted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notGranted,
    required TResult Function() disabled,
    required TResult Function() serviceDisabled,
  }) {
    return notGranted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notGranted,
    TResult Function()? disabled,
    TResult Function()? serviceDisabled,
  }) {
    return notGranted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notGranted,
    TResult Function()? disabled,
    TResult Function()? serviceDisabled,
    required TResult orElse(),
  }) {
    if (notGranted != null) {
      return notGranted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotGranted value) notGranted,
    required TResult Function(Disabled value) disabled,
    required TResult Function(ServiceDisabled value) serviceDisabled,
  }) {
    return notGranted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NotGranted value)? notGranted,
    TResult Function(Disabled value)? disabled,
    TResult Function(ServiceDisabled value)? serviceDisabled,
  }) {
    return notGranted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotGranted value)? notGranted,
    TResult Function(Disabled value)? disabled,
    TResult Function(ServiceDisabled value)? serviceDisabled,
    required TResult orElse(),
  }) {
    if (notGranted != null) {
      return notGranted(this);
    }
    return orElse();
  }
}

abstract class NotGranted implements LocationFailure {
  const factory NotGranted() = _$NotGranted;
}

/// @nodoc
abstract class $DisabledCopyWith<$Res> {
  factory $DisabledCopyWith(Disabled value, $Res Function(Disabled) then) =
      _$DisabledCopyWithImpl<$Res>;
}

/// @nodoc
class _$DisabledCopyWithImpl<$Res> extends _$LocationFailureCopyWithImpl<$Res>
    implements $DisabledCopyWith<$Res> {
  _$DisabledCopyWithImpl(Disabled _value, $Res Function(Disabled) _then)
      : super(_value, (v) => _then(v as Disabled));

  @override
  Disabled get _value => super._value as Disabled;
}

/// @nodoc

class _$Disabled implements Disabled {
  const _$Disabled();

  @override
  String toString() {
    return 'LocationFailure.disabled()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Disabled);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notGranted,
    required TResult Function() disabled,
    required TResult Function() serviceDisabled,
  }) {
    return disabled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notGranted,
    TResult Function()? disabled,
    TResult Function()? serviceDisabled,
  }) {
    return disabled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notGranted,
    TResult Function()? disabled,
    TResult Function()? serviceDisabled,
    required TResult orElse(),
  }) {
    if (disabled != null) {
      return disabled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotGranted value) notGranted,
    required TResult Function(Disabled value) disabled,
    required TResult Function(ServiceDisabled value) serviceDisabled,
  }) {
    return disabled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NotGranted value)? notGranted,
    TResult Function(Disabled value)? disabled,
    TResult Function(ServiceDisabled value)? serviceDisabled,
  }) {
    return disabled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotGranted value)? notGranted,
    TResult Function(Disabled value)? disabled,
    TResult Function(ServiceDisabled value)? serviceDisabled,
    required TResult orElse(),
  }) {
    if (disabled != null) {
      return disabled(this);
    }
    return orElse();
  }
}

abstract class Disabled implements LocationFailure {
  const factory Disabled() = _$Disabled;
}

/// @nodoc
abstract class $ServiceDisabledCopyWith<$Res> {
  factory $ServiceDisabledCopyWith(
          ServiceDisabled value, $Res Function(ServiceDisabled) then) =
      _$ServiceDisabledCopyWithImpl<$Res>;
}

/// @nodoc
class _$ServiceDisabledCopyWithImpl<$Res>
    extends _$LocationFailureCopyWithImpl<$Res>
    implements $ServiceDisabledCopyWith<$Res> {
  _$ServiceDisabledCopyWithImpl(
      ServiceDisabled _value, $Res Function(ServiceDisabled) _then)
      : super(_value, (v) => _then(v as ServiceDisabled));

  @override
  ServiceDisabled get _value => super._value as ServiceDisabled;
}

/// @nodoc

class _$ServiceDisabled implements ServiceDisabled {
  const _$ServiceDisabled();

  @override
  String toString() {
    return 'LocationFailure.serviceDisabled()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ServiceDisabled);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notGranted,
    required TResult Function() disabled,
    required TResult Function() serviceDisabled,
  }) {
    return serviceDisabled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notGranted,
    TResult Function()? disabled,
    TResult Function()? serviceDisabled,
  }) {
    return serviceDisabled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notGranted,
    TResult Function()? disabled,
    TResult Function()? serviceDisabled,
    required TResult orElse(),
  }) {
    if (serviceDisabled != null) {
      return serviceDisabled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotGranted value) notGranted,
    required TResult Function(Disabled value) disabled,
    required TResult Function(ServiceDisabled value) serviceDisabled,
  }) {
    return serviceDisabled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NotGranted value)? notGranted,
    TResult Function(Disabled value)? disabled,
    TResult Function(ServiceDisabled value)? serviceDisabled,
  }) {
    return serviceDisabled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotGranted value)? notGranted,
    TResult Function(Disabled value)? disabled,
    TResult Function(ServiceDisabled value)? serviceDisabled,
    required TResult orElse(),
  }) {
    if (serviceDisabled != null) {
      return serviceDisabled(this);
    }
    return orElse();
  }
}

abstract class ServiceDisabled implements LocationFailure {
  const factory ServiceDisabled() = _$ServiceDisabled;
}

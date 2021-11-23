import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
class DatabaseFailure with _$DatabaseFailure {
  const factory DatabaseFailure.notFound() = NotFound;
}

@freezed
class LocationFailure with _$LocationFailure {
  const factory LocationFailure.notGranted() = NotGranted;
  const factory LocationFailure.disabled() = Disabled;
  const factory LocationFailure.serviceDisabled() = ServiceDisabled;
}

@freezed
class LocationRepositoryFailure with _$LocationRepositoryFailure {
  const factory LocationRepositoryFailure.notGranted() = NotGranted;
  const factory LocationRepositoryFailure.disabled() = Disabled;
  const factory LocationRepositoryFailure.unexpected() = Unexpected;
}

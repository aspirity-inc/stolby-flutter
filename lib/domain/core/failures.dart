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

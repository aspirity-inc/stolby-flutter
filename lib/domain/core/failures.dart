import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
class DatabaseFailure with _$DatabaseFailure {
  const factory DatabaseFailure.notFound() = NotFound;
}

@freezed
class PermissionFailure with _$PermissionFailure {
  const factory PermissionFailure.denied() = Denied;
  const factory PermissionFailure.permanentlyDenied() = PermanentlyDenied;
  const factory PermissionFailure.notAsked() = NotAsked;
}

@freezed
class LocationFailure with _$LocationFailure {
  const factory LocationFailure.permissionDenied() = PermissionDenied;
  const factory LocationFailure.serviceDisabled() = ServiceDisabled;
}

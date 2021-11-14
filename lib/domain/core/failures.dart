import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
class DatabaseFailure with _$DatabaseFailure {
  const factory DatabaseFailure.notFound() = NotFound;
}

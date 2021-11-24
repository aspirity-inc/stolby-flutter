// Mocks generated by Mockito 5.0.16 from annotations
// in stolby_flutter/test/application/location/location_bloc_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i4;

import 'package:dartz/dartz.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;
import 'package:stolby_flutter/domain/core/failures.dart' as _i5;
import 'package:stolby_flutter/domain/feature/location/entities/user_location_entity.dart'
    as _i6;
import 'package:stolby_flutter/domain/feature/location/i_location_repository.dart'
    as _i3;

// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

class _FakeEither_0<L, R> extends _i1.Fake implements _i2.Either<L, R> {}

/// A class which mocks [ILocationRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockILocationRepository extends _i1.Mock
    implements _i3.ILocationRepository {
  MockILocationRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i2.Either<_i5.LocationFailure, _i2.Unit>>
      getLocationPermissions() =>
          (super.noSuchMethod(Invocation.method(#getLocationPermissions, []),
                  returnValue:
                      Future<_i2.Either<_i5.LocationFailure, _i2.Unit>>.value(
                          _FakeEither_0<_i5.LocationFailure, _i2.Unit>()))
              as _i4.Future<_i2.Either<_i5.LocationFailure, _i2.Unit>>);
  @override
  _i4.Stream<_i2.Either<_i5.LocationFailure, _i6.UserLocationEntity>>
      startWatchingLocation() =>
          (super.noSuchMethod(Invocation.method(#startWatchingLocation, []),
              returnValue: Stream<
                  _i2.Either<_i5.LocationFailure,
                      _i6.UserLocationEntity>>.empty()) as _i4
              .Stream<_i2.Either<_i5.LocationFailure, _i6.UserLocationEntity>>);
  @override
  String toString() => super.toString();
}

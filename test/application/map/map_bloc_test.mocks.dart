// Mocks generated by Mockito 5.0.16 from annotations
// in stolby_flutter/test/application/map/map_bloc_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i4;

import 'package:dartz/dartz.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;
import 'package:stolby_flutter/domain/core/failures.dart' as _i5;
import 'package:stolby_flutter/domain/feature/rocks_map/entities/rock_map_entity.dart'
    as _i6;
import 'package:stolby_flutter/domain/feature/rocks_map/i_map_repository.dart'
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

/// A class which mocks [IMapRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockIMapRepository extends _i1.Mock implements _i3.IMapRepository {
  MockIMapRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i2.Either<_i5.DatabaseFailure, List<_i6.RockMapEntity>>>
      getRocksCoordinatesList() => (super.noSuchMethod(
          Invocation.method(#getRocksCoordinatesList, []),
          returnValue:
              Future<_i2.Either<_i5.DatabaseFailure, List<_i6.RockMapEntity>>>.value(
                  _FakeEither_0<_i5.DatabaseFailure,
                      List<_i6.RockMapEntity>>())) as _i4
          .Future<_i2.Either<_i5.DatabaseFailure, List<_i6.RockMapEntity>>>);
  @override
  String toString() => super.toString();
}

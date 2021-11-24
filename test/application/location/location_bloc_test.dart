import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';
import 'package:stolby_flutter/application/location/location_bloc.dart';
import 'package:stolby_flutter/domain/core/failures.dart';
import 'package:stolby_flutter/domain/feature/location/i_location_repository.dart';

import 'location_bloc_test.mocks.dart';

@GenerateMocks([ILocationRepository])
void main() {
  late MockILocationRepository _repository;
  late LocationBloc _bloc;

  setUp(() {
    _repository = MockILocationRepository();
    _bloc = LocationBloc(_repository);
  });

  tearDown(() => _bloc.close());

  group("initial", () {
    test("Should emit correct initial state", () {
      final result = _bloc.state;
      expect(result, LocationState.initial());
    });
  });

  group("checkedPermission()", () {
    blocTest(
      "Should emit true if locationPermission is enable",
      build: () {
        when(_repository.getLocationPermissions())
            .thenAnswer((_) async => right(unit));

        return _bloc;
      },
      seed: () => LocationState.initial(),
      act: (LocationBloc bloc) =>
          bloc.add(const LocationEvent.checkedPermission()),
      expect: () => [
        LocationState.initial().copyWith(loading: true),
        LocationState.initial()
            .copyWith(hasPermission: true, permissionAsked: true),
      ],
    );

    blocTest(
      "Should emit LocationFailure.notGranted if permissions not granted",
      build: () {
        when(_repository.getLocationPermissions())
            .thenAnswer((_) async => left(const LocationFailure.notGranted()));

        return _bloc;
      },
      seed: () => LocationState.initial(),
      act: (LocationBloc bloc) =>
          bloc.add(const LocationEvent.checkedPermission()),
      expect: () => [
        LocationState.initial().copyWith(loading: true),
        LocationState.initial()
            .copyWith(hasPermission: false, permissionAsked: false),
      ],
    );

    blocTest(
      "Should emit LocationFailure.unexpected if unexpectedError happens",
      build: () {
        when(_repository.getLocationPermissions())
            .thenAnswer((_) async => left(const LocationFailure.unexpected()));

        return _bloc;
      },
      seed: () => LocationState.initial(),
      act: (LocationBloc bloc) =>
          bloc.add(const LocationEvent.checkedPermission()),
      expect: () => [
        LocationState.initial().copyWith(loading: true),
        LocationState.initial()
            .copyWith(hasPermission: false, permissionAsked: false),
      ],
    );
  });
  group("startWatchingLocation()", () {});
}

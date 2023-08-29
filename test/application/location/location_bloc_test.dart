import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:stolby_flutter/application/location/location_bloc.dart';
import 'package:stolby_flutter/domain/core/failures.dart';
import 'package:stolby_flutter/domain/feature/location/i_location_repository.dart';

import 'location_bloc_test.mocks.dart';

@GenerateMocks([ILocationRepository])
void main() {
  late MockILocationRepository repository;
  late LocationBloc bloc;

  setUp(() {
    repository = MockILocationRepository();
    bloc = LocationBloc(repository);
  });

  tearDown(() => bloc.close());

  group('initial', () {
    test('Should emit correct initial state', () {
      final result = bloc.state;
      expect(result, LocationState.initial());
    });
  });

  group('checkedPermission()', () {
    blocTest<LocationBloc, LocationState>(
      'Should emit true if locationPermission is enable',
      build: () {
        when(repository.getLocationPermissions()).thenAnswer((_) async => right(unit));

        return bloc;
      },
      seed: LocationState.initial,
      act: (bloc) => bloc.add(const LocationEvent.checkedPermission()),
      expect: () => [
        LocationState.initial().copyWith(hasPermission: true, permissionAsked: true),
      ],
    );

    blocTest<LocationBloc, LocationState>(
      'Should emit LocationFailure.notGranted if permissions not granted',
      build: () {
        when(repository.getLocationPermissions())
            .thenAnswer((_) async => left(const LocationFailure.notGranted()));

        return bloc;
      },
      seed: LocationState.initial,
      act: (bloc) => bloc.add(const LocationEvent.checkedPermission()),
      expect: () => [
        LocationState.initial().copyWith(
          hasPermission: false,
          permissionAsked: false,
          failureOption: some(const LocationFailure.notGranted()),
        ),
      ],
    );

    blocTest<LocationBloc, LocationState>(
      'Should emit LocationFailure.unexpected if unexpectedError happens',
      build: () {
        when(repository.getLocationPermissions())
            .thenAnswer((_) async => left(const LocationFailure.unexpected()));

        return bloc;
      },
      seed: LocationState.initial,
      act: (bloc) => bloc.add(const LocationEvent.checkedPermission()),
      expect: () => [
        LocationState.initial().copyWith(
          hasPermission: false,
          permissionAsked: false,
          failureOption: some(const LocationFailure.unexpected()),
        ),
      ],
    );
  });
  group('startWatchingLocation()', () {});
}

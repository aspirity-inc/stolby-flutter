import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:location/location.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:stolby_flutter/domain/core/failures.dart';
import 'package:stolby_flutter/infrastructure/features/location/location_repository.dart';
import 'package:stolby_flutter/infrastructure/services/local/location/location_service.dart';

import 'location_repository_test.mocks.dart';

@GenerateMocks([LocationService])
void main() {
  late MockLocationService _locationService;
  late LocationRepository _repository;

  setUp(() {
    _locationService = MockLocationService();
    _repository = LocationRepository(_locationService);
  });

  group("getLocationPermissions", () {
    test('Should return unit if permission granted', () async {
      //arrange
      when(_locationService.checkPermission()).thenAnswer(
        (_) async => PermissionStatus.granted,
      );
      //act
      final result = await _repository.getLocationPermissions();
      //assert
      expect(result, right(unit));
    });

    test('Should return unit if permission grantedLimited', () async {
      //arrange
      when(_locationService.checkPermission()).thenAnswer(
        (_) async => PermissionStatus.grantedLimited,
      );
      //act
      final result = await _repository.getLocationPermissions();
      //assert
      expect(result, right(unit));
    });

    test(
      'Should return LocationFailure if permission deniedForever ',
      () async {
        //arrange
        when(_locationService.checkPermission()).thenAnswer(
          (_) async => PermissionStatus.deniedForever,
        );
        //act
        final result = await _repository.getLocationPermissions();
        //assert
        expect(result, left(const LocationFailure.notGranted()));
      },
    );

    test(
      'Should return unit if permission denied initally and after request granted',
      () async {
        //arrange
        when(_locationService.checkPermission()).thenAnswer(
          (_) async => PermissionStatus.denied,
        );
        when(_locationService.requestLocationPermission())
            .thenAnswer((_) async => PermissionStatus.granted);
        //act
        final result = await _repository.getLocationPermissions();
        //assert
        expect(result, right(unit));
      },
    );
    test(
      'Should return unit if permission denied initally and after request grantedLimited',
      () async {
        //arrange
        when(_locationService.checkPermission()).thenAnswer(
          (_) async => PermissionStatus.denied,
        );
        when(_locationService.requestLocationPermission())
            .thenAnswer((_) async => PermissionStatus.grantedLimited);
        //act
        final result = await _repository.getLocationPermissions();
        //assert
        expect(result, right(unit));
      },
    );
    test(
      'Should return LocationFailure if permission denied initally and after request denied',
      () async {
        //arrange
        when(_locationService.checkPermission()).thenAnswer(
          (_) async => PermissionStatus.denied,
        );
        when(_locationService.requestLocationPermission())
            .thenAnswer((_) async => PermissionStatus.denied);
        //act
        final result = await _repository.getLocationPermissions();
        //assert
        expect(result, left(const LocationFailure.notGranted()));
      },
    );
    test(
      'Should return unit if permission denied initally and after request deniedForever',
      () async {
        //arrange
        when(_locationService.checkPermission()).thenAnswer(
          (_) async => PermissionStatus.denied,
        );
        when(_locationService.requestLocationPermission())
            .thenAnswer((_) async => PermissionStatus.deniedForever);
        //act
        final result = await _repository.getLocationPermissions();
        //assert
        expect(result, left(const LocationFailure.notGranted()));
      },
    );
  });
  group("startWatchingLocation", () {});
}

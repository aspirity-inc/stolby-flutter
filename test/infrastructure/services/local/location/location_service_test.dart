import 'package:dartz/dartz.dart';
import 'package:location/location.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:stolby_flutter/domain/core/failures.dart';
import 'package:stolby_flutter/infrastructure/services/local/location/location_service.dart';

import 'location_service_test.mocks.dart';

@GenerateMocks([Location])
void main() {
  late Location _location;
  late LocationService _locationService;

  setUp(() {
    _location = MockLocation();
    _locationService = LocationService(_location);
  });

  group('checkPermission()', () {
    test('Should return unit if permission granted', () async {
      //arrange
      when(_location.hasPermission()).thenAnswer(
        (_) async => PermissionStatus.granted,
      );
      //act
      final result = await _locationService.checkPermission();
      //assert
      expect(result, right(unit));
    });
    test('Should return unit if permission grantedLimited', () async {
      //arrange
      when(_location.hasPermission()).thenAnswer(
        (_) async => PermissionStatus.grantedLimited,
      );
      //act
      final result = await _locationService.checkPermission();
      //assert
      expect(result, right(unit));
    });

    test('Should emit PermissionFailure if permission denied ', () async {
      //arrange
      when(_location.hasPermission()).thenAnswer(
        (_) async => PermissionStatus.denied,
      );
      //act
      final result = await _locationService.checkPermission();
      //assert
      expect(result, left(const PermissionFailure.notAsked()));
    });

    test('Should return PermissionFailure if permission deniedForever',
        () async {
      //arrange
      when(_location.hasPermission()).thenAnswer(
        (_) async => PermissionStatus.deniedForever,
      );
      //act
      final result = await _locationService.checkPermission();
      //assert
      expect(result, left(const PermissionFailure.permanentlyDenied()));
    });
  });

  group('requestLocationPermission()', () {
    test('Should return unit if permission granted', () async {
      //arrange
      when(_location.requestPermission())
          .thenAnswer((_) async => PermissionStatus.granted);
      //act
      final result = await _locationService.requestLocationPermission();
      //assert
      expect(result, right(unit));
    });

    test('Should return unit if permission grantedLimited', () async {
      //arrange
      when(_location.requestPermission())
          .thenAnswer((_) async => PermissionStatus.grantedLimited);
      //act
      final result = await _locationService.requestLocationPermission();
      //assert
      expect(result, right(unit));
    });

    test('Should return PermissionFailure if permission denied ', () async {
      //arrange
      when(_location.requestPermission())
          .thenAnswer((_) async => PermissionStatus.denied);
      //act
      final result = await _locationService.requestLocationPermission();
      //assert
      expect(result, left(const PermissionFailure.denied()));
    });

    test(
      'Should return PermissionFailure if permission deniedForever',
      () async {
        //arrange
        when(_location.requestPermission())
            .thenAnswer((_) async => PermissionStatus.deniedForever);
        //act
        final result = await _locationService.requestLocationPermission();
        //assert
        expect(result, left(const PermissionFailure.permanentlyDenied()));
      },
    );
  });

  group('geolocationService()', () {
    test('Should return unit if service enabled', () async {
      //arrange
      when(_location.serviceEnabled()).thenAnswer((_) async => true);
      //act
      final result = await _locationService.geolocationService();
      //assert
      expect(result, right(unit));
    });

    test('Should return unit on service turned on', () async {
      //arrange
      when(_location.serviceEnabled()).thenAnswer((_) async => false);
      when(_location.requestService()).thenAnswer((_) async => true);
      //act
      final result = await _locationService.geolocationService();
      //assert
      expect(result, right(unit));
    });

    test('Should return ServiceFailure on service not turned on', () async {
      //arrange
      when(_location.serviceEnabled()).thenAnswer((_) async => false);
      when(_location.requestService()).thenAnswer((_) async => false);
      //act
      final result = await _locationService.geolocationService();
      //assert
      expect(result, left(const LocationFailure.serviceDisabled()));
    });

    /*test(
      'Should emit ServiceFailure if platform is IOS and service not enabled',
      () async {
        //arrange
        when(_location.serviceEnabled()).thenAnswer((_) async => false);
        //act
        final result = await _locationService.geolocationService();
        //assert
        expect(result, left(const LocationFailure.serviceDisabled()));
      },
    );*/

    /*test(
      'Should emit unit if platform is IOS and service is enabled',
      () async {
        //arrange
        when(_location.serviceEnabled()).thenAnswer((_) async => true);
        //act
        final result = await _locationService.geolocationService();
        //assert
        expect(result, right(unit));
      },
    );*/
  });
}

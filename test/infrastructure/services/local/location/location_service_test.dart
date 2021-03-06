import 'package:flutter_test/flutter_test.dart';
import 'package:location/location.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:stolby_flutter/infrastructure/services/local/location/location_service.dart';

import 'location_service_test.mocks.dart';

@GenerateMocks([Location])
void main() {
  late Location location;
  late LocationService locationService;

  setUp(() {
    location = MockLocation();
    locationService = LocationService(location);
  });

  group('checkPermission()', () {
    test('Should return PermissionStatus.granted', () async {
      //arrange
      when(location.hasPermission()).thenAnswer(
        (_) async => PermissionStatus.granted,
      );
      //act
      final result = await locationService.checkPermission();
      //assert
      expect(result, PermissionStatus.granted);
    });

    test('Should return PermissionStatus.grantedLimited', () async {
      //arrange
      when(location.hasPermission()).thenAnswer(
        (_) async => PermissionStatus.grantedLimited,
      );
      //act
      final result = await locationService.checkPermission();
      //assert
      expect(result, PermissionStatus.grantedLimited);
    });

    test('Should return PermissionStatus.denied ', () async {
      //arrange
      when(location.hasPermission()).thenAnswer(
        (_) async => PermissionStatus.denied,
      );
      //act
      final result = await locationService.checkPermission();
      //assert
      expect(result, PermissionStatus.denied);
    });

    test(
      'Should return PermissionStatus.deniedForever',
      () async {
        //arrange
        when(location.hasPermission()).thenAnswer(
          (_) async => PermissionStatus.deniedForever,
        );
        //act
        final result = await locationService.checkPermission();
        //assert
        expect(result, PermissionStatus.deniedForever);
      },
    );
  });

  group('requestLocationPermission()', () {
    test('Should return PermissionStatus.granted', () async {
      //arrange
      when(location.requestPermission())
          .thenAnswer((_) async => PermissionStatus.granted);
      //act
      final result = await locationService.requestLocationPermission();
      //assert
      expect(result, PermissionStatus.granted);
    });

    test('Should return PermissionStatus.grantedLimited', () async {
      //arrange
      when(location.requestPermission())
          .thenAnswer((_) async => PermissionStatus.grantedLimited);
      //act
      final result = await locationService.requestLocationPermission();
      //assert
      expect(result, PermissionStatus.grantedLimited);
    });

    test('Should return PermissionStatus.denied', () async {
      //arrange
      when(location.requestPermission())
          .thenAnswer((_) async => PermissionStatus.denied);
      //act
      final result = await locationService.requestLocationPermission();
      //assert
      expect(result, PermissionStatus.denied);
    });

    test(
      'Should return PermissionStatus.deniedForever',
      () async {
        //arrange
        when(location.requestPermission())
            .thenAnswer((_) async => PermissionStatus.deniedForever);
        //act
        final result = await locationService.requestLocationPermission();
        //assert
        expect(result, PermissionStatus.deniedForever);
      },
    );
  });

  group('geolocationService()', () {
    test('Should return true if service enabled', () async {
      //arrange
      when(location.serviceEnabled()).thenAnswer((_) async => true);
      //act
      final result = await locationService.geolocationService();
      //assert
      expect(result, true);
    });

    test('Should return true on service turned on', () async {
      //arrange
      when(location.serviceEnabled()).thenAnswer((_) async => false);
      when(location.requestService()).thenAnswer((_) async => true);
      //act
      final result = await locationService.geolocationService();
      //assert
      expect(result, true);
    });

    test('Should return false on service not turned on', () async {
      //arrange
      when(location.serviceEnabled()).thenAnswer((_) async => false);
      when(location.requestService()).thenAnswer((_) async => false);
      //act
      final result = await locationService.geolocationService();
      //assert
      expect(result, false);
    });

    /*test(
      'Should return false if platform is IOS and service not enabled',
      () async {
        //arrange
        when(_location.serviceEnabled()).thenAnswer((_) async => false);
        //act
        final result = await _locationService.geolocationService();
        //assert
        expect(result, false));
      },
    );*/

    /*test(
      'Should return true if platform is IOS and service is enabled',
      () async {
        //arrange
        when(_location.serviceEnabled()).thenAnswer((_) async => true);
        //act
        final result = await _locationService.geolocationService();
        //assert
        expect(result, true);
      },
    );*/
  });
}

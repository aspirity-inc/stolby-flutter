// Mocks generated by Mockito 5.0.16 from annotations
// in stolby_flutter/test/infrastructure/services/local/location/location_service_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i4;
import 'dart:ui' as _i5;

import 'package:location/location.dart' as _i3;
import 'package:location_platform_interface/location_platform_interface.dart'
    as _i2;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

class _FakeLocationData_0 extends _i1.Fake implements _i2.LocationData {}

/// A class which mocks [Location].
///
/// See the documentation for Mockito's code generation for more information.
class MockLocation extends _i1.Mock implements _i3.Location {
  MockLocation() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Stream<_i2.LocationData> get onLocationChanged =>
      (super.noSuchMethod(Invocation.getter(#onLocationChanged),
              returnValue: Stream<_i2.LocationData>.empty())
          as _i4.Stream<_i2.LocationData>);
  @override
  _i4.Future<bool> changeSettings(
          {_i2.LocationAccuracy? accuracy = _i2.LocationAccuracy.high,
          int? interval = 1000,
          double? distanceFilter = 0.0}) =>
      (super.noSuchMethod(
          Invocation.method(#changeSettings, [], {
            #accuracy: accuracy,
            #interval: interval,
            #distanceFilter: distanceFilter
          }),
          returnValue: Future<bool>.value(false)) as _i4.Future<bool>);
  @override
  _i4.Future<bool> isBackgroundModeEnabled() =>
      (super.noSuchMethod(Invocation.method(#isBackgroundModeEnabled, []),
          returnValue: Future<bool>.value(false)) as _i4.Future<bool>);
  @override
  _i4.Future<bool> enableBackgroundMode({bool? enable = true}) =>
      (super.noSuchMethod(
          Invocation.method(#enableBackgroundMode, [], {#enable: enable}),
          returnValue: Future<bool>.value(false)) as _i4.Future<bool>);
  @override
  _i4.Future<_i2.LocationData> getLocation() => (super.noSuchMethod(
          Invocation.method(#getLocation, []),
          returnValue: Future<_i2.LocationData>.value(_FakeLocationData_0()))
      as _i4.Future<_i2.LocationData>);
  @override
  _i4.Future<_i2.PermissionStatus> hasPermission() => (super.noSuchMethod(
          Invocation.method(#hasPermission, []),
          returnValue:
              Future<_i2.PermissionStatus>.value(_i2.PermissionStatus.granted))
      as _i4.Future<_i2.PermissionStatus>);
  @override
  _i4.Future<_i2.PermissionStatus> requestPermission() => (super.noSuchMethod(
          Invocation.method(#requestPermission, []),
          returnValue:
              Future<_i2.PermissionStatus>.value(_i2.PermissionStatus.granted))
      as _i4.Future<_i2.PermissionStatus>);
  @override
  _i4.Future<bool> serviceEnabled() =>
      (super.noSuchMethod(Invocation.method(#serviceEnabled, []),
          returnValue: Future<bool>.value(false)) as _i4.Future<bool>);
  @override
  _i4.Future<bool> requestService() =>
      (super.noSuchMethod(Invocation.method(#requestService, []),
          returnValue: Future<bool>.value(false)) as _i4.Future<bool>);
  @override
  _i4.Future<_i2.AndroidNotificationData?> changeNotificationOptions(
          {String? channelName,
          String? title,
          String? iconName,
          String? subtitle,
          String? description,
          _i5.Color? color,
          bool? onTapBringToFront}) =>
      (super.noSuchMethod(
              Invocation.method(#changeNotificationOptions, [], {
                #channelName: channelName,
                #title: title,
                #iconName: iconName,
                #subtitle: subtitle,
                #description: description,
                #color: color,
                #onTapBringToFront: onTapBringToFront
              }),
              returnValue: Future<_i2.AndroidNotificationData?>.value())
          as _i4.Future<_i2.AndroidNotificationData?>);
  @override
  String toString() => super.toString();
}

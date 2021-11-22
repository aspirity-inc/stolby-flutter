// Mocks generated by Mockito 5.0.16 from annotations
// in stolby_flutter/test/infrastructure/feature/settings/settings_repository_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i3;

import 'package:mockito/mockito.dart' as _i1;
import 'package:stolby_flutter/infrastructure/services/local/preferences/shared_preferences_service.dart'
    as _i2;

// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

/// A class which mocks [SharedPreferencesService].
///
/// See the documentation for Mockito's code generation for more information.
class MockSharedPreferencesService extends _i1.Mock
    implements _i2.SharedPreferencesService {
  MockSharedPreferencesService() {
    _i1.throwOnMissingStub(this);
  }

  @override
  bool getGeolocationEnabled({bool? defaultValue}) => (super.noSuchMethod(
      Invocation.method(
          #getGeolocationEnabled, [], {#defaultValue: defaultValue}),
      returnValue: false) as bool);
  @override
  _i3.Future<void> setGeolocationEnabled(bool? geolocationEnabled) =>
      (super.noSuchMethod(
          Invocation.method(#setGeolocationEnabled, [geolocationEnabled]),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i3.Future<void>);
  @override
  bool getReversedMap({bool? defaultValue}) => (super.noSuchMethod(
      Invocation.method(#getReversedMap, [], {#defaultValue: defaultValue}),
      returnValue: false) as bool);
  @override
  _i3.Future<void> setReversedMap(bool? reversedMap) =>
      (super.noSuchMethod(Invocation.method(#setReversedMap, [reversedMap]),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i3.Future<void>);
  @override
  bool getMapUserCentering({bool? defaultValue}) => (super.noSuchMethod(
      Invocation.method(
          #getMapUserCentering, [], {#defaultValue: defaultValue}),
      returnValue: false) as bool);
  @override
  _i3.Future<void> setMapUserCentering(bool? mapUserCentering) => (super
      .noSuchMethod(Invocation.method(#setMapUserCentering, [mapUserCentering]),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i3.Future<void>);
  @override
  bool getAutoThemeChange({bool? defaultValue}) => (super.noSuchMethod(
      Invocation.method(#getAutoThemeChange, [], {#defaultValue: defaultValue}),
      returnValue: false) as bool);
  @override
  _i3.Future<void> setAutoThemeChange(bool? autoThemeChange) => (super
      .noSuchMethod(Invocation.method(#setAutoThemeChange, [autoThemeChange]),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i3.Future<void>);
  @override
  bool getLightTheme({bool? defaultValue}) => (super.noSuchMethod(
      Invocation.method(#getLightTheme, [], {#defaultValue: defaultValue}),
      returnValue: false) as bool);
  @override
  _i3.Future<void> setLightTheme(bool? lightTheme) =>
      (super.noSuchMethod(Invocation.method(#setLightTheme, [lightTheme]),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i3.Future<void>);
  @override
  bool getOnboardingVisited() =>
      (super.noSuchMethod(Invocation.method(#getOnboardingVisited, []),
          returnValue: false) as bool);
  @override
  _i3.Future<void> setOnboardingVisited() =>
      (super.noSuchMethod(Invocation.method(#setOnboardingVisited, []),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i3.Future<void>);
  @override
  String toString() => super.toString();
}
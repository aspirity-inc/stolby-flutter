import 'package:injectable/injectable.dart';
import 'package:location/location.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class ServicesInjectionModule {
  @preResolve
  @lazySingleton
  Future<SharedPreferences> get sharedPreferences =>
      SharedPreferences.getInstance();
  @lazySingleton
  Location get location => Location();
}

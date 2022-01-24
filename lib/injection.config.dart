// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:location/location.dart' as _i8;
import 'package:shared_preferences/shared_preferences.dart' as _i13;

import 'application/detailed_rock_bloc/detailed_rock_bloc.dart' as _i15;
import 'application/location/location_bloc.dart' as _i20;
import 'application/map/map_bloc.dart' as _i10;
import 'application/map/map_control/map_control_bloc.dart' as _i11;
import 'application/rock_list/rock_list_bloc.dart' as _i12;
import 'application/settings/settings_bloc.dart' as _i21;
import 'domain/feature/location/i_location_repository.dart' as _i16;
import 'domain/feature/rocks_list/i_rock_list_repository.dart' as _i6;
import 'domain/feature/rocks_map/i_map_repository.dart' as _i4;
import 'domain/feature/settings/i_settings_repository.dart' as _i18;
import 'infrastructure/core/services_injectable_module.dart' as _i22;
import 'infrastructure/features/location/location_repository.dart' as _i17;
import 'infrastructure/features/rocks_list/rock_list_repository.dart' as _i7;
import 'infrastructure/features/rocks_map/map_repository.dart' as _i5;
import 'infrastructure/features/settings/settings_repository.dart' as _i19;
import 'infrastructure/services/local/database/app_database.dart' as _i3;
import 'infrastructure/services/local/location/location_service.dart' as _i9;
import 'infrastructure/services/local/preferences/shared_preferences_service.dart'
    as _i14; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final servicesInjectionModule = _$ServicesInjectionModule();
  gh.lazySingleton<_i3.AppDatabase>(() => _i3.AppDatabase.open());
  gh.lazySingleton<_i4.IMapRepository>(
      () => _i5.MapRepository(get<_i3.AppDatabase>()));
  gh.lazySingleton<_i6.IRockListRepository>(
      () => _i7.RockListRepository(get<_i3.AppDatabase>()));
  gh.lazySingleton<_i8.Location>(() => servicesInjectionModule.location);
  gh.lazySingleton<_i9.LocationService>(
      () => _i9.LocationService(get<_i8.Location>()));
  gh.factory<_i10.MapBloc>(() => _i10.MapBloc(get<_i4.IMapRepository>()));
  gh.factory<_i11.MapControlBloc>(() => _i11.MapControlBloc());
  gh.factory<_i12.RockListBloc>(
      () => _i12.RockListBloc(get<_i6.IRockListRepository>()));
  await gh.lazySingletonAsync<_i13.SharedPreferences>(
      () => servicesInjectionModule.sharedPreferences,
      preResolve: true);
  gh.lazySingleton<_i14.SharedPreferencesService>(
      () => _i14.SharedPreferencesService(get<_i13.SharedPreferences>()));
  gh.factory<_i15.DetailedRockBloc>(
      () => _i15.DetailedRockBloc(get<_i6.IRockListRepository>()));
  gh.lazySingleton<_i16.ILocationRepository>(
      () => _i17.LocationRepository(get<_i9.LocationService>()));
  gh.lazySingleton<_i18.ISettingsRepository>(
      () => _i19.SettingsRepository(get<_i14.SharedPreferencesService>()));
  gh.factory<_i20.LocationBloc>(
      () => _i20.LocationBloc(get<_i16.ILocationRepository>()));
  gh.factory<_i21.SettingsBloc>(
      () => _i21.SettingsBloc(get<_i18.ISettingsRepository>()));
  return get;
}

class _$ServicesInjectionModule extends _i22.ServicesInjectionModule {}

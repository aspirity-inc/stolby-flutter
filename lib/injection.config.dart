// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i10;

import 'application/detailed_rock_bloc/detailed_rock_bloc.dart' as _i12;
import 'application/map/map_bloc.dart' as _i8;
import 'application/rock_list/rock_list_bloc.dart' as _i9;
import 'domain/feature/rocks_list/i_rock_list_repository.dart' as _i6;
import 'domain/feature/rocks_map/i_map_repository.dart' as _i4;
import 'domain/feature/settings/i_settings_repository.dart' as _i13;
import 'infrastructure/core/services_injectable_module.dart' as _i15;
import 'infrastructure/features/rocks_list/rock_list_repository.dart' as _i7;
import 'infrastructure/features/rocks_map/map_repository.dart' as _i5;
import 'infrastructure/features/settings/settings_repository.dart' as _i14;
import 'infrastructure/services/local/database/app_database.dart' as _i3;
import 'infrastructure/services/local/preferences/shared_preferences_service.dart'
    as _i11; // ignore_for_file: unnecessary_lambdas

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
  gh.factory<_i8.MapBloc>(() => _i8.MapBloc(get<_i4.IMapRepository>()));
  gh.factory<_i9.RockListBloc>(
      () => _i9.RockListBloc(get<_i6.IRockListRepository>()));
  await gh.lazySingletonAsync<_i10.SharedPreferences>(
      () => servicesInjectionModule.sharedPreferences,
      preResolve: true);
  gh.lazySingleton<_i11.SharedPreferencesService>(
      () => _i11.SharedPreferencesService(get<_i10.SharedPreferences>()));
  gh.factory<_i12.DetailedRockBloc>(
      () => _i12.DetailedRockBloc(get<_i6.IRockListRepository>()));
  gh.lazySingleton<_i13.ISettingsRepository>(
      () => _i14.SettingsRepository(get<_i11.SharedPreferencesService>()));
  return get;
}

class _$ServicesInjectionModule extends _i15.ServicesInjectionModule {}

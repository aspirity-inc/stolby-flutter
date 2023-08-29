// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:location/location.dart' as _i7;
import 'package:shared_preferences/shared_preferences.dart' as _i12;
import 'package:stolby_flutter/application/detailed_rock_bloc/detailed_rock_bloc.dart'
    as _i14;
import 'package:stolby_flutter/application/images_viewer/images_viewer_bloc.dart'
    as _i21;
import 'package:stolby_flutter/application/location/location_bloc.dart' as _i22;
import 'package:stolby_flutter/application/map/map_bloc.dart' as _i9;
import 'package:stolby_flutter/application/map/map_control/map_control_bloc.dart'
    as _i10;
import 'package:stolby_flutter/application/rock_list/rock_list_bloc.dart'
    as _i11;
import 'package:stolby_flutter/application/settings/settings_bloc.dart' as _i23;
import 'package:stolby_flutter/domain/feature/images/i_images_repository.dart'
    as _i15;
import 'package:stolby_flutter/domain/feature/location/i_location_repository.dart'
    as _i17;
import 'package:stolby_flutter/domain/feature/rocks_list/i_rock_list_repository.dart'
    as _i4;
import 'package:stolby_flutter/domain/feature/settings/i_settings_repository.dart'
    as _i19;
import 'package:stolby_flutter/infrastructure/core/services_injectable_module.dart'
    as _i24;
import 'package:stolby_flutter/infrastructure/features/images/images_repository.dart'
    as _i16;
import 'package:stolby_flutter/infrastructure/features/location/location_repository.dart'
    as _i18;
import 'package:stolby_flutter/infrastructure/features/rocks_list/rock_list_repository.dart'
    as _i5;
import 'package:stolby_flutter/infrastructure/features/settings/settings_repository.dart'
    as _i20;
import 'package:stolby_flutter/infrastructure/services/local/database/app_database.dart'
    as _i3;
import 'package:stolby_flutter/infrastructure/services/local/images/images_service.dart'
    as _i6;
import 'package:stolby_flutter/infrastructure/services/local/location/location_service.dart'
    as _i8;
import 'package:stolby_flutter/infrastructure/services/local/preferences/shared_preferences_service.dart'
    as _i13;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final servicesInjectionModule = _$ServicesInjectionModule();
    gh.lazySingleton<_i3.AppDatabase>(() => _i3.AppDatabase.open());
    gh.lazySingleton<_i4.IRockListRepository>(
        () => _i5.RockListRepository(gh<_i3.AppDatabase>()));
    gh.lazySingleton<_i6.ImagesService>(() => _i6.ImagesService());
    gh.lazySingleton<_i7.Location>(() => servicesInjectionModule.location);
    gh.lazySingleton<_i8.LocationService>(
        () => _i8.LocationService(gh<_i7.Location>()));
    gh.factory<_i9.MapBloc>(() => _i9.MapBloc(gh<_i4.IRockListRepository>()));
    gh.factory<_i10.MapControlBloc>(() => _i10.MapControlBloc());
    gh.factory<_i11.RockListBloc>(
        () => _i11.RockListBloc(gh<_i4.IRockListRepository>()));
    await gh.lazySingletonAsync<_i12.SharedPreferences>(
      () => servicesInjectionModule.sharedPreferences,
      preResolve: true,
    );
    gh.lazySingleton<_i13.SharedPreferencesService>(
        () => _i13.SharedPreferencesService(gh<_i12.SharedPreferences>()));
    gh.factory<_i14.DetailedRockBloc>(
        () => _i14.DetailedRockBloc(gh<_i4.IRockListRepository>()));
    gh.lazySingleton<_i15.IImagesRepository>(
        () => _i16.ImagesRepository(gh<_i6.ImagesService>()));
    gh.lazySingleton<_i17.ILocationRepository>(
        () => _i18.LocationRepository(gh<_i8.LocationService>()));
    gh.lazySingleton<_i19.ISettingsRepository>(
        () => _i20.SettingsRepository(gh<_i13.SharedPreferencesService>()));
    gh.factory<_i21.ImagesViewerBloc>(
        () => _i21.ImagesViewerBloc(gh<_i15.IImagesRepository>()));
    gh.factory<_i22.LocationBloc>(
        () => _i22.LocationBloc(gh<_i17.ILocationRepository>()));
    gh.factory<_i23.SettingsBloc>(
        () => _i23.SettingsBloc(gh<_i19.ISettingsRepository>()));
    return this;
  }
}

class _$ServicesInjectionModule extends _i24.ServicesInjectionModule {}

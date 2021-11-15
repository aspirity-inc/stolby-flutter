// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/map/map_bloc.dart' as _i8;
import 'application/rock_list/rock_list_bloc.dart' as _i9;
import 'domain/feature/rocks_list/i_rock_list_repository.dart' as _i6;
import 'domain/feature/rocks_map/i_map_repository.dart' as _i4;
import 'infrastructure/features/rocks_list/rock_list_repository.dart' as _i7;
import 'infrastructure/features/rocks_map/map_repository.dart' as _i5;
import 'infrastructure/services/local/database/app_database.dart'
    as _i3; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.AppDatabase>(() => _i3.AppDatabase.open());
  gh.lazySingleton<_i4.IMapRepository>(
      () => _i5.MapRepository(get<_i3.AppDatabase>()));
  gh.lazySingleton<_i6.IRockListRepository>(
      () => _i7.RockListRepository(get<_i3.AppDatabase>()));
  gh.factory<_i8.MapBloc>(() => _i8.MapBloc());
  gh.factory<_i9.RockListBloc>(
      () => _i9.RockListBloc(get<_i6.IRockListRepository>()));
  return get;
}

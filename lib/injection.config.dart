// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/detailed_rock_bloc/detailed_rock_bloc.dart' as _i4;
import 'application/rock_list/rock_list_bloc.dart' as _i9;
import 'domain/feature/rocks_list/i_rock_list_repository.dart' as _i7;
import 'domain/feature/rocks_map/i_map_repository.dart' as _i5;
import 'infrastructure/features/rocks_list/rock_list_repository.dart' as _i8;
import 'infrastructure/features/rocks_map/map_repository.dart' as _i6;
import 'infrastructure/services/local/database/app_database.dart'
    as _i3; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.AppDatabase>(() => _i3.AppDatabase.open());
  gh.factory<_i4.DetailedRockBloc>(() => _i4.DetailedRockBloc());
  gh.lazySingleton<_i5.IMapRepository>(
      () => _i6.MapRepository(get<_i3.AppDatabase>()));
  gh.lazySingleton<_i7.IRockListRepository>(
      () => _i8.RockListRepository(get<_i3.AppDatabase>()));
  gh.factory<_i9.RockListBloc>(
      () => _i9.RockListBloc(get<_i7.IRockListRepository>()));
  return get;
}

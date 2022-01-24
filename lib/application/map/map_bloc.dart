import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:stolby_flutter/domain/feature/rocks_map/entities/rock_map_entity.dart';
import 'package:stolby_flutter/domain/feature/rocks_map/i_map_repository.dart';

part 'map_bloc.freezed.dart';
part 'map_event.dart';
part 'map_state.dart';

@injectable
class MapBloc extends Bloc<MapEvent, MapState> {
  final IMapRepository _mapRepository;

  MapBloc(this._mapRepository) : super(MapState.initial()) {
    on<MapEvent>((event, emit) async {
      await event.map(
        initialized: (e) async {
          emit(
            state.copyWith(loading: true),
          );
          final rocksOrError = await _mapRepository.getRocksCoordinatesList();

          rocksOrError.fold(
            (f) => emit(
              state.copyWith(loading: false),
            ),
            (r) => emit(
              state.copyWith(
                loading: false,
                rocks: r,
              ),
            ),
          );
        },
        zoomChanged: (e) async {
          double newZoom = e.zoom;
          newZoom = newZoom > 18 ? 18 : newZoom;
          newZoom = newZoom < 9 ? 9 : newZoom;
          emit(
            state.copyWith(zoom: newZoom),
          );
        },
        angleChanged: (e) async => emit(
          state.copyWith(angle: e.angle),
        ),
      );
    });
  }
}

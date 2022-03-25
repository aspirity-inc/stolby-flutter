import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:stolby_flutter/domain/feature/rocks_list/entities/rock_entity.dart';
part 'map_control_event.dart';
part 'map_control_bloc.freezed.dart';
part 'map_control_state.dart';

@injectable
class MapControlBloc extends Bloc<MapControlEvent, MapControlState> {
  MapControlBloc() : super(MapControlState.initial()) {
    on<MapControlEvent>(
      (event, emit) async {
        await event.map(
          rockMarkerPut: (e) async => emit(
            state.copyWith(
              setMarkerRock: some(e.rock),
            ),
          ),
          rockMarkerRemoved: (e) async => emit(
            state.copyWith(setMarkerRock: none()),
          ),
          rockClicked: (e) async => emit(
            state.copyWith(
              clickedRock: some(e.rock),
            ),
          ),
          clickedRockRemoved: (e) async => emit(
            state.copyWith(clickedRock: none()),
          ),
          handleMarkerSelection: (e) async {
            state.setMarkerRock.fold(
              () => add(
                _RockMarkerPut(e.rock),
              ),
              (a) => a.id == e.rock.id
                  ? add(
                      const _RockMarkerRemoved(),
                    )
                  : add(
                      _RockMarkerPut(e.rock),
                    ),
            );
          },
        );
      },
    );
  }
}

import 'dart:async';
import 'dart:ui' as ui;

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image/image.dart' as img;
import 'package:injectable/injectable.dart';
import 'package:latlong2/latlong.dart';
import 'package:rxdart/rxdart.dart';
import 'package:stolby_flutter/domain/feature/rocks_list/entities/rock_entity.dart';
import 'package:stolby_flutter/domain/feature/rocks_list/entities/rock_photo.dart';
import 'package:stolby_flutter/domain/feature/rocks_list/i_rock_list_repository.dart';

part 'rock_list_bloc.freezed.dart';
part 'rock_list_event.dart';
part 'rock_list_state.dart';

@injectable
class RockListBloc extends Bloc<RockListEvent, RockListState> {
  final IRockListRepository _rockListRepository;

  RockListBloc(this._rockListRepository) : super(RockListState.initial()) {
    on<_Initialized>(
      (_, emit) async => _initialized(emit),
      transformer: _sequential(),
    );
    on<_SearchStringChanged>(
      (event, emit) async => _searchStringChanged(event, emit),
      transformer: _restartable(),
    );
    on<_Sorted>(
      (_, emit) async => _sorted(emit),
      transformer: _sequential(),
    );
    on<_Filtered>(
      (_, emit) async => _filtered(emit),
      transformer: _sequential(),
    );
    on<_LocationChanged>(
      (event, emit) async => _locationChanged(event, emit),
      transformer: _sequential(
        debounceTime: 300,
      ),
    );
    on<_SearchLineCleared>(
      (_, emit) async => _searchLineCleared(emit),
      transformer: _sequential(),
    );
  }

  FutureOr<void> _initialized(Emitter<RockListState> emit) async {
    emit(state.copyWith(loading: true));
    final rocksOrError = await _rockListRepository.getRocksList();
    if (rocksOrError.isRight()) {
      final rocks = rocksOrError.getOrElse(() => []);
      final photos = await Future.wait(
        rocks.map(
          (e) => _loadImage(
            picName: e.picName,
          ),
        ),
      );
      emit(
        state.copyWith(
          loading: false,
          rocksToShow: rocks,
          allRocks: rocks,
          rockPhotos: photos
              .where(
                (element) => element != null,
              )
              .map((e) => e!)
              .toList(),
        ),
      );
    } else {
      emit(state.copyWith(loading: false));
    }
  }

  FutureOr<void> _searchStringChanged(
    _SearchStringChanged event,
    Emitter<RockListState> emit,
  ) async {
    if (event.searchString.length >= 3) {
      add(const RockListEvent.filtered());
    }
    if (event.searchString == '') {
      add(const RockListEvent.searchLineCleared());
    }
    emit(state.copyWith(searchString: event.searchString));
  }

  FutureOr<void> _sorted(
    Emitter<RockListState> emit,
  ) async {
    state.userLocation.fold(
      () => null,
      (r) => emit(
        state.copyWith(
          rocksToShow: _sortRocksList(state.rocksToShow, r),
        ),
      ),
    );
  }

  FutureOr<void> _filtered(
    Emitter<RockListState> emit,
  ) async {
    if (state.searchString.length >= 3) {
      emit(
        state.copyWith(
          rocksToShow: _filterRocksList(state.allRocks, state.searchString),
        ),
      );
    }
  }

  FutureOr<void> _locationChanged(
    _LocationChanged event,
    Emitter<RockListState> emit,
  ) async {
    _sortListByLocation(some(event.location));
    emit(
      state.copyWith(userLocation: some(event.location)),
    );
  }

  FutureOr<void> _searchLineCleared(
    Emitter<RockListState> emit,
  ) async {
    _sortListByLocation(state.userLocation);
    emit(state.copyWith(rocksToShow: state.allRocks, searchString: ''));
  }

  Future<RockPhoto?> _loadImage({required String picName}) async {
    final imageFromBundle = await rootBundle.load('assets/images/$picName.jpg');
    final lst = Uint8List.view(imageFromBundle.buffer);
    final imageI = img.decodeImage(lst.toList());
    if (imageI != null) {
      final resized = img.copyResize(imageI, height: 200);
      final resizedBytes = img.encodePng(resized);
      final codec = await ui.instantiateImageCodec(
        Uint8List.fromList(resizedBytes),
      );
      final frame = await codec.getNextFrame();
      final image = frame.image;

      return RockPhoto(
        image: image,
        imageName: picName,
      );
    }

    return null;
  }

  List<RockEntity> _filterRocksList(
    List<RockEntity> list,
    String filter,
  ) =>
      list
          .where(
            (element) => element.localizedName.toLowerCase().contains(filter.toLowerCase()),
          )
          .toList();

  void _sortListByLocation(Option<LatLng> location) {
    location.fold(
      () => null,
      (a) => add(
        const RockListEvent.sorted(),
      ),
    );
  }

  List<RockEntity> _sortRocksList(
    List<RockEntity> list,
    LatLng latLng,
  ) {
    const distance = Distance();

    var rocks = List<RockEntity>.of(list)
      ..sort(
        (a, b) => distance
            .distance(
              LatLng(a.latitude, a.longitude),
              latLng,
            )
            .compareTo(
              distance.distance(
                LatLng(b.latitude, b.longitude),
                latLng,
              ),
            ),
      );

    return rocks;
  }

  EventTransformer<Event> _restartable<Event>() =>
      (events, mapper) => events.switchMap(mapper).debounceTime(
            const Duration(
              milliseconds: 300,
            ),
          );

  EventTransformer<Event> _sequential<Event>({int? debounceTime}) =>
      (events, mapper) => events.asyncExpand(mapper).debounceTime(
            Duration(
              milliseconds: debounceTime ?? 0,
            ),
          );
}

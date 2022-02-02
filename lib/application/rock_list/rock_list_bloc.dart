import 'dart:async';
import 'dart:ui' as ui;

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:drift/drift.dart' hide JsonKey;
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image/image.dart' as img;
import 'package:injectable/injectable.dart';
import 'package:latlong2/latlong.dart';
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
    on<RockListEvent>(
      (event, emit) async {
        await event.map(
          initialized: (e) => _initialized(emit),
          searchStringChanged: (e) async {
            _searchStringChanged(e.searchString);
            emit(state.copyWith(searchString: e.searchString));
          },
          sorted: (e) {
            state.userLocation.fold(
              () => null,
              (r) => emit(state.copyWith(
                rocksToShow: _sortRocksList(state.rocksToShow, r),
              )),
            );
          },
          filtered: (e) async {
            state.searchString.length >= 3
                ? emit(state.copyWith(
                    rocksToShow:
                        _filterRocksList(state.allRocks, state.searchString),
                  ))
                : null;
          },
          locationChanged: (e) async {
            _sortListByLocation(some(e.location));
            emit(
              state.copyWith(userLocation: some(e.location)),
            );
          },
          searchLineCleared: (e) async {
            _sortListByLocation(state.userLocation);
            emit(state.copyWith(rocksToShow: state.allRocks, searchString: ''));
          },
        );
      },
    );
  }

  List<RockEntity> _sortRocksList(
    List<RockEntity> list,
    LatLng latLng,
  ) {
    const distance = Distance();

    return list.sorted(
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
  }

  FutureOr<void> _initialized(Emitter<RockListState> emit) async {
    emit(state.copyWith(loading: true));
    final rocksOrError = await _rockListRepository.getRocksList();
    await rocksOrError.fold(
      (f) async => emit(state.copyWith(
        loading: false,
      )),
      (r) async {
        final photos = await Future.wait(
          r.map(
            (e) => _loadImage(
              picName: e.picName,
            ),
          ),
        );
        emit(
          state.copyWith(
            loading: false,
            rocksToShow: r,
            allRocks: r,
            rockPhotos: photos,
          ),
        );
      },
    );
  }

  Future<RockPhoto> _loadImage({required String picName}) async {
    final imageFromBundle = await rootBundle.load('assets/images/$picName.jpg');
    final Uint8List lst = Uint8List.view(imageFromBundle.buffer);
    final img.Image? imageI = img.decodeImage(lst.toList());
    final img.Image resized = img.copyResize(imageI!, height: 200);
    final List<int> resizedBytes = img.encodePng(resized);
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

  List<RockEntity> _filterRocksList(
    List<RockEntity> list,
    String filter,
  ) =>
      list
          .where(
            (element) => element.localizedName
                .toLowerCase()
                .contains(filter.toLowerCase()),
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

  void _searchStringChanged(String str) {
    str.length >= 3 ? add(const RockListEvent.filtered()) : null;
    str == '' ? add(const RockListEvent.searchLineCleared()) : null;
  }
}

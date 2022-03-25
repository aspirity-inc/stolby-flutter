part of 'rock_list_bloc.dart';

@freezed
class RockListState with _$RockListState {
  const factory RockListState({
    required List<RockEntity> allRocks,
    required List<RockEntity> rocksToShow,
    required List<RockPhoto> rockPhotos,
    required String searchString,
    required Option<LatLng> userLocation,
    required bool loading,
  }) = _RockListState;
  factory RockListState.initial() => RockListState(
        allRocks: [],
        rocksToShow: [],
        rockPhotos: [],
        searchString: '',
        userLocation: none(),
        loading: false,
      );
}

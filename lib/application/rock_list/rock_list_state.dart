part of 'rock_list_bloc.dart';

@freezed
class RockListState with _$RockListState {
  const factory RockListState({
    required List<RockListItemEntity> allRocks,
    required List<RockListItemEntity> rocksToShow,
    required String searchString,
    required Option<LatLng> userLocation,
    required bool loading,
  }) = _RockListState;
  factory RockListState.initial() => RockListState(
        allRocks: [],
        rocksToShow: [],
        searchString: '',
        userLocation: none(),
        loading: false,
      );
}

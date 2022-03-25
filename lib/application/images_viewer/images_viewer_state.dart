part of 'images_viewer_bloc.dart';

@freezed
abstract class ImagesViewerState with _$ImagesViewerState {
  const factory ImagesViewerState({
    required Option<String> mainImage,
    required List<String> imagesNames,
  }) = _ImagesViewerState;

  factory ImagesViewerState.initial() => ImagesViewerState(
        mainImage: none(),
        imagesNames: [],
      );
}

part of 'images_viewer_bloc.dart';

@freezed
class ImagesViewerEvent with _$ImagesViewerEvent {
  const factory ImagesViewerEvent.initialized({required String pic_name}) =
      _Initialized;
}

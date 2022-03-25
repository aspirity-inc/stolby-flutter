import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:stolby_flutter/domain/feature/images/i_images_repository.dart';

part 'images_viewer_bloc.freezed.dart';
part 'images_viewer_event.dart';
part 'images_viewer_state.dart';

@injectable
class ImagesViewerBloc extends Bloc<ImagesViewerEvent, ImagesViewerState> {
  final IImagesRepository _repository;

  ImagesViewerBloc(this._repository) : super(ImagesViewerState.initial()) {
    on<ImagesViewerEvent>((event, emit) async {
      await event.map(
        initialized: (e) => _initialized(e, emit),
      );
    });
  }

  FutureOr<void> _initialized(
    _Initialized e,
    Emitter<ImagesViewerState> emit,
  ) async {
    final images = await _repository.getImagesByPicName(picName: e.picName);
    emit(
      state.copyWith(
        mainImage: some(e.picName),
        imagesNames: images,
      ),
    );
  }
}

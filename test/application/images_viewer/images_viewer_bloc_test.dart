import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:stolby_flutter/application/images_viewer/images_viewer_bloc.dart';
import 'package:stolby_flutter/domain/feature/images/i_images_repository.dart';

import 'images_viewer_bloc_test.mocks.dart';

@GenerateMocks([IImagesRepository])
void main() {
  late MockIImagesRepository _repository;
  late ImagesViewerBloc _bloc;

  setUp(() {
    _repository = MockIImagesRepository();
    _bloc = ImagesViewerBloc(_repository);
  });

  tearDown(() => _bloc.close());

  const tImageName = 'pic_test';
  const tImageName2 = 'pic_test_2';

  const tList = [
    tImageName,
    tImageName2,
  ];

  group(
    'initialized()',
    () {
      blocTest(
        'Should emit state with images and main image',
        build: () {
          when(
            _repository.getImagesByPicName(
              picName: anyNamed('picName'),
            ),
          ).thenAnswer((_) async => tList);
          return _bloc;
        },
        seed: () => ImagesViewerState.initial(),
        act: (ImagesViewerBloc bloc) =>
            bloc.add(const ImagesViewerEvent.initialized(pic_name: tImageName)),
        verify: (_) {
          verify(_repository.getImagesByPicName(picName: tImageName));
        },
        expect: () => [
          ImagesViewerState.initial().copyWith(
            mainImage: some(tImageName),
            imagesNames: tList,
          ),
        ],
      );

      blocTest(
        'Should emit state with mainImage and mainImage in image names if where is only one image',
        build: () {
          when(
            _repository.getImagesByPicName(
              picName: anyNamed('picName'),
            ),
          ).thenAnswer((_) async => [tImageName]);
          return _bloc;
        },
        seed: () => ImagesViewerState.initial(),
        act: (ImagesViewerBloc bloc) =>
            bloc.add(const ImagesViewerEvent.initialized(pic_name: tImageName)),
        verify: (_) {
          verify(_repository.getImagesByPicName(picName: tImageName));
        },
        expect: () => [
          ImagesViewerState.initial().copyWith(
            mainImage: some(tImageName),
            imagesNames: [tImageName],
          ),
        ],
      );
    },
  );
}

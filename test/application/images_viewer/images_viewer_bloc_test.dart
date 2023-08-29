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
  late MockIImagesRepository repository;
  late ImagesViewerBloc bloc;

  setUp(() {
    repository = MockIImagesRepository();
    bloc = ImagesViewerBloc(repository);
  });

  tearDown(() => bloc.close());

  const tImageName = 'pic_test';
  const tImageName2 = 'pic_test_2';

  const tList = [
    tImageName,
    tImageName2,
  ];

  group(
    'initialized()',
    () {
      blocTest<ImagesViewerBloc, ImagesViewerState>(
        'Should emit state with images and main image',
        build: () {
          when(
            repository.getImagesByPicName(
              picName: anyNamed('picName'),
            ),
          ).thenAnswer((_) async => tList);
          return bloc;
        },
        seed: ImagesViewerState.initial,
        act: (bloc) => bloc.add(const ImagesViewerEvent.initialized(picName: tImageName)),
        verify: (_) {
          verify(repository.getImagesByPicName(picName: tImageName));
        },
        expect: () => [
          ImagesViewerState.initial().copyWith(
            mainImage: some(tImageName),
            imagesNames: tList,
          ),
        ],
      );

      blocTest<ImagesViewerBloc, ImagesViewerState>(
        'Should emit state with mainImage and mainImage in image names '
        'where is only one image',
        build: () {
          when(
            repository.getImagesByPicName(
              picName: anyNamed('picName'),
            ),
          ).thenAnswer((_) async => [tImageName]);
          return bloc;
        },
        seed: ImagesViewerState.initial,
        act: (bloc) => bloc.add(const ImagesViewerEvent.initialized(picName: tImageName)),
        verify: (_) {
          verify(repository.getImagesByPicName(picName: tImageName));
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

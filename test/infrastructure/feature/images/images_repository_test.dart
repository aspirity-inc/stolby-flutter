import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:stolby_flutter/infrastructure/features/images/images_repository.dart';
import 'package:stolby_flutter/infrastructure/services/local/images/images_service.dart';

import 'images_repository_test.mocks.dart';

@GenerateMocks([ImagesService])
void main() {
  late ImagesService service;
  late ImagesRepository repository;

  setUp(() {
    service = MockImagesService();
    repository = ImagesRepository(service);
  });
  const tImageName = 'assets/images/pic_test.jpg';
  const tImageName2 = 'assets/images/pic_test_2.jpg';
  const tImageName3 = 'assets/images/pic_abc.jpg';

  const tCroppedImageName = 'pic_test';
  const tCroppedImageName2 = 'pic_test_2';

  const tList = [
    tImageName,
    tImageName2,
    tImageName3,
  ];

  group('getLocationPermissions', () {
    test(
        'When pic name passed in repository it should return all images '
        'that contains pic name', () async {
      //arrange
      when(service.getAllImages()).thenAnswer(
        (_) async => tList,
      );
      //act
      final result =
          await repository.getImagesByPicName(picName: tCroppedImageName);
      //assert
      expect(
        result,
        [tCroppedImageName, tCroppedImageName2],
      );
    });

    test(
        'When pic name passed in service and when there is only one image '
        'it should return it', () async {
      //arrange
      when(service.getAllImages()).thenAnswer(
        (_) async => [tImageName, tImageName3],
      );
      //act
      final result = await repository.getImagesByPicName(picName: tImageName);
      //assert
      expect(
        result,
        [tCroppedImageName],
      );
    });
  });
}

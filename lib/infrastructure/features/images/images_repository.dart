import 'package:injectable/injectable.dart';
import 'package:stolby_flutter/domain/feature/images/i_images_repository.dart';
import 'package:stolby_flutter/infrastructure/services/local/images/images_service.dart';

@LazySingleton(as: IImagesRepository)
class ImagesRepository implements IImagesRepository {
  final ImagesService _service;

  ImagesRepository(this._service);

  @override
  Future<List<String>> getImagesByPicName({required String picName}) async {
    final imageNames = await _service.getAllImages();
    final filteredImages =
        imageNames.where((element) => element.contains(picName)).toList();

    final picNames = filteredImages
        .map((e) => e.split('/images/')[1])
        .map((e) => e.split('.').first)
        .toList();

    return picNames;
  }
}

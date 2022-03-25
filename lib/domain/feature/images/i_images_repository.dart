abstract class IImagesRepository {
  Future<List<String>> getImagesByPicName({required String picName});
}

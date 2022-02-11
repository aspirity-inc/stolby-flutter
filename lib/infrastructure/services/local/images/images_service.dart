import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class ImagesService {
  Future<List<String>> getAllImages() async {
    final manifestContent = await rootBundle.loadString('AssetManifest.json');
    final Map<String, dynamic> assetsJson = json.decode(manifestContent);

    final assetsPaths = assetsJson.keys
        .where(
          (e) => e.contains('/images/'),
        )
        .toList();

    return assetsPaths;
  }
}

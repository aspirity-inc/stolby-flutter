import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class ImagesService {
  Future<List<String>> getAllImages() async {
    final manifestContent = await rootBundle.loadString('AssetManifest.json');
    final assetsJson = json.decode(manifestContent) as Map<String, dynamic>;

    final assetsPaths = assetsJson.keys
        .where(
          (e) => e.contains('/images/'),
        )
        .toList();

    return assetsPaths;
  }
}

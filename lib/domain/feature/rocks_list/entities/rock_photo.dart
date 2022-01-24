import 'dart:ui' as ui;

import 'package:freezed_annotation/freezed_annotation.dart';

part 'rock_photo.freezed.dart';

@freezed
class RockPhoto with _$RockPhoto {
  const factory RockPhoto({
    required ui.Image image,
    required String imageName,
  }) = _RockPhoto;
}

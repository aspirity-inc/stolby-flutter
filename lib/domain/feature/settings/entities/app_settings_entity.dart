import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_settings_entity.freezed.dart';

@freezed
class AppSettingsEntity with _$AppSettingsEntity {
  const factory AppSettingsEntity({
    required bool geolocationEnabled,
    required bool reversedMap,
    required bool mapUserCentering,
    required bool autoThemeChange,
    required bool lightTheme,
  }) = _AppSettingsEntity;
}

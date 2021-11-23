import 'package:flutter_test/flutter_test.dart';
import 'package:location/location.dart';
import 'package:stolby_flutter/infrastructure/services/local/location/dtos/user_location_dto.dart';

void main() {
  group(
    "fromLocationData()",
    () {
      test(
        "Should return correct dto",
        () {
          //arrange
          Map<String, dynamic> dataMap = <String, dynamic>{};
          dataMap["latitude"] = 56.0098;
          dataMap["longitude"] = 92.8143;
          dataMap["heading"] = 90.0;
          final initial = LocationData.fromMap(dataMap);
          const expected = UserLocationDto(
            latitude: 56.0098,
            longitude: 92.8143,
            heading: 90.0,
          );
          //act
          final result = UserLocationDto.fromLocationData(initial);
          //assert
          expect(result, expected);
        },
      );
    },
  );

  group("toDomain()", () {
    test("Should return correct entity", () {
      //arrange
      const UserLocationDto initial = UserLocationDto(
        latitude: 56.0098,
        longitude: 92.8143,
        heading: 90.0,
      );
      const UserLocationEntity expected = UserLocationEntity(
        latitude: 56.0098,
        longitude: 92.8143,
        heading: 90.0,
      );
      //act
      final result = initial.toDomain();
      //assert
      expect(result, expected);
    });
  });
}

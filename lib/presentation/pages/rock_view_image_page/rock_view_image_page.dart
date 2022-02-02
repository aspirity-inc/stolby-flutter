import 'package:flutter/material.dart';
import 'package:stolby_flutter/presentation/widgets/detailed_rock_appbar.dart';

class RockViewImagePage extends StatelessWidget {
  final String picturePath;

  const RockViewImagePage({
    Key? key,
    required this.picturePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DetailedRockAppbar(
        localizedName: null,
      ),
      body: Center(
        child: InteractiveViewer(
          clipBehavior: Clip.none,
          child: Image.asset(
            "assets/images/" + picturePath + ".jpg",
          ),
        ),
      ),
    );
  }
}

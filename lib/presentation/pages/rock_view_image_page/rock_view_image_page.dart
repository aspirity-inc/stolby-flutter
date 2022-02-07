import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stolby_flutter/injection.dart';
import 'package:stolby_flutter/application/images_viewer/images_viewer_bloc.dart';
import 'package:stolby_flutter/presentation/pages/rock_view_image_page/widgets/rock_view_image_content.dart';

class RockViewImagePage extends StatelessWidget {
  final String picturePath;

  const RockViewImagePage({
    Key? key,
    required this.picturePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<ImagesViewerBloc>()
        ..add(
          ImagesViewerEvent.initialized(pic_name: picturePath),
        ),
      child: const RockViewImageContent(),
    );
  }
}

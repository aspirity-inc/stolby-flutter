import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stolby_flutter/application/detailed_rock_bloc/detailed_rock_bloc.dart';
import 'package:stolby_flutter/injection.dart';
import 'package:stolby_flutter/presentation/pages/detailed_rock_page/widgets/detailed_rock_page_content.dart';

class DetailedRockPage extends StatelessWidget {
  final int rockId;

  const DetailedRockPage({
    required this.rockId,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => getIt<DetailedRockBloc>()
          ..add(
            DetailedRockEvent.initialized(id: rockId),
          ),
        child: const DetailedRockPageContent(),
      );
}

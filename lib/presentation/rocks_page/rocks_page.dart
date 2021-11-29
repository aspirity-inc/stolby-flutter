import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stolby_flutter/application/rock_list/rock_list_bloc.dart';
import 'package:stolby_flutter/injection.dart';
import 'package:stolby_flutter/presentation/rocks_page/widgets/rocks_page_content.dart';

class RocksPage extends StatelessWidget {
  const RocksPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<RockListBloc>()
        ..add(
          const RockListEvent.initialized(),
        ),
      child: const RocksPageContent(),
    );
  }
}

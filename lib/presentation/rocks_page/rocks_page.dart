import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stolby_flutter/application/rock_list/rock_list_bloc.dart';
import 'package:stolby_flutter/injection.dart';

class RocksPage extends StatelessWidget {
  const RocksPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<RockListBloc>()
        ..add(
          const RockListEvent.initialized(),
        ),
      child: Scaffold(
        backgroundColor: Colors.lightGreen,
        body: Center(
          child: Container(
            width: 100,
            height: 100,
            color: Colors.red,
            child: const Text('Rocks was not implemented'),
            // TODO: implement rocks page
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stolby_flutter/application/detailed_rock_bloc/detailed_rock_bloc.dart';
import 'package:stolby_flutter/injection.dart';

class DetailedRockPage extends StatelessWidget {
  final int rockId;

  const DetailedRockPage({
    Key? key,
    required this.rockId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<DetailedRockBloc>()
        ..add(
          DetailedRockEvent.initialized(id: rockId),
        ),
      child: Scaffold(
        body: Center(
          child: Container(
            width: 100,
            height: 100,
            color: Colors.blue,
            child: const Text('Detailed Rock was not implemented'),
            // TODO: implement map page
          ),
        ),
      ),
    );
  }
}

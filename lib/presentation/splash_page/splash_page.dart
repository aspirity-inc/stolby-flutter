import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:stolby_flutter/presentation/routing/router.gr.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    context.router.replace(const MainRoute());

    return const Scaffold();
  }
}

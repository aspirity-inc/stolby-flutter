import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:stolby_flutter/presentation/main_page/widgets/main_page_navigation_bar.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          const AutoRouter(),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 64,
              color: const Color(0xFF009688),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: MainPageNavigationBar(),
          ),
        ],
      ),
    );
  }
}

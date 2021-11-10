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
          const SafeArea(
            child: Padding(
              padding: EdgeInsets.only(bottom: 64.0),
              child: AutoRouter(),
            ),
          ),
          Positioned(
            left: 0,
            bottom: 0,
            right: 0,
            child: Container(
              color: const Color(0xFF009688),
              child: const SafeArea(
                top: false,
                child: SizedBox(
                  height: 64,
                ),
              ),
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

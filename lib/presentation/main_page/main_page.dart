import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:stolby_flutter/presentation/main_page/widgets/main_page_navigation_bar.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Material(
        color: Color(0xFF009688),
        child: SafeArea(
          child: Stack(
            fit: StackFit.expand,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 64.0),
                child: const AutoRouter(),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: MainPageNavigationBar(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingBottomBar extends StatelessWidget {
  final int currentIndex;
  final int length;
  final PageController controller;
  final VoidCallback onLeftPressed;
  final VoidCallback onRightPressed;

  const OnboardingBottomBar({
    Key? key,
    required this.currentIndex,
    required this.length,
    required this.controller,
    required this.onLeftPressed,
    required this.onRightPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final selectedColor = Theme.of(context).colorScheme.primary;
    final unselectedColor = Theme.of(context).cardColor;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        currentIndex == 0
            ? const SizedBox(
                width: 50,
              )
            : SizedBox(
                width: 50,
                child: IconButton(
                  onPressed: onLeftPressed,
                  icon: Icon(
                    Icons.arrow_back_ios_rounded,
                    color: selectedColor,
                  ),
                ),
              ),
        SmoothPageIndicator(
          controller: controller,
          count: 3,
          effect: SlideEffect(
            spacing: 8,
            radius: 4.0,
            dotWidth: 8,
            dotHeight: 8,
            dotColor: unselectedColor,
            activeDotColor: selectedColor,
          ),
        ),
        SizedBox(
          width: 50,
          child: IconButton(
            onPressed: onRightPressed,
            icon: Icon(
              currentIndex == 2 ? Icons.close : Icons.arrow_forward_ios,
              color: selectedColor,
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

class OnboardingPageWidget extends StatelessWidget {
  final String assetName;
  final String title;
  final String description;

  const OnboardingPageWidget({
    required this.assetName,
    required this.title,
    required this.description,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(assetName),
            const SizedBox(
              height: 16,
            ),
            Center(
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: Theme.of(context).colorScheme.primary,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Center(
              child: Text(
                description,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 64,
            ),
          ],
        ),
      );
}

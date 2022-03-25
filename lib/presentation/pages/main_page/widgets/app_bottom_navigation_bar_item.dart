import 'package:flutter/material.dart';
import 'package:stolby_flutter/presentation/pages/main_page/widgets/curved_container_paint.dart';

class AppBottomNavigationBarItem extends StatelessWidget {
  final IconData icon;
  final bool selected;

  const AppBottomNavigationBarItem({
    required this.selected,
    required this.icon,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme.secondaryContainer;

    return SizedBox(
      height: 80,
      child: AnimatedContainer(
        margin: selected
            ? EdgeInsets.zero
            : const EdgeInsets.only(
                top: 48,
              ),
        height: selected ? 64 : 24,
        width: 128,
        duration: const Duration(milliseconds: 300),
        child: Stack(
          children: [
            Center(
              child: AnimatedContainer(
                height: selected ? 64 : 32,
                width: 128,
                duration: const Duration(milliseconds: 300),
                child: CustomPaint(
                  painter: CurvedContainerPaint(
                    color: color,
                  ),
                ),
              ),
            ),
            Center(
              child: AnimatedContainer(
                height: selected ? 48 : 0,
                width: selected ? 48 : 0,
                decoration: const BoxDecoration(
                  color: Colors.white24,
                  shape: BoxShape.circle,
                ),
                duration: const Duration(milliseconds: 300),
              ),
            ),
            Center(
              child: AnimatedContainer(
                height: selected ? 32 : 0,
                width: selected ? 32 : 0,
                decoration: const BoxDecoration(
                  color: Colors.white24,
                  shape: BoxShape.circle,
                ),
                duration: const Duration(milliseconds: 300),
              ),
            ),
            Center(
              child: Icon(
                icon,
                color: Colors.white,
                size: 24,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

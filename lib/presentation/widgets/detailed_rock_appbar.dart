import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:stolby_flutter/presentation/core/themes/app_colors.dart';

class DetailedRockAppbar extends StatelessWidget
    implements PreferredSizeWidget {
  final String? difficulty;

  const DetailedRockAppbar({
    Key? key,
    required this.difficulty,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        onPressed: () => context.router.pop(),
        icon: Icon(
          Icons.arrow_back_sharp,
          size: 24,
          color: Theme.of(context).colorScheme.onBackground,
        ),
      ),
      backgroundColor: Colors.transparent,
      elevation: 0,
      actions: [
        difficulty != null
            ? Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 8.0,
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 24.0,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  color: AppColors.primary,
                ),
                child: Center(
                  child: Text(
                    difficulty!.toUpperCase(),
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                ),
              )
            : const SizedBox(),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56);
}

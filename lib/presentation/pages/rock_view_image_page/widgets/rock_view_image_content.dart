import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:stolby_flutter/application/images_viewer/images_viewer_bloc.dart';
import 'package:stolby_flutter/presentation/widgets/detailed_rock_appbar.dart';

class RockViewImageContent extends StatefulWidget {
  const RockViewImageContent({Key? key}) : super(key: key);

  @override
  State<RockViewImageContent> createState() => _RockViewImageContentState();
}

class _RockViewImageContentState extends State<RockViewImageContent> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final controller = PageController();

    return BlocBuilder<ImagesViewerBloc, ImagesViewerState>(
      builder: (context, state) => state.imagesNames.isEmpty
          ? const SizedBox()
          : Scaffold(
              appBar: const DetailedRockAppbar(
                localizedName: null,
              ),
              body: Stack(
                children: [
                  PageView(
                    controller: controller,
                    onPageChanged: (page) => setState(
                      () => currentIndex = page,
                    ),
                    children: [
                      ...state.imagesNames.map(
                        (e) => InteractiveViewer(
                          clipBehavior: Clip.none,
                          child: Image.asset(
                            'assets/images/$e.jpg',
                          ),
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    left: 16,
                    right: 16,
                    bottom: 8,
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 50,
                          child: IconButton(
                            onPressed: () => _handleBackPressed(controller),
                            icon: Icon(
                              Icons.arrow_back_ios_rounded,
                              color: theme.colorScheme.primary,
                            ),
                          ),
                        ),
                        SmoothPageIndicator(
                          controller: controller,
                          count: state.imagesNames.length,
                          effect: ExpandingDotsEffect(
                            spacing: 8,
                            radius: 4,
                            dotWidth: 16,
                            dotHeight: 8,
                            activeDotColor: theme.colorScheme.primary,
                            dotColor: theme.cardColor,
                          ),
                        ),
                        SizedBox(
                          width: 50,
                          child: IconButton(
                            onPressed: () => _handleForwardPressed(
                              controller,
                              state,
                            ),
                            icon: Icon(
                              Icons.arrow_forward_ios,
                              color: theme.colorScheme.primary,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
    );
  }

  void _handleBackPressed(PageController controller) {
    if (currentIndex != 0) {
      setState(() => currentIndex--);
      controller.animateToPage(
        currentIndex,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  void _handleForwardPressed(
    PageController controller,
    ImagesViewerState state,
  ) {
    if (currentIndex != state.imagesNames.length) {
      setState(() => currentIndex++);
      controller.animateToPage(
        currentIndex,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }
}

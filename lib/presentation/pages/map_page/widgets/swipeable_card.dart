import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stolby_flutter/application/map/map_control/map_control_bloc.dart';

class SwipeableCard extends StatefulWidget {
  final Widget child;
  final int id;

  const SwipeableCard({
    required this.child,
    required this.id,
    Key? key,
  }) : super(key: key);

  @override
  _SwipeableCardState createState() => _SwipeableCardState();
}

class _SwipeableCardState extends State<SwipeableCard>
    with TickerProviderStateMixin {
  final height = 264;

  late AnimationController _swipeDownController;
  late Animation<double> _swipeDownAnimation;

  double _startPointY = 0;

  @override
  void initState() {
    _swipeDownController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    )..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          context.read<MapControlBloc>().add(
                const MapControlEvent.clickedRockRemoved(),
              );
        }
      });
    _swipeDownAnimation = CurvedAnimation(
      parent: _swipeDownController,
      curve: Curves.easeInOutBack,
    );
    super.initState();
  }

  @override
  void dispose() {
    _swipeDownController.dispose();
    super.dispose();
  }

  @override
  void didUpdateWidget(covariant SwipeableCard oldWidget) {
    super.didUpdateWidget(oldWidget);
    _swipeDownController
      ..forward()
      ..reverse();
  }

  @override
  Widget build(BuildContext context) => Dismissible(
        key: Key('${widget.id}'),
        onDismissed: (_) => context.read<MapControlBloc>().add(
              const MapControlEvent.clickedRockRemoved(),
            ),
        child: GestureDetector(
          onVerticalDragStart: _handleDragDownStart,
          onVerticalDragUpdate: _handleDragDownUpdate,
          onVerticalDragEnd: _handleDragDownEnd,
          child: AnimatedBuilder(
            builder: (context, child) {
              if (child == null) {
                return const SizedBox();
              }

              return Transform.translate(
                offset: Offset(
                  0,
                  _swipeDownAnimation.value * height,
                ),
                child: child,
              );
            },
            animation: _swipeDownAnimation,
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).scaffoldBackgroundColor,
                borderRadius: const BorderRadius.all(Radius.circular(16)),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 12,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              margin: const EdgeInsets.all(16),
              padding: const EdgeInsets.all(16),
              child: Stack(
                children: [
                  widget.child,
                  Positioned(
                    right: 0,
                    child: GestureDetector(
                      child: const Icon(Icons.cancel, color: Color(0xFFCDCDCD)),
                      onTap: () => _swipeDownController.forward(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );

  void _handleDragDownStart(DragStartDetails details) {
    setState(() {
      _startPointY = details.localPosition.dy;
    });
  }

  void _handleDragDownUpdate(DragUpdateDetails details) {
    _swipeDownController.value =
        (details.localPosition.dy - _startPointY) / height;
  }

  void _handleDragDownEnd(DragEndDetails details) {
    if (details.velocity.pixelsPerSecond.dy > 200) {
      final visualVelocity = details.velocity.pixelsPerSecond.dy / height;
      _swipeDownController.fling(velocity: visualVelocity);
    } else if (_swipeDownController.value >= 0.7) {
      _swipeDownController.forward();
    } else {
      _swipeDownController.reverse();
    }
  }
}

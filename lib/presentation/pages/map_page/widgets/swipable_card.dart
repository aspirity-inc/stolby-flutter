import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stolby_flutter/application/map/map_control/map_control_bloc.dart';

class SwipableCard extends StatefulWidget {
  final Widget child;
  final int id;

  const SwipableCard({
    Key? key,
    required this.child,
    required this.id,
  }) : super(key: key);

  @override
  _SwipableCardState createState() => _SwipableCardState();
}

class _SwipableCardState extends State<SwipableCard>
    with TickerProviderStateMixin {
  late AnimationController _swipeDownController;

  double _startPointY = 0;

  final height = 216 + 48;

  @override
  void initState() {
    _swipeDownController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 350),
    )..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          context.read<MapControlBloc>().add(
                const MapControlEvent.clickedRockRemoved(),
              );
        }
      });
    super.initState();
  }

  @override
  void dispose() {
    _swipeDownController.dispose();
    super.dispose();
  }

  @override
  void didUpdateWidget(covariant SwipableCard oldWidget) {
    super.didUpdateWidget(oldWidget);
    _swipeDownController.forward();
    _swipeDownController.reverse();
  }

  void _onDragDownStart(DragStartDetails details) {
    setState(() {
      _startPointY = details.localPosition.dy;
    });
  }

  void _onDragDownUpdate(DragUpdateDetails details) {
    _swipeDownController.value =
        (details.localPosition.dy - _startPointY) / height;
  }

  void _onDragDownEnd(DragEndDetails details) {
    if (details.velocity.pixelsPerSecond.dy > 200) {
      double visualVelocity = details.velocity.pixelsPerSecond.dy / height;
      _swipeDownController.fling(velocity: visualVelocity);
    } else if (_swipeDownController.value >= 0.7) {
      _swipeDownController.forward();
    } else {
      _swipeDownController.reverse();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: Key('${widget.id}'),
      onDismissed: (_) {
        context.read<MapControlBloc>().add(
              const MapControlEvent.clickedRockRemoved(),
            );
      },
      child: GestureDetector(
        onVerticalDragStart: _onDragDownStart,
        onVerticalDragUpdate: _onDragDownUpdate,
        onVerticalDragEnd: _onDragDownEnd,
        child: AnimatedBuilder(
          builder: (BuildContext context, Widget? child) {
            if (child == null) return const SizedBox();

            return Transform.translate(
              offset: Offset(
                0,
                _swipeDownController.value * height,
              ),
              child: child,
            );
          },
          animation: _swipeDownController,
          child: Container(
            decoration: BoxDecoration(
              color: Theme.of(context).scaffoldBackgroundColor,
              borderRadius: BorderRadius.circular(16),
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
            child: widget.child,
          ),
        ),
      ),
    );
  }
}

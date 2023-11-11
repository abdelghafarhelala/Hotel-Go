import 'package:flutter/material.dart';
import 'package:hotelsco_task/featurs/check_in/presentation/components/hotel_search_title_shape_painter.dart';

class HotlSearchTitleShape extends StatelessWidget {
  final double width;
  final double height;
  final Color color;
  final Widget child;
  const HotlSearchTitleShape(
      {super.key,
      required this.width,
      required this.height,
      required this.color,
      required this.child});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: CustomPaint(
        painter: HotlSearchTitleShapePainter(color),
        child: child,
      ),
    );
  }
}

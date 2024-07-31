import 'package:flutter/material.dart';
import 'dart:math' as math;

class HexagonWidget extends StatelessWidget {
  final double size;
  final Color color;
  final double borderRadius;

  const HexagonWidget({
    super.key,
    required this.size,
    required this.color,
    required this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(size, size),
      painter: HexagonPainter(color, borderRadius),
    );
  }
}

class HexagonPainter extends CustomPainter {
  final Color color;
  final double borderRadius;

  HexagonPainter(this.color, this.borderRadius);

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = color;
    double radius = size.width / 2;
    double angle = math.pi / 3;

    Path path = Path();

    for (int i = 0; i < 6; i++) {
      double x = radius + (radius - borderRadius) * math.cos(angle * i);
      double y = radius + (radius - borderRadius) * math.sin(angle * i);
      Offset point = Offset(x, y);

      double nextX =
          radius + (radius - borderRadius) * math.cos(angle * (i + 1));
      double nextY =
          radius + (radius - borderRadius) * math.sin(angle * (i + 1));
      Offset nextPoint = Offset(nextX, nextY);

      if (i == 0) {
        path.moveTo(point.dx, point.dy);
      }

      path.arcToPoint(
        nextPoint,
        radius: Radius.circular(borderRadius),
        largeArc: false,
        clockwise: true,
      );
    }

    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

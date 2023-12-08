import 'package:flutter/material.dart';

import '../../theme/app_colors_constants.dart';

class CircleGradient extends StatelessWidget {
  const CircleGradient({
    required this.center,
    super.key,
  });

  final Offset center;

  @override
  Widget build(BuildContext context) => CustomPaint(
        painter: _CirclePainter(center: center),
      );
}

class _CirclePainter extends CustomPainter {
  _CirclePainter({
    required this.center,
    super.repaint,
  });

  final Offset center;

  @override
  void paint(Canvas canvas, Size size) {
    const radius = 180.0;

    final Paint paint = Paint()
      ..color = AppColorsConstants.blue
      ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 200);

    canvas.drawCircle(center, radius, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}

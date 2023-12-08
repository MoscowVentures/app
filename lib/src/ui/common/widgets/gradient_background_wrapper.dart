import 'package:flutter/material.dart';

import '../../auth/widgets/circle_gradient.dart';

class GradientBackgroundWrapper extends StatelessWidget {
  const GradientBackgroundWrapper({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Stack(
      children: [
        CircleGradient(
          center: Offset(width + 100, height * 2 / 3),
        ),
        child,
      ],
    );
  }
}

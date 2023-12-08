import 'package:flutter/material.dart';

import '../../auth/widgets/circle_gradient.dart';

class CircleGradientBackground extends StatelessWidget {
  const CircleGradientBackground({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return SizedBox(
      width: width,
      height: height,
      child: CircleGradient(
        center: Offset(width, height * 1 / 3),
      ),
    );
  }
}

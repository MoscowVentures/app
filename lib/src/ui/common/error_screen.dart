import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../data/auth/error_args.dart';
import '../../utils/app_assets.dart';
import '../../utils/extensions.dart';
import '../auth/widgets/circle_gradient.dart';
import 'widgets/app_button.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    final args = ModalRoute.of(context)?.settings.arguments as ErrorArgs?;

    return Scaffold(
      backgroundColor: context.colors.mainPrimary,
      body: Stack(
        children: [
          CircleGradient(
            center: Offset(-100, height / 2),
          ),
          CircleGradient(
            center: Offset(width + 100, height * 2 / 3),
          ),
          Align(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    context.strings.errorTitle,
                    style: context.text.titleLarge,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    context.strings.errorSubitle,
                    style: context.text.bodyLarge,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 64),
                  SvgPicture.asset(
                    AppAssets.fox,
                    width: 196,
                    height: 372,
                  ),
                  const SizedBox(height: 40),
                  AppButton.filled(
                    title: context.strings.retry,
                    onTap: () => args?.onRetry.call(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

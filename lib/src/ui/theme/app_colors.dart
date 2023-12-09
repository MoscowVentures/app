import 'package:flutter/material.dart';

import 'app_colors_constants.dart';

class AppColors {
  const AppColors._({
    required this.mainAccent,
    required this.minorAccent,
    required this.mainPrimary,
    required this.minorPrimary,
    required this.mainSecondary,
    required this.minorSecondary,
    required this.mainBackground,
    required this.minorBackground,
    required this.mainShadow,
    required this.minorShadow,
    required this.mainText,
    required this.minorText,
    required this.success,
    required this.error,
    required this.transparent,
  });

  factory AppColors.light() => const AppColors._(
        mainAccent: AppColorsConstants.blue,
        minorAccent: AppColorsConstants.blue,
        mainPrimary: AppColorsConstants.white,
        minorPrimary: AppColorsConstants.darkGray,
        mainSecondary: AppColorsConstants.blue,
        minorSecondary: AppColorsConstants.blue,
        mainBackground: AppColorsConstants.gray,
        minorBackground: AppColorsConstants.gray,
        mainShadow: AppColorsConstants.black,
        minorShadow: AppColorsConstants.black,
        mainText: AppColorsConstants.black,
        minorText: AppColorsConstants.gray,
        success: AppColorsConstants.green,
        error: AppColorsConstants.red,
        transparent: AppColorsConstants.transparent,
      );

  factory AppColors.dark() => AppColors.light();

  final Color mainAccent;
  final Color minorAccent;

  final Color mainPrimary;
  final Color minorPrimary;

  final Color mainSecondary;
  final Color minorSecondary;

  final Color mainBackground;
  final Color minorBackground;

  final Color mainShadow;
  final Color minorShadow;

  final Color mainText;
  final Color minorText;

  final Color success;
  final Color error;

  final Color transparent;
}

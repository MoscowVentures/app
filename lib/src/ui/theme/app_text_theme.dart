import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTextTheme {
  const AppTextTheme._({
    this.headline1,
    this.headline2,
    this.headline3,
    this.title1,
    this.title2,
    this.title3,
    this.body1,
    this.body2,
    this.label1,
    this.label2,
  });

  factory AppTextTheme.from({
    required AppColors colors,
    TextStyle baseStyle = const TextStyle(),
  }) =>
      AppTextTheme._(
        headline1: baseStyle.copyWith(
          fontSize: 96,
          color: colors.mainText,
        ),
        headline2: baseStyle.copyWith(
          fontSize: 60,
          color: colors.mainText,
        ),
        headline3: baseStyle.copyWith(
          fontSize: 48,
          color: colors.mainText,
        ),
        title1: baseStyle.copyWith(
          fontSize: 34,
          color: colors.mainText,
        ),
        title2: baseStyle.copyWith(
          fontSize: 24,
          color: colors.mainText,
        ),
        title3: baseStyle.copyWith(
          fontSize: 20,
          color: colors.mainText,
        ),
        body1: baseStyle.copyWith(
          fontSize: 16,
          color: colors.mainText,
        ),
        body2: baseStyle.copyWith(
          fontSize: 14,
          color: colors.minorText,
        ),
        label1: baseStyle.copyWith(
          fontSize: 12,
          color: colors.mainText,
        ),
        label2: baseStyle.copyWith(
          fontSize: 10,
          color: colors.minorText,
        ),
      );

  final TextStyle? headline1;
  final TextStyle? headline2;
  final TextStyle? headline3;

  final TextStyle? title1;
  final TextStyle? title2;
  final TextStyle? title3;

  final TextStyle? body1;
  final TextStyle? body2;

  final TextStyle? label1;
  final TextStyle? label2;

  TextTheme get theme => TextTheme(
        headlineLarge: headline1,
        headlineMedium: headline2,
        headlineSmall: headline3,
        titleLarge: title1,
        titleMedium: title2,
        titleSmall: title3,
        bodyLarge: body1,
        bodyMedium: body2,
        labelLarge: label1,
        labelMedium: label2,
      );
}

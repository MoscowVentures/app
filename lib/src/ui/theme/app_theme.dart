import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTheme {
  const AppTheme._(
    this.baseTheme,
    this.appColors,
  );

  factory AppTheme.light(AppColors appColors) =>
      AppTheme._(ThemeData.light(), appColors);

  factory AppTheme.dark(AppColors appColors) =>
      AppTheme._(ThemeData.dark(), appColors);

  final ThemeData baseTheme;
  final AppColors appColors;

  ThemeData get themeData => baseTheme.copyWith();
}

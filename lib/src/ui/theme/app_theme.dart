import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';
import 'app_text_theme.dart';

class AppTheme {
  const AppTheme._(
    this.appColors,
    this.baseTheme,
  );

  factory AppTheme.light(AppColors appColors) => AppTheme._(
        appColors,
        _customize(
          ThemeData.light(),
          appColors,
        ),
      );

  factory AppTheme.dark(AppColors appColors) => AppTheme._(
        appColors,
        _customize(
          ThemeData.dark(),
          appColors,
        ),
      );

  static ThemeData _customize(ThemeData theme, AppColors appColors) =>
      theme.copyWith(
        progressIndicatorTheme: ProgressIndicatorThemeData(
          color: appColors.mainAccent,
        ),
        bottomSheetTheme: BottomSheetThemeData(
          backgroundColor: appColors.mainPrimary,
        ),
        textTheme: AppTextTheme.from(
          colors: appColors,
          baseStyle: GoogleFonts.mulish(),
        ).themeData,
      );

  final ThemeData baseTheme;
  final AppColors appColors;

  ThemeData get themeData => baseTheme.copyWith();
}

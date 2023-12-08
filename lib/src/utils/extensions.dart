import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

extension AppStringsExtension on BuildContext {
  AppLocalizations get strings => AppLocalizations.of(this);
}

extension AppThemeExtension on BuildContext {
  ThemeData get theme => Theme.of(this);
}

extension AppTextThemeExtension on BuildContext {
  TextTheme get text => Theme.of(this).textTheme;
}

extension AppTextStyleExtension on TextStyle {
  TextStyle get bold => copyWith(fontWeight: FontWeight.bold);

  TextStyle get italic => copyWith(fontStyle: FontStyle.italic);
}

extension IsDarkThemeExtension on BuildContext {
  bool get isDarkMode =>
      MediaQuery.of(this).platformBrightness == Brightness.dark;
}

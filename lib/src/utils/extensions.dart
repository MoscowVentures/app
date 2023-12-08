import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../data/auth/confirm_args.dart';
import '../data/auth/error_args.dart';
import '../domain/navigation/app_routes_constants.dart';
import '../ui/theme/app_colors.dart';

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

extension AppColorsExtension on BuildContext {
  AppColors get colors => isDarkMode ? AppColors.dark() : AppColors.light();
}

extension NavigationExtension on BuildContext {
  void toErrorScreen(ErrorArgs args) => Navigator.of(this).pushNamed(
        AppRoutesConstants.error,
        arguments: args,
      );

  void toMainScreen() => Navigator.of(this).pushNamedAndRemoveUntil(
        AppRoutesConstants.main,
        (Route route) => false,
      );

  void toLoginScreen() => Navigator.of(this).pushNamed(
        AppRoutesConstants.login,
      );

  void toRegisterScreen() => Navigator.of(this).pushNamed(
        AppRoutesConstants.register,
      );

  void toConfirmScreen(ConfirmArgs args) => Navigator.of(this).pushNamed(
        AppRoutesConstants.confirm,
        arguments: args,
      );
}

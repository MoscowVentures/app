import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';

import 'src/di/providers.dart';
import 'src/domain/navigation/app_routes_constants.dart';
import 'src/ui/auth/confirm_screen.dart';
import 'src/ui/auth/login_screen.dart';
import 'src/ui/auth/register_screen.dart';
import 'src/ui/common/error_screen.dart';
import 'src/ui/theme/app_colors.dart';
import 'src/ui/theme/app_theme.dart';
import 'src/utils/extensions.dart';

void main() {
  Logger.level = kDebugMode ? Level.all : Level.warning;
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authController = ref.watch(authControllerProvider);

    return FutureBuilder(
      future: authController.isAuthentificated(),
      builder: (context, snapshot) {
        final isAuthentificated = snapshot.data;

        if (isAuthentificated == null) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        return MaterialApp(
          debugShowCheckedModeBanner: false,
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          theme: context.isDarkMode
              ? AppTheme.dark(AppColors.dark()).themeData
              : AppTheme.light(AppColors.light()).themeData,
          initialRoute: isAuthentificated
              ? AppRoutesConstants.main
              : AppRoutesConstants.register,
          routes: {
            AppRoutesConstants.main: (context) =>
                const Placeholder(color: Colors.blue),
            AppRoutesConstants.register: (context) => const RegisterScreen(),
            AppRoutesConstants.login: (context) => const LoginScreen(),
            AppRoutesConstants.error: (context) => const ErrorScreen(),
            AppRoutesConstants.confirm: (context) => const ConfirmScreen(),
          },
        );
      },
    );
  }
}

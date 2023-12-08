import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/auth/confirm_args.dart';
import '../../data/auth/error_args.dart';
import '../../data/auth/login_request_data.dart';
import '../../di/providers.dart';
import '../../domain/controllers/auth_controller.dart';
import '../../utils/extensions.dart';
import '../common/loading_screen.dart';
import '../common/widgets/circle_gradient_background.dart';
import 'widgets/login_screen_content.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  bool isLoading = false;

  Future<void> _login(AuthController controller, String phone, bool isRetry) =>
      controller.login(
        data: LoginRequestData(phone: phone),
        onLoading: () => setState(() => isLoading = true),
        onSuccess: (response) async {
          setState(() => isLoading = false);
          context.toConfirmScreen(
            ConfirmArgs(phone: phone),
          );
        },
        onError: () {
          setState(() => isLoading = false);
          if (isRetry) return;
          context.toErrorScreen(
            ErrorArgs(
              onRetry: () => _login(
                controller,
                phone,
                true,
              ),
            ),
          );
        },
      );

  @override
  Widget build(BuildContext context) {
    final authController = ref.watch(authControllerProvider);

    return Stack(
      children: [
        Scaffold(
          backgroundColor: context.colors.mainBackground,
          body: const CircleGradientBackground(),
          resizeToAvoidBottomInset: true,
          bottomSheet: SingleChildScrollView(
            child: BottomSheet(
              enableDrag: false,
              onClosing: () {},
              clipBehavior: Clip.hardEdge,
              constraints: BoxConstraints(
                maxHeight: MediaQuery.of(context).size.height * 2 / 3,
              ),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(20),
                ),
              ),
              builder: (context) => LoginScreenContent(
                onRegisterPressed: context.toRegisterScreen,
                onLoginPressed: (phone) => _login(
                  authController,
                  phone,
                  false,
                ),
              ),
            ),
          ),
        ),
        if (isLoading) const LoadingScreen(),
      ],
    );
  }
}
